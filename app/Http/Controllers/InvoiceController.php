<?php

namespace App\Http\Controllers;

use App\Models\Client;
use App\Models\CustomInvoice;
use App\Models\Invoice;
use App\Models\InvoiceItem;
use App\Models\Quotation;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
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
            'users' => CustomInvoice::query()
                ->when(\Illuminate\Support\Facades\Request::input('search'), function ($query, $search) {
                    $query->where('id', 'like', "%{$search}%");
                })
                ->paginate(Request::input('perPage') ?? 10)
                ->withQueryString()
                ->through(fn($invoice) => [
                    'id' => $invoice->client->name,
                    'created_at' => $invoice->created_at->format('d M Y'),
                    'invice_url' => URL::route('invoices.show', $invoice->id),

                ]),
            'filters' => Request::only(['search','perPage'])
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
//        Request::validate([
//            'client_id' => "required",
//            'date' => "required",
//        ]);

        $quotation = CustomInvoice::create([
            'creator_id'       => Auth::id(),
            'client_id'        => Request::input('client_id'),
            'subject'          => Request::input('subject'),
//            'date'             => Request::input('date')->format('d-y-m'),
            'status'           => filled(Request::input('status')),
            'trams_and_condition' => Request::input('trams_and_condition'),
            'privicy_and_policy'  => Request::input('payment_policy'),
        ]);

//        $quotation->invoiceItems->createMany(Request::input('quatations'));
//        dd(Request::input('quatations'));

        foreach (Request::input('quatations') as $item){
//            dd($item['itemname']);
            InvoiceItem::create([
                'invoice_id' => $quotation->id,
                'item_name'  => $item['itemname'],
                'price'      => $item['price'],
                'discount'   => $item['discount'],
            ]);
        }

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
        return Inertia::render('Modules/Invoices/Show', [
            "info" => [
                "invoice"       => $invoice,
                "client"        => $invoice->client,
                "invoice_item"  => InvoiceItem::find($invoice->id)->get(),


                'invoice_id' =>$invoice->created_at->format('Ymd').$invoice->id,
                'creator' => $invoice->user,
                "created" => $invoice->created_at->format('D, d F, Y'),
            ]
        ]);

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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Invoice  $invoice
     * @return \Illuminate\Http\Response
     */
    public function destroy(Invoice $invoice)
    {
        //
    }
}
