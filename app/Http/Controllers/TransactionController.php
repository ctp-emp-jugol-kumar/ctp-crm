<?php

namespace App\Http\Controllers;

use App\Models\CustomInvoice;
use App\Models\Invoice;
use App\Models\Quotation;
use App\Models\Transaction;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request;

class TransactionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {

        $invoice = CustomInvoice::with('client')->findOrFail(Request::input('invoice_id'));

        $grandTotal = Request::input('grandTotal') ?? 0;
        $discount   = Request::input('discount') ?? 0;
        $payAmount  = Request::input('pay_amount') ?? 0;
        $oldTotalPay = CustomInvoice::findOrFail(Request::input('invoice_id'))->transactions->sum('total_pay') + $payAmount + $discount;


        return ["pay_amount" => $payAmount, "discount" => $discount, "grand total" => $grandTotal, "old pay" => $oldTotalPay];

        Transaction::create([
            'method_id'  => Request::input('payment_id'),
            'user_id'    => Auth::id(),
            'client_id'  => $invoice->client->id,
            'invoice_id' => $invoice->id ?? Request::input('invoice_id'),

            'amount'     => $grandTotal,
            'total_pay'  => $payAmount + $discount,
            'old_total_pay' => $oldTotalPay,
            'pay_amount' => $payAmount,
            'discount'   => $discount,
            'total_due'  => ($grandTotal - ($payAmount + $discount)) ?? 0,


            'date'       => now(),
            'note'       => Request::input('payment_note')
        ]);

        return back();
    }


    public function saveQuotationTransaction(Request $request){
        $quotation = Quotation::with('client')->findOrFail(Request::input('quotation_id'));

//        return $quotation;
//        exit();

        $grandTotal = Request::input('grandTotal') ?? 0;
        $discount   = Request::input('discount') ?? 0;
        $payAmount  = Request::input('pay_amount') ?? 0;

//        return ["pay_amount" => $payAmount, "discount" => $discount, "grand total" => $grandTotal, "quotation" => $quotation, "transactions" => $quotation->transactions];



        Transaction::create([
            'method_id'  => Request::input('method_id'),
            'user_id'    => Auth::id(),
            'client_id'  => $quotation->client->id,
            'quotation_id' => $quotation->id ?? Request::input('quotation_id'),

            'amount'     => $grandTotal,
            'total_pay'  => $payAmount + $discount,
            'old_total_pay' => Quotation::findOrFail(Request::input('quotation_id'))->transactions->sum('total_pay') + $payAmount + $discount,
            'pay_amount' => $payAmount,
            'discount'   => $discount,
            'total_due'  => ($grandTotal - $payAmount - $discount) ?? 0,


            'date'       => now(),
            'note'       => Request::input('payment_note')
        ]);
        return back();
    }


    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Transaction  $transaction
     * @return \Illuminate\Http\Response
     */
    public function show(Transaction $transaction)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Transaction  $transaction
     * @return \Illuminate\Http\Response
     */
    public function edit(Transaction $transaction)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Transaction  $transaction
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Transaction $transaction)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Transaction  $transaction
     * @return \Illuminate\Http\Response
     */
    public function destroy(Transaction $transaction)
    {
        //
    }
}
