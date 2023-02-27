<?php

namespace App\Http\Controllers;

use App\Models\Client;
use App\Models\CustomInvoice;
use App\Models\Invoice;
use App\Models\InvoiceItem;
use App\Models\Method;
use App\Models\Quotation;
use App\Models\QuotationItem;
use App\Models\Transaction;
use App\Models\User;
use Barryvdh\DomPDF\Facade\Pdf;
use FontLib\Table\Type\kern;
use Illuminate\Routing\Route;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;
use Inertia\Inertia;
use function Symfony\Component\Mime\toString;

class InvoiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function index()
    {
        return inertia('Modules/Invoices/Index', [
            'invoices' => CustomInvoice::query()
                ->when(Request::input('search'), function ($query, $search) {
                    $query->where('subject', 'like', "%{$search}%")
                        ->orWhereHas('client', function ($client) use($search){
                            $client->where('name', 'like', "%{$search}%");
                        })
                        ->orWhereHas('user', function ($user) use($search){
                            $user->where('name', 'like', "%{$search}%");
                        })
                        ->orWhereHas('invoiceItems', function ($invoiceItem) use($search){
                            $invoiceItem->where('item_name', 'like', "%{$search}%");
                        })
                    ;
                })
                ->paginate(Request::input('perPage') ?? 10)
                ->withQueryString()
                ->through(fn($invoice) => [
                    'id' => $invoice->id,
                    'invoice' => $invoice,
                    'name' =>  $invoice->client ? $invoice->client->name : 'unknown',
                    'creator' => $invoice->user ? $invoice->user->name : 'unknown',
                    'created_at' => $invoice->created_at->format('d M Y'),
                    'invice_url' => URL::route('invoices.show', $invoice->id),
                    'edit_url' => URL::route('invoices.edit', $invoice->id),
                    'delete_url' => URL::route('invoices.delete', $invoice->id)
                ]),
            'filters' => Request::only(['search','perPage']),
            'main_url' => URL::route('invoices.index'),
        ]);
    }

    public function create()
    {
        return Inertia::render('Modules/Invoices/Create', [
            "clients"   => Client::all(['id','name']),
        ]);
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {

        Request::validate([
           'client_id' => 'required|integer',
           'subject' => 'required',
           'date' => 'required',
           'trams_and_condition' => 'required',
           'payment_policy' => 'required'
        ]);



        $invoice = CustomInvoice::create([
            'u_id' => date('Yd', strtotime(now())),
            'user_id'       => Auth::id(),
            'client_id'        => Request::input('client_id'),
            'subject'          => Request::input('subject'),
            'date'               => Request::input('date'),
            'status'           => filled(Request::input('status')),
            'trams_and_condition' => Request::input('trams_and_condition'),
            'privicy_and_policy'  => Request::input('payment_policy'),
        ]);


        $totalPrice = 0;
        $totalDiscount = 0;
        foreach (Request::input('quatations') as $item){
            $totalPrice += $item['price'];
            $totalDiscount += $item['discount'];
            InvoiceItem::create([
                'invoice_id' => $invoice->id,
                'item_name'  => $item['item_name'],
                'price'      => $item['price'] ?? 0,
                'discount'   => $item['discount'] ?? 0,
            ]);
        }

        $total = $totalPrice - $totalDiscount;

        $invoice->total_price =  $totalPrice ?? 0;
        $invoice->discount = $totalDiscount ?? 0;
        $invoice->grand_total = $total;
        $invoice->due =  $total;
        $invoice->save();

        return redirect()->route('invoices.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Invoice  $invoice
     * @return \Inertia\Response
     */
    public function show(CustomInvoice $invoice)
    {
        $transactions = [];
        foreach($invoice->transactions as $item){
            $transactions[] = [
                "amount"     => $item->amount ?? 0,
                "user"       => $item->user,
                "method"     => $item->method->name,

                "pay_amount" => $item->pay_amount ?? 0,
                "discount"   => $item->discount ?? 0,
                "total_due"  => $item->total_due ?? 0,
                "old_total_pay" => $item->old_total_pay ?? 0,
                "date"       => $item->date->format('d M,y'),
                "note"       => $item->note,
            ];
        }

         $totalPay = $invoice->transactions->sum('pay_amount') + $invoice->transactions->sum('discount');

        $invoiceLastTransaction = $invoice->transactions->last() ?? [
            'pay_amount' => 0,
            'discount' => 0
            ];


        return Inertia::render('Modules/Invoices/Show', [

            "info" => [
                "invoice"         => $invoice,
                "client"          => $invoice->client,
                "invoice_item"    => $invoice->invoiceItems,
                'transactions'    => $transactions,
                "total_pay"       => $totalPay,
                "last_payment"    => $invoiceLastTransaction,
                'invoice_id'      => $invoice->created_at->format('Ymd').$invoice->id,
                'creator'         => $invoice->user,
                'payment_methods' => Method::all(),
                "created"         => $invoice->created_at->format('D, d F, Y'),
                'download_url'    => URL::route('invoices.generateInvoicePDFFile', $invoice->id),
                'payment_url'     => URL::route('saveInvoiceTransaction'),
            ]
        ]);

    }


    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Invoice  $invoice
     * @return \Illuminate\Http\Response
     */
    public function generateInvoicePDFFile($id){
        $invoice = CustomInvoice::findOrFail($id);

        $transactions = [];
        foreach($invoice->transactions as $item){
            $transactions[] = [
                "amount"     => $item->amount ?? 0,
                "user"       => $item->user,
                "method"     => $item->method->name,

                "pay_amount" => $item->pay_amount ?? 0,
                "discount"   => $item->discount ?? 0,
                "total_due"  => $item->total_due ?? 0,
                "old_total_pay" => $item->old_total_pay ?? 0,
                "date"       => $item->date->format('d M,y'),
                "note"       => $item->note,
            ];
        }

        $totalPay = $invoice->transactions->sum('pay_amount') + $invoice->transactions->sum('discount');

        $invoiceLastTransaction = $invoice->transactions->last() ?? [
                'pay_amount' => 0,
                'discount' => 0
            ];

        $data = [
            "invoice"       => $invoice,
            "client"        => $invoice->client,
            "invoice_item"  => $invoice->invoiceItems,
            'transactions'    => $transactions,
            "total_pay"       => $totalPay,
            "last_payment"    => $invoiceLastTransaction,
            'invoice_id' =>$invoice->created_at->format('Ymd').$invoice->id,
            'creator' => $invoice->user,
            "created" => $invoice->created_at->format('D, d F, Y'),
            'download_url' => URL::route('invoices.generateInvoicePDFFile', $invoice->id),
        ];


//        return view('invoice.invoice', compact("data"));

        $pdf = Pdf::loadView('invoice.invoice', compact("data"));
        return $pdf->download('invoice.pdf');
    }


    public function edit($id){

        $invoice = CustomInvoice::findOrFail($id);

        return Inertia::render('Modules/Invoices/Edit', [
            "clients"   => Client::all(['id','name']),
            "info" => [
                "invoice"       => $invoice,
                "invoice_item"  => $invoice->invoiceItems,
                "update_url"    => URL::route('updateInvoices', $invoice->id),
            ]
        ]);
    }


    public function updateInvoice(Request $request, $id){

        $invoice = CustomInvoice::findOrFail($id);


        Request::validate([
            'client_id' => 'required|integer',
            'subject' => 'required',
            'date' => 'required',
            'trams_and_condition' => 'required',
            'payment_policy' => 'required'
        ]);


        $invoice->update([
            'user_id'       => Auth::id(),
            'client_id'        => Request::input('client_id'),
            'subject'          => Request::input('subject'),
            'date'             => Request::input('date'),
            'status'           => filled(Request::input('status')),
            'trams_and_condition' => Request::input('trams_and_condition'),
            'privicy_and_policy'  => Request::input('payment_policy'),
        ]);

        $invoices=Request::input('quatations') ;

        $totalPrice = 0;
        $totalDiscount = 0;
        $invoicesOption = [];
        foreach ($invoices as $key => $option) {
            $totalPrice += $option['price'];
            $totalDiscount += $option['discount'];
            $invoicesOption[] = [
                'id'             => $option["id"] ?? null,
                'quotation_id'   => $invoice->id,
                'item_name'       => $option['item_name'],
                'discount'       => $option['discount'] ?? 0,
                'price'          => $option['price']    ?? 0,
                'quantity'       => $option['quantity'] ?? 1
            ];
        }


        $total = $totalPrice - $totalDiscount;
        $invoice->total_price =  $totalPrice ?? 0;
        $invoice->discount = $totalDiscount ?? 0;
        $invoice->grand_total = $total;
        $invoice->due =  $total;
        $invoice->save();

        $array = $invoice->invoiceItems->toArray();
        $deletedItems=[];
        $deletedItems = array_map(function($item)use($invoicesOption){
            return in_array($item['id'], array_column($invoicesOption, 'id')) ? null : $item["id"];
        }, $array);
        foreach ($deletedItems as $deletedItem){
            if ($deletedItem){
                $invoice->invoiceItems()->find($deletedItem)->delete();
            }
        }


        $relatedModels = $invoice->invoiceItems;
        foreach ($invoicesOption as $item) {
            $updateData = $relatedModels->find($item['id']);
            if($updateData){
                $updateData->update($item);
            }else{
                if ($item['id'] == null){
                    $invoice->invoiceItems()->create($item);
                }
            }
        }


        return Redirect::route('invoices.index');
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Invoice  $invoice
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Invoice $invoice)
    {
        dd($request);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Invoice  $invoice
     * @return Invoice
     */
    public function destroy($id)
    {
        $invoice = CustomInvoice::findOrFail($id);
        $invoice->delete();
    }


    public function addPayment(){

        $invoice = CustomInvoice::with(['client'])->findOrFail(Request::input('invoice_id'));

        $totalPay = Request::input('pay_amount')+Request::input('discount');

        Transaction::create([
            'u_id'       => date('Yd', strtotime(now())),
            'transaction_model' => 'App\\Models\\CustomInvoice',
            'transaction_model_id' => $invoice->id,
            'method_id'  => Request::input('payment_id'),
            'user_id'    => Auth::id(),
            'client_id'  => $invoice->client->id,
            'invoice_id' => $invoice->id,

            'amount'     => $invoice->grand_total,
            'pay_amount' => Request::input('pay_amount'),
            'discount'   => Request::input('discount'),

            'total_pay'  => $totalPay,
            'total_due'  => $invoice->due - $totalPay,

            'date'       => now(),
            'note'       => Request::input('payment_note'),

            'type'       => 'in'
        ]);

        $tk = $invoice->due - $totalPay;
        $invoice->update([
            'pay' =>  $invoice->pay + $totalPay,
            'due' => $tk
        ]);


        return back();
    }



}
