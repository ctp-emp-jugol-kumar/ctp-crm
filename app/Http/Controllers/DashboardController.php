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

        $quotation = Quotation::with('transactions')->get();

        return $quotation;


//        $marketPlaces = ModelAccountMarketplace::withCount([
//            'orders as somaFreteGratis' => function ($query) use ($dates) {
//                $query->select(DB::raw('sum(valor_frete)')
//                    ->where('tipo_frete', 'gratis')
//                    ->whereBetween('datetime', [$dates['dateStart'], $dates['dateEnd']]);
//            }
//        ])
//            ->get();

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
                'totalExpanse' =>Expanse::sum('amount')
            ]
        ]);
    }
}
