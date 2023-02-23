<?php

namespace App\Http\Controllers;

use App\Models\Client;
use App\Models\CustomInvoice;
use App\Models\Design;
use App\Models\Domain;
use App\Models\Expanse;
use App\Models\Hosting;
use App\Models\Platform;
use App\Models\Project;
use App\Models\Quotation;
use App\Models\TransactionLine;
use App\Models\User;
use App\Models\Website;
use App\Models\Work;
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

        $invoiceTotalSeals = CustomInvoice::sum('total_price');
        $invoiceTotalDiscount = CustomInvoice::sum('discount');

        $quotationTotalSeals = Quotation::sum('price');
        $quotationTotalDiscount = Quotation::sum('discount');


        $totalSeals = $invoiceTotalSeals + $quotationTotalSeals;
        $totalDiscount = $invoiceTotalDiscount + $quotationTotalDiscount;


        $todayIn = TransactionLine::whereDate('created_at', date('Y-m-d'))->where('type', 'in')->sum('amount');
        $todayExp = TransactionLine::whereDate('created_at', date('Y-m-d'))->where('type', 'out')->sum('amount');


        $invoiceTotalSeals = CustomInvoice::sum('total_price');
        $invoiceTotalDiscount = CustomInvoice::sum('discount');

        $todayQseals = Quotation::whereDate('created_at', date('Y-m-d'))->sum('price');
        $todayQdiscount = Quotation::whereDate('created_at', date('Y-m-d'))->sum('discount');

        $todayIseals = CustomInvoice::whereDate('created_at', date('Y-m-d'))->sum('total_price');
        $todayIdiscount = CustomInvoice::whereDate('created_at', date('Y-m-d'))->sum('discount');

        $todaySeals = $todayQseals + $todayIseals;
        $todayDiscount = $todayQdiscount + $todayIdiscount;


        Quotation::with(
            [
                'transactions' => function($query){
                    $query->groupBy('partUserName');
                }
            ])->get();





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
                'totalSeals' => $totalSeals,
                'totalDiscount' => $totalDiscount,
                'totalExpanse' =>Expanse::sum('amount'),
                'todayIn' => $todayIn,
                'todayExp' => $todayExp,

                'todaySeals' => $todaySeals,
                'todayDiscount' => $todayDiscount
            ]
        ]);
    }
}
