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
use function PHPUnit\Framework\isEmpty;
use function PHPUnit\Framework\isNull;
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

        return inertia('Invoice/Index',[
            'invoices' => Invoice::query()
                ->with(['client', 'user', 'quotation', 'transactions'])
                ->latest()
                ->when(Request::input('search'), function ($query, $search) {
                    $query->whereHas('client', function ($client) use($search){
                            $client
                                ->where('name',    'like', "%{$search}%")
                                ->orWhere('phone', 'like', "%{$search}%")
                                ->orWhere('email', 'like', "%{$search}%");
                        })
                        ->orWhereHas('user', function ($user) use($search){
                            $user
                                ->where('name',    'like', "%{$search}%")
                                ->orWhere('phone', 'like', "%{$search}%")
                                ->orWhere('email', 'like', "%{$search}%");
                        })
                        ->orWhereHas('quotation', function ($user) use($search){
                            $user->where('subject', 'like', "%{$search}%");
                        })
                    ;
                })
                ->paginate(Request::input('perPage') ?? 10)
                ->withQueryString()
                ->through(fn($invoice) => [
                    'id' => $invoice->id,
                    'invoice_id' => $invoice->invoice_id,
                    'client' => $invoice->client ?? $invoice->quotation?->client,
                    'user' => $invoice->user,
                    'total_amount' => $invoice->total_price,
                    'discount' => $invoice->discount,
                    'grand_total' => $invoice->grand_total,
                    'pay' => $invoice->pay,
                    'due' => $invoice->due,
                    'invoice_type' => $invoice->invoice_type,
                    'created_at' => $invoice->created_at->format('d M Y'),
                    'edit_url' => URL::route('invoices.edit', $invoice->id),
                    'show_url' => URL::route('invoices.show', $invoice->id),
                    'invoice_url' => URL::route('invoices.downloadInvoice', $invoice->id),
                ]),
            'filters' => Request::only(['search','perPage']),
            'main_url' => URL::route('invoices.index'),
        ]);

    }

    public function create()
    {
        return Inertia::render('Invoice/Create', [
            "quotations" => Quotation::all(),
            "clients"   => Client::all(),
            "paymentMethods" => Method::all(),
            "store_url" => URL::route('invoices.store')
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
            'clientId' => 'required',
            'date' => 'required',
        ],[
            'clientId.required' => 'First Select An Client...',
            'qutDate.required' => 'Please Select Quotation Date...',
        ]);

        Invoice::create([
            'invoice_id' => now()->format('Ymd'),
            'client_id' => Request::input('clientId'),
            'user_id' => Auth::id(),
            'invoice_type' => 'custom',
            'items' => json_encode(Request::input('items')),
            'total_price' => Request::input('totalPrice'),
            'discount' => Request::input('discount') ?? 0,
            'grand_total' => Request::input('totalPrice'),
            'due' => Request::input('totalPrice'),
            'note' => Request::input('note')
        ]);

        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Invoice  $invoice
     * @return \Inertia\Response
     */

    public function invoiceItemsGenerate($invoice){
        $pref = [];
        if (!is_null($invoice) && !is_null($invoice->quotation_id)){
            foreach (json_decode($invoice->quotation?->items) as $item){
                if ($item->checkPackages){
                    foreach ($item->checkPackages as $package){
                        $pref[] =[
                            'name'=> $package->descriptions,
                            'qty' => $package->qty,
                            'price' => $package->price,
                        ];
                    }
                }
                if ($item->checkFeatrueds){
                    foreach ($item->checkFeatrueds as $feared){
                        $pref[] =[
                            'name'=> $feared->name,
                            'qty' => $feared->qty,
                            'price' => $feared->price,
                        ];
                    }
                }
            }
        }else{
            if (json_decode($invoice?->items)){
                foreach(json_decode($invoice->items) as $item){
                    $pref[] =[
                        'name'=> $item->description,
                        'qty' => 1,
                        'price' => $item->price,
                    ];
                }
            }
        }

        return $pref;
    }

    public function show(Invoice $invoice)
    {
        $invoice = $invoice->load('user', 'client', 'quotation', 'transactions', 'transactions.receivedBy:id,name', 'transactions.method:id,name');
        $pref = $this->invoiceItemsGenerate($invoice);


        return Inertia::render('Invoice/Show',   [
            "invoice" =>$invoice,
            "pref" => $pref,
            "paymentMethods" => Method::all(),
            $downloadInvoiceUrl =
            "url" =>[
                "edit_url" => URL::route('invoices.edit', $invoice->id),
                "add_discount" => URL::route('invoices.addDiscount', $invoice->id),
                "invoice_url" => URL::route('invoices.downloadInvoice', $invoice->id),
                "payment_url" => URL::route('transaction.store')
            ]
        ]);
    }

    public function addDiscount($id){
        $invoice = Invoice::findOrFail($id);
        $invoice->discount = $invoice->discount + (int)Request::input('discount');
        $invoice->grand_total = $invoice->total_price - $invoice->discount;
        $invoice->due = $invoice->due - (int)Request::input('discount');
        $invoice->save();
        return back();
    }


    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Invoice  $invoice
     * @return \Illuminate\Http\RedirectResponse
     */


    public function createInvoice($id)
    {

        if (Request::input("pay") != null){
            Request::validate([
                'payment_method' => 'required'
            ]);
        }

        $quotation = Quotation::findOrFail(Request::input('quotationId'));
        $discount = $quotation->discount + Request::input('discount') ?? 0;

        $grandTotal = $quotation->total_price - $discount;

        $due = $grandTotal - (int)Request::input('pay');

        Invoice::create([
            'invoice_id' => now()->format('Ymd'),
            'quotation_id' => $quotation->id,
            'client_id' => Request::input('clientId'),
            'user_id' => Auth::id(),
            'invoice_type' => 'quotation',
            'total_price' => $quotation->total_price,
            'discount' => $discount,
            'grand_total' => $grandTotal,
            'pay' => Request::input('pay'),
            'due' => $due,
            'note' => Request::input('note')
        ]);

        return back();
    }

    public function downloadInvoice($id){
        $invoice = Invoice::with(['user', 'quotation', 'client'])->findOrFail($id);
        $pref = [];

        if (!is_null($invoice) && !is_null($invoice->quotation_id)){
            foreach (json_decode($invoice->quotation?->items) as $item){
                if ($item->checkPackages){
                    foreach ($item->checkPackages as $package){
                        $pref[] =[
                            'name'=> $package->descriptions,
                            'qty' => $package->qty,
                            'price' => $package->price,
                        ];
                    }
                }
                if ($item->checkFeatrueds){
                    foreach ($item->checkFeatrueds as $feared){
                        $pref[] =[
                            'name'=> $feared->name,
                            'qty' => $feared->qty,
                            'price' => $feared->price,
                        ];
                    }
                }
            }
        }else{
            foreach(json_decode($invoice->items) as $item){
                $pref[] =[
                    'name'=> $item->description,
                    'qty' => 1,
                    'price' => $item->price,
                ];
            }
        }

        $clientName = $invoice->quotation?->client?->name ?? $invoice->client?->name;
        $isPrint = false;


        $pdf = Pdf::loadView('invoice.quotationInvoice', compact('invoice','pref', 'isPrint'));
        return $pdf->download($clientName."_".now()->format('d_m_Y')."_".'quotation.pdf');
    }

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
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        $invoice = Invoice::findOrFail($id);
        $invoice->delete();
        return back();
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
