<?php

namespace App\Http\Controllers;

use App\Http\Requests\ServicesRequest;
use App\Models\Client;
use App\Models\Design;
use App\Models\Domain;
use App\Models\Hosting;
use App\Models\Method;
use App\Models\Platform;
use App\Models\Quotation;
use App\Models\QuotationItem;
use App\Models\Website;
use App\Models\Work;

use Barryvdh\DomPDF\Facade\Pdf;
use http\Env\Response;
use Illuminate\Routing\Route;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;
use Inertia\Inertia;
use function GuzzleHttp\Promise\all;
use function PHPUnit\Framework\isEmpty;

class QuotationController extends Controller
{


    /**
     * Display a listing of the resource.
     *
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function index()
    {
        $quotation  = Quotation::query()
            ->with([
                "client:id,name", "user:id,name"])
            ->when(Request::input('search'), function ($query, $search) {
                $query->where('email', 'like', "%{$search}%");
            })
            ->paginate(Request::input('perPage') ?? 10)
            ->withQueryString()
            ->through(fn($qot) => [
                "id"           => $qot->id,
                "subject"      => $qot->subject,
                "status"       => $qot->status,
                "date"         => $qot->date->format('M-d-Y'),
                "client_name"  => $qot->client->name ?? null,
                "user_name"    => $qot->user ? $qot->user->name : "unknown",
                "show_url"     => URL::route('quotations.show', $qot->id),
                "edit_url"     => URL::route('quotations.edit', $qot->id)
            ]);

        return inertia('Modules/Quotation/Index', [
            'quotations'  => $quotation,
            'filters'     => Request::only(['search','perPage']),
            'url'         => URL::route('quotations.index'),
        ]);



    }




    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Inertia\Response
     */
    public function create(){
        return Inertia::render('Modules/Quotation/Create', [
            "clients"   => Client::all(['id','name']),
            "services"  => Website::all(['id','name', 'price']),
            "packages"  => Design::all(['id','name', 'price']),
            "platforms" => Platform::all(['id','name', 'price']),
            "domains"   => Domain::all(['id','name', 'price']),
            "hostings"  => Hosting::all(['id','name', 'price']),
            "works"     => Work::all(['id','name', 'price']),
            "methods"   => Method::all(['id', 'name']),
        ]);
    }


