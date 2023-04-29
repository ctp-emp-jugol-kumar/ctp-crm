<?php

namespace App\Http\Controllers;

use App\Models\CustomInvoice;
use App\Models\Invoice;
use App\Models\Quotation;
use App\Models\Transaction;
use App\Models\TransactionLine;
use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;
use Dotenv\Repository\Adapter\ReaderInterface;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;

class TransactionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function index()
    {

        $transactions = Transaction::query()
            ->latest()
            ->with(['receivedBy', 'paymentBy', 'method'])
            ->when(Request::input('search'), function ($query, $search) {
                $query->where('subject', 'like', "%{$search}%");
            })
            ->when(Request::input('byStatus'), function ($query, $search){
                $query->where('type', $search);
            })
            ->when(Request::input('dateRange'), function ($query, $search){

                $start_date = date('Y-m-d H:i:s', strtotime($search[0]));
                $end_date = date('Y-m-d H:i:s', strtotime( $search[1]));
                $query->whereBetween('created_at', [$start_date, $end_date]);
            })
            ->latest()
            ->paginate(Request::input('perPage') ?? 10)
            ->withQueryString()
            ->through(fn($tra) => [
                'tran' => $tra,
                'model' => $tra->transaction_model && $tra->transaction_model_id ? $tra->transaction_model::find($tra->transaction_model_id) : null,
                'created_at' => $tra->created_at->format('d M Y'),
                'show_url' => URL::route('expense.show', $tra->id),
            ]);

        if (Request::input('export_pdf') === 'true'){
            return $this->loadDownload($transactions);
        }


        $credited = Transaction::where('transaction_type', 'Credited')->sum('pay');
        $debided = Transaction::where('transaction_type', 'Credited')->sum('pay');

        return inertia('Transaction/Index', [
            'transactions' => $transactions,
            'filters'     => Request::only(['search','perPage', 'byStatus', 'dateRange']),
            "main_url" => Url::route('transaction.index'),
            "credited" => $credited,
            "debited" => $debided
        ]);
    }

    protected function loadDownload($data){
        Pdf::setOption(['enable_php', true]);
//        return view('reports.pdf_transaction_list', compact('data'));
        $pdf = Pdf::loadView('reports.pdf_transaction_list', compact('data'));
        return $pdf->download("transaction"."_".now()->format('d_m_Y')."_".'quotation.pdf');
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

        Transaction::create([
            'transaction_id' =>  now()->format('Ymd'),
            'transactionable_id' => Request::input('invoiceId'),
            'transactionable_type' => "App\\Models\\Invoice",
            'received_by' => Auth::id(),
            'payment_by' => Request::input('clientId'),
            "transaction_type" => "Credited",
            "amount" => Request::input("totalPrice"),
            "pay" => Request::input("pay"),
            "due" => (int)Request::input("totalPrice") - (int)Request::input("pay"),
            "payment_date" => Request::input('date'),
            "method_id" => Request::input('payment_method')
        ]);

        $invoice = Invoice::findOrFail(Request::input('invoiceId'));
        $invoice->pay = $invoice->pay + (int)Request::input("pay");
        $invoice->due = (int)Request::input("totalPrice") - (int)Request::input("pay");
        $invoice->update();

        return back();
    }


    public function saveQuotationTransaction(Request $request){
        $quotation = Quotation::with('client')->findOrFail(Request::input('quotation_id'));
        $grandTotal = Request::input('grandTotal') ?? 0;
        $discount   = Request::input('discount') ?? 0;
        $payAmount  = Request::input('pay_amount') ?? 0;

//        return ["pay_amount" => $payAmount, "discount" => $discount, "grand total" => $grandTotal, "quotation" => $quotation, "transactions" => $quotation->transactions];


        TransactionLine::create([
            'u_id' => 'Transaction_'.rand(73862, 5632625),
            'user_id' => Auth::id(),
            'type' => 'in',
            'subject_model' => "App\\Models\\Quotation",
            'subject_id' => $quotation->id,
            'note' => Request::input('payment_note'),
            'amount' => $payAmount + $discount,
            'discount' => $discount,
            'method_id' =>Request::input('method_id'),
            'date' => now()
        ]);

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
