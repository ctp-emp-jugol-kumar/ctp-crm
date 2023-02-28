<?php

namespace App\Http\Controllers;

use App\Models\Client;
use App\Models\CustomInvoice;
use App\Models\Design;
use App\Models\Domain;
use App\Models\Expanse;
use App\Models\Hosting;
use App\Models\Invoice;
use App\Models\Platform;
use App\Models\Project;
use App\Models\Quotation;
use App\Models\Transaction;
use App\Models\TransactionLine;
use App\Models\User;
use App\Models\Website;
use App\Models\Work;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Inertia\Inertia;
use Spatie\Permission\Models\Role;

class DashboardController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Inertia\Response
     */
    public function __invoke(Request $request)
    {
        if (!auth()->user()->can('dashboard.show')){
            abort(401);
        }

        // custom invoice total incomes
        $invoiceTotalSeals = CustomInvoice::sum('total_price');
        $invoiceTotalDiscount = CustomInvoice::sum('discount');
        $cinvoiceGrandTotal = $invoiceTotalSeals - $invoiceTotalDiscount;

        $cinvoiceTotalPay = CustomInvoice::sum('pay');
        $cinvoiceTotalDue = CustomInvoice::sum('due');

        // quotation to invoice total incomes
        $invoiceSubTotal = Invoice::sum('sub_total');
        $invoiceGrandTotal = Invoice::sum('grand_total');
        $invoiceDiscount = Invoice::sum('discount');

        $invoiceTotalPay = Invoice::sum('pay');
        $invoiceTotalDue = Invoice::sum('due');


        // total expanse
        $totalExpanse = Expanse::sum('amount');


        // calculation
        $totalSeals = $invoiceTotalSeals + $invoiceSubTotal;
        $totalDiscount = $invoiceTotalDiscount + $invoiceDiscount;

        $totalGrand = $invoiceGrandTotal + $cinvoiceGrandTotal;
        $totalProfit = $totalGrand - $totalExpanse;

        $grandTotalPay = $cinvoiceTotalPay + $invoiceTotalPay;
        $grandTotalDue = $cinvoiceTotalDue + $invoiceTotalDue;


//        return $totalSeals. " ".$totalDiscount;

        $invoiceTotalPay = Invoice::sum('pay');
        $invoiceTotalDue = Invoice::sum('due');


        $todayIn = Transaction::whereDate('created_at', Carbon::now()->format('Y-m-d'))->where('type', 'in')->sum('total_pay');
        $todayExp = Transaction::whereDate('created_at',  Carbon::now()->format('Y-m-d'))->where('type', 'out')->sum('total_pay');

        $invoiceTotalSeals = CustomInvoice::sum('total_price');
        $invoiceTotalDiscount = CustomInvoice::sum('discount');

        $todayQseals = Quotation::whereDate('created_at', date('Y-m-d'))->sum('price');
        $todayQdiscount = Quotation::whereDate('created_at', date('Y-m-d'))->sum('discount');

        $todayIseals = CustomInvoice::whereDate('created_at', date('Y-m-d'))->sum('total_price');
        $todayIdiscount = CustomInvoice::whereDate('created_at', date('Y-m-d'))->sum('discount');

        $todaySeals = $todayQseals + $todayIseals;
        $todayDiscount = $todayQdiscount + $todayIdiscount;


//        $quot = Quotation::withSum('transactions', 'amount')->get();

//        return $quot;




//        $quotation = Quotation::with('transactions')->get();



        return Inertia::render('Test', [
            "data" => [
                'clients' => Client::count(),
                'packages' => Design::count(),
                'domain' => Domain::count(),
                'hosting' => Hosting::count(),
                'cInvoice' => CustomInvoice::count(),
                'platforms' => Platform::count(),
                'projects' => Project::count(),
                'quotation' => Quotation::count(),
                'users' => User::count(),
                'website' => Website::count(),
                'work' => Work::count(),


                // transaction list
                'totalSeals' => $totalSeals,
                'totalDiscount' => $totalDiscount,
                'totalGrand' => $totalGrand,
                'totalExpanse' => $totalExpanse,
                'totalProfit' => $totalProfit,

                'totalPay' => $grandTotalPay,
                'totalDue' => $grandTotalDue,




                'todayIn' => $todayIn,
                'todayExp' => $todayExp,

                'todaySeals' => $todaySeals,
                'todayDiscount' => $todayDiscount
            ]
        ]);
    }
}