    public function createArrayGroups($items): array
    {
        $added = array();
        foreach($items as $item){
            if (isset($item['p'])){
                $id = $item['id'];
                $added[$id] = [
                    'price'    => $item['price']    ?? 0,
                    'quantity' => $item["quantity"] ?? 0,
                    'discount' => $item["discount"] ?? 0,
                ];
            }
        }
        return $added;
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {

        Request::validate([
            'client_id'          => "required",
            'subject'            => "required",
            'valid_until'        => "required",
            'date'               => "required",
        ]);

        $quotation = Quotation::create([
            'user_id'             => Auth::id(),
            'client_id'           => Request::input('client_id'),
            'subject'            => Request::input('subject'),
            'date'               => Request::input('date'),
            'valid_until'        => Request::input('valid_until'),
            'payment_policy'     => Request::input('payment_policy'),
            'terms_of_service'   => Request::input('Trams_Services'),
            'status'             => filled(Request::input('status')),
        ]);

        $quotationDomains        = Request::input('domains');
        $quotationHostings       = Request::input('hostings');
        $quotationWorks          = Request::input('works');
        $quotationPackages       = Request::input('packages');


        if (count($quotationDomains)) {
            $quotation->domains()->sync($this->createArrayGroups($quotationDomains));
        }

        if (count($quotationHostings)) {
            $quotation->hostings()->sync($this->createArrayGroups($quotationHostings));
        }

        if (count($quotationWorks)) {
            $quotation->works()->sync($this->createArrayGroups($quotationWorks));
        }

        if (count($quotationPackages)) {
            $quotation->packages()->sync($this->createArrayGroups($quotationPackages));
        }


        $quotations = Request::input('quatations');
        $quotationsOption = [];
        foreach ($quotations as $option) {
            $quotationsOption[] = [
                'quotation_id'   => $quotation->id,
                'itemname'       => $option['itemname'],
                'discount'       => $option['discount'] ?? 0,
                'price'          => $option['price']    ?? 0,
                'quantity'       => $option['quantity'] ?? 1
            ];
        }
        $quotation->quotationItems()->createMany($quotationsOption);



        return redirect()->route('quotations.index');


    }


    public function oldStoreMethod(){



//        return Request::all();
        Request::validate([
            'client_id' => "required",
            'valid_until' => "required",
            'date' => "required",
        ]);

        $quotation = Quotation::create([
            'user_id'          => Auth::id(),
            'client_id'        => Request::input('client_id'),
            'subject'          => Request::input('subject'),
            'valid_until'      => Request::input('valid_until'),
            'website_id'       => Request::input('website_id'),
            'platform_id'      => Request::input('platform_id'),
            'design_id'        => Request::input('design_id'),
            'domain_id'        => Request::input('domain_id'),
            'hosting_id'       => Request::input('hosting_id'),
            'page'             => Request::input('page'),
            'page_price'       => Request::input('page_price'),
            'content_page'     => Request::input('content_page'),
            'content_price'    => Request::input('content_price'),
            'payment_policy'   => Request::input('payment_policy'),
            'terms_of_service' => Request::input('terms_of_service'),
            'date'             => Request::input('date'),
            'status'           => filled(Request::input('status')),
        ]);



        $works = Request::input('woarks');
        $workdata = [];
        if ($works != null) {
            foreach ($works as $work) {
                $workdata[] = [
                    'quotation_id' => $quotation->id,
                    'work_id' => $work,
                ];
            }
            $quotation->works('quotation_work')->attach($workdata);
        }

        $quotations = Request::input('quatations');
        $quatationsOptoin = [];
        foreach ($quotations as $option) {
            $quatationsOptoin[] = [
                'quotation_id' => $quotation->id,
                'itemname' => $option['itemname'],
                'cost' => $option['cost'],
                'quantity' => $option['quantity']
            ];
        }
        $quotation->quotationItems()->createMany($quatationsOptoin);
        return redirect()->route('quotations.index');
    }


    /**
     * Display the specified resource.
     *
     * @param Quotation $quotation
     * @return \Inertia\Response
     */
    /* public function show($id)
     {
         $quotation = Quotation::with(['client', 'domain', 'hosting', 'quotationItems', 'works'])->findOrFail($id);
         $sumItemsPrice = $quotation->quotationItems()->sum('cost');
         $sumWorksPrice = $quotation->works()->sum('price');
         $domain = $quotation->domain_id ? $quotation->domain->price : 0;
         $hosting = $quotation->hosting_id ? $quotation->hosting->price : 0;
         $total = $sumWorksPrice + $sumItemsPrice + $domain + $hosting;

         $allItems = array();

         array_push($allItems, $quotation->domain, $quotation->hosting);

         array_push($allItems, ['quantity' => 1]);


         foreach ($quotation->quotationItems as $key => $quotationItem) {
             array_push($allItems, $quotationItem);
         }
         foreach ($quotation->works as $work) {
             array_push($allItems, $work);
         }


         return Inertia::render(Request::input("page") == 'show' ? 'Modules/Quotation/Show' : 'Modules/Quotation/Invoice', [
             'quotation' => $quotation,
             'others_info' => [
                 'quot_id' =>$quotation->created_at->format('Ymd').$quotation->id,
                 'creator' => $quotation->user,
                 "created" => $quotation->created_at->format('D, d F, Y'),
                 "validated" => $quotation->valid_until->format('D, d F, Y'),
                 "qut_items_price" => $quotation->quotationItems()->sum('cost'),
                 "works_price" => $quotation->works()->sum('price'),
                 "total_price" => $total,
                 'all_items' => $allItems
             ]
         ]);
     }*/





    public function show(Quotation $quotation){

        $mainarray = array();
        foreach ($quotation->domains as $item){

            $mainarray [] =[
                'name' => $item->name,
                'price' => $item->price ?? 0,
                'discount' => $item->pivot->discount ?? 0,
                'quantity' => $item->pivot->quantity > 0 ? $item->pivot->quantity  : 1
            ];
        }

        foreach ($quotation->hostings as $item){
            $mainarray [] =[
                'name' => $item->name,
                'price' => $item->price ?? 0,
                'discount' => $item->pivot->discount ?? 0,
                'quantity' => $item->pivot->quantity > 0 ? $item->pivot->quantity  : 1
            ];
        }
        foreach ($quotation->works as $item){
            $mainarray [] =[
                'name' => $item->name,
                'price' => $item->price ?? 0,
                'discount' => $item->pivot->discount ?? 0,
                'quantity' => $item->pivot->quantity > 0 ? $item->pivot->quantity  : 1
            ];
        }
        foreach ($quotation->packages as $item){
            $mainarray [] =[
                'name' => $item->name,
                'price' => $item->price ?? 0,
                'discount' => $item->pivot->discount ?? 0,
                'quantity' => $item->pivot->quantity > 0 ? $item->pivot->quantity  : 1
            ];
        }

        foreach ($quotation->quotationItems as $item){
            $mainarray [] =[
                'name' => $item->name ?? $item->itemname,
                'price' => $item->price ?? 0,
                'discount' => $item->discount ?? 0,
                'quantity' => $item->quantity > 0 ? $item->quantity  : 1,
            ];
        }


        $transactions = [];
        foreach($quotation->transactions as $item){
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

        $totalPay = $quotation->transactions->sum('pay_amount') + $quotation->transactions->sum('discount');

        $quotationLastTransaction = $quotation->transactions->last() ?? [
                'pay_amount' => 0,
                'discount' => 0
            ];

        return Inertia::render('Modules/Quotation/Show', [
            'info' =>[
                'quotation'          => $quotation,
                'dates'              => [
                    'date'           => $quotation->date->format('M-d-Y'),
                    'valid_until'    => $quotation->valid_until->format('M-d-Y'),
                ],

                'others_info'        => [
                    "items"          => $mainarray,
                    "create_invoice" => URL::route('quotation.download', $quotation->id)
                ],

                'quotation_owner'    => [
                    'creator'        => $quotation->user,
                    'client'         => $quotation->client,
                ],
                'total_pay'          => $totalPay,
                'last_payment'       => $quotationLastTransaction,
                'transactions'       => $transactions,

                'payment_methods'    => Method::all(),
                'payment_url'        => URL::route('saveQuotationTransaction'),
            ]
        ]);


    }





    public function createInvoice($id){
        $quotation = Quotation::findOrFail($id);

        $mainarray = array();
        foreach ($quotation->domains as $item){
            $mainarray [] =[
                'name' => $item->name,
                'price' => $item->price ?? 0,
                'discount' => $item->pivot->discount ?? 0,
                'quantity' => $item->pivot->quantity > 0 ? $item->pivot->quantity  : 1
            ];
        }
        foreach ($quotation->hostings as $item){
            $mainarray [] =[
                'name' => $item->name,
                'price' => $item->price ?? 0,
                'discount' => $item->pivot->discount ?? 0,
                'quantity' => $item->pivot->quantity > 0 ? $item->pivot->quantity  : 1
            ];
        }
        foreach ($quotation->works as $item){
            $mainarray [] =[
                'name' => $item->name,
                'price' => $item->price ?? 0,
                'discount' => $item->pivot->discount ?? 0,
                'quantity' => $item->pivot->quantity > 0 ? $item->pivot->quantity  : 1
            ];
        }
        foreach ($quotation->packages as $item){
            $mainarray [] =[
                'name' => $item->name,
                'price' => $item->price ?? 0,
                'discount' => $item->pivot->discount ?? 0,
                'quantity' => $item->pivot->quantity > 0 ? $item->pivot->quantity  : 1
            ];
        }
        foreach ($quotation->quotationItems as $item){
            $mainarray [] =[
                'name' => $item->name ?? $item->itemname,
                'price' => $item->price ?? 0,
                'discount' => $item->discount ?? 0,
                'quantity' => $item->quantity > 0 ? $item->quantity  : 1,
            ];
        }


        $transactions = [];
        foreach($quotation->transactions as $item){
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

        $totalPay = $quotation->transactions->sum('pay_amount') + $quotation->transactions->sum('discount');

        $quotationLastTransaction = $quotation->transactions->last() ?? [
                'pay_amount' => 0,
                'discount' => 0
            ];

        $data =[
            'quotation'          => $quotation,
            'others_info'        => [
                "items"          => $mainarray,
                "create_invoice" => URL::route('quotation.download', $quotation->id)
            ],

            'quotation_owner'    => [
                'creator'        => $quotation->user,
                'client'         => $quotation->client,
            ],
            'transactions'    => $transactions,
            "total_pay"       => $totalPay,
            "last_payment"    => $quotationLastTransaction,
        ];

        $pdf = Pdf::loadView('invoice.quotation', compact('data'));
        return $pdf->download('quotation.pdf');

    }



    public function editQuotation($id){

        $quot = Quotation::findOrFail($id);

        $domains = Domain::all(['id','name', 'price']);

        $eDomains = [];
        foreach ($domains as $domain){
            foreach ($quot->domains as $qD){
                if ($domain->id == $qD->id){
                    $eDomains[] = [
                      "mD" => $domain,
                      "qd" => $qD
                    ];
                }else{
                    $eDomains[] = [
                        "mD" => $domain
                    ];
                }
            }
        }


        // works
        $eWorks = [];
        $works  = Work::all(['id','name', 'price']);
        $qWOrks = $quot->works;




        $mainWorks = $works->map(function ($item) use($qWOrks){
            $isTrue = false;
            foreach ($qWOrks as $work){
                if ($work->id == $item->id){
                    $isTrue = true;
                    break;
                }
            }
            return $isTrue ? $work : $item;
        });




//                "hostings"   => $quot->hostings,
//                "works"      => $quot->works,
//                "packages"   => $quot->packages,
//                "quotItems"  => $quot->quotationItems,

        return $mainWorks;

        return Inertia::render('Modules/Quotation/Edit', [
            "clients"   => Client::all(['id','name', 'email', 'phone', 'address']),
            "services"  => Website::all(['id','name', 'price']),
            "packages"  => Design::all(['id','name', 'price']),
            "platforms" => Platform::all(['id','name', 'price']),
            "hostings"  => Hosting::all(['id','name', 'price']),
            "works"     => Work::all(['id','name', 'price']),

            "eWorks"    => $mainWorks,

            "edit_quot" => [
                "quot"       => $quot,
                "domains"    => $quot->domains,
                "hostings"   => $quot->hostings,
                "works"      => $quot->works,
                "packages"   => $quot->packages,
                "quotItems"  => $quot->quotationItems,
                "update_url" => URL::route('quotations.update', $id),
            ]

        ]);


    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Quotation  $quotation
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Quotation $quotation)
    {
        $quotation->update([
            'user_id'            => Auth::id(),
            'client_id'          => Request::input('client_id'),
            'subject'            => Request::input('subject'),
            'date'               => Request::input('date'),
            'valid_until'        => Request::input('valid_until'),
            'payment_policy'     => Request::input('payment_policy'),
            'terms_of_service'   => Request::input('Trams_Services'),
            'status'             => filled(Request::input('status')),
        ]);

        return "updated";
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Quotation  $quotation
     * @return \Illuminate\Http\Response
     */
    public function destroy(Quotation $quotation)
    {
        //
    }



}
