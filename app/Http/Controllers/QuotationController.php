<?php

namespace App\Http\Controllers;

use App\Http\Requests\ServicesRequest;
use App\Models\Client;
use App\Models\Design;
use App\Models\Domain;
use App\Models\Hosting;
use App\Models\Invoice;
use App\Models\Method;
use App\Models\Platform;
use App\Models\Quotation;
use App\Models\Searvice;
use App\Models\Transaction;
use App\Models\Website;
use App\Models\Work;

use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;
use Illuminate\Routing\Route;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
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
     * @param $services
     * @param $platforms
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
  /*  public function index()
    {
        $quotation  = Quotation::query()
            ->latest()
            ->with([
                "client:id,name,email,phone", "user:id,name", 'invoice'])
            ->when(Request::input('search'), function ($query, $search) {
                $query->where('u_id', 'like', "%{$search}%")
                ->orWhere('u_id', 'like', "%{$search}%")
                ->orWhereHas('client', function ($client) use($search){
                    $client
                        ->where('name',    'like', "%{$search}%")
                        ->orWhere('phone', 'like', "%{$search}%")
                        ->orWhere('email', 'like', "%{$search}%")
                    ;
                })
                ->orWhereHas('domains', function($hosting) use($search){
                    $hosting->where('name', 'like', "%{$search}%");
                })
                ->orWhereHas('hostings', function($hosting) use($search){
                    $hosting->where('name', 'like', "%{$search}%");
                })
                ->orWhereHas('works', function($hosting) use($search){
                    $hosting->where('name', 'like', "%{$search}%");
                })
                ->orWhereHas('packages', function($hosting) use($search){
                    $hosting->where('name', 'like', "%{$search}%");
                })
                ->orWhereHas('quotationItems', function($hosting) use($search){
                    $hosting->where('item_name', 'like', "%{$search}%");
                });
            })
            ->when(Request::input('byStatus'), function ($query, $search){
                $query->where('status', $search);
            })
            ->when(Request::input('dateRange'), function ($query, $search){
                $start_date = $search[0];
                $end_date =  $search[1];
                if (!empty($start_date) && !empty($end_date)) {
                    $query->whereDate('created_at', '>=', $start_date)
                        ->whereDate('created_at', '<=', $end_date);
                }
                if (empty($start_date) && !empty($end_date)) {
                    $query->whereDate('created_at', '<=', $end_date);
                }
            })
            ->paginate(Request::input('perPage') ?? 10)
            ->withQueryString()
            ->through(fn($qot) => [
                "id"           => $qot->id,
                "subject"      => $qot->subject,
                "status"       => $qot->status,
                "date"         => $qot->date->format('M-d-Y'),
                "client"       => $qot->client,
                "invoice"      => $qot->invoice,
                "user_name"    => $qot->user->name,
                "created_at"   => $qot->created_at->format('Y-m-d'),
                "valid_until"  => $qot->valid_until->format('Y-m-d'),
                "show_url"     => URL::route('quotations.show', $qot->id),
                "edit_url"     => URL::route('quotations.edit', $qot->id),
                "invoice_url"  => URL::route('quotations.quotationInvoice', $qot->id)
            ]);

        return inertia('Modules/Quotation/Index', [
            'quotations'  => $quotation,
            'filters'     => Request::only(['search','perPage', 'byStatus', 'dateRange']),
            'url'         => URL::route('quotations.index'),
            'change_status_url'  => URL::route('chnageQuotationStatus'),
        ]);



    }*/

    protected function mapedItems($services, $platforms){
        return $services->map(function($service) use ($platforms) {
            $platform_ids = json_decode($service->platforms);

            $service_platforms = $platforms->whereIn('id', $platform_ids)->map(function($platform) {
                $platform_featureds = json_decode($platform->featureds);
                return ["data" => $platform, 'featureds' => $platform_featureds,];
            });

            return [
                'service' => [
                    'data' => $service,
                    'platforms' => $service_platforms,
                ],
            ];
        });
    }


    public function index(){
        $quotation  = Quotation::query()
            ->with(['client', 'user', 'invoice'])
            ->latest()
            ->when(Request::input('search'), function ($query, $search) {
                $query->where('u_id', 'like', "%{$search}%")
                    ->orWhere('u_id', 'like', "%{$search}%")
                    ->orWhereHas('client', function ($client) use($search){
                        $client
                            ->where('name',    'like', "%{$search}%")
                            ->orWhere('phone', 'like', "%{$search}%")
                            ->orWhere('email', 'like', "%{$search}%")
                        ;
                    })
                    ->orWhereHas('domains', function($hosting) use($search){
                        $hosting->where('name', 'like', "%{$search}%");
                    })
                    ->orWhereHas('hostings', function($hosting) use($search){
                        $hosting->where('name', 'like', "%{$search}%");
                    })
                    ->orWhereHas('works', function($hosting) use($search){
                        $hosting->where('name', 'like', "%{$search}%");
                    })
                    ->orWhereHas('packages', function($hosting) use($search){
                        $hosting->where('name', 'like', "%{$search}%");
                    })
                    ->orWhereHas('quotationItems', function($hosting) use($search){
                        $hosting->where('item_name', 'like', "%{$search}%");
                    });
            })
            ->when(Request::input('byStatus'), function ($query, $search){
                $query->where('status', $search);
            })
            ->when(Request::input('dateRange'), function ($query, $search){
                $start_date = $search[0];
                $end_date =  $search[1];
                if (!empty($start_date) && !empty($end_date)) {
                    $query->whereDate('created_at', '>=', $start_date)
                        ->whereDate('created_at', '<=', $end_date);
                }
                if (empty($start_date) && !empty($end_date)) {
                    $query->whereDate('created_at', '<=', $end_date);
                }
            })
            ->paginate(Request::input('perPage') ?? 10)
            ->withQueryString()
            ->through(fn($qot) => [
                "id"           => $qot->id,
                "qut_id"       => $qot->quotation_id,
                "client"       => $qot->client,
                "user"         => $qot->user,
                "subject"      => $qot->subject,
                "status"       => $qot->status,
                "total_price"  => $qot->total_price,
                "discount"     => $qot->discount,
                "grand_total"  => $qot->grand_total,
                "date"         => $qot->qut_date->format('M-d-Y'),
                "created_at"   => $qot->created_at->format('Y-m-d'),
                "show_url"     => URL::route('quotations.show', $qot->id),
                "edit_url"     => URL::route('quotations.edit', $qot->id),
                "invoice_url"  => URL::route('quotations.quotationInvoice', $qot->id)
            ]);
        return inertia('Quotation/Index', [
            'quotations'  => $quotation,
            'filters'     => Request::only(['search','perPage', 'byStatus', 'dateRange']),
            'url'         => URL::route('quotations.index'),
            'change_status_url'  => URL::route('chnageQuotationStatus'),
        ]);
    }



    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Inertia\Response
     */
    public function create(){

        $services = Searvice::all()->map(function ($service){
            $service["platforms"] = Platform::with("packages")
                ->whereIn('id', json_decode($service->platforms))
                ->get()
                ->map(function($platform){
                    $platform["features"] = json_decode($platform->featureds);
                    return collect($platform)->only(['id', 'name', 'features', 'packages']);
                });
            return collect($service)->only(['service_name', 'id', 'platforms']);
        });

        $clients = Client::where('status', '=', 'Converted to Customer')->latest()->get();


        return inertia('Quotation/Store', [
            'services' => $services,
            'clients' => $clients,
            'main_url' => URL::route('quotations.store')
        ]);
    }


    public function createArrayGroups($items)
    {
        $added = array();
        foreach($items as $item){
            if (isset($item['p']) && $item['p'] == 'true'){
                $id = $item['id'];
                $added[$id] = [
                    'price'    => $item['price']    ?? 0,
                    'quantity' => $item["quantity"] ?? 1,
                    'discount' => $item["discount"] ?? 0,
                ];
            }
        }
        return $added;
    }

    /**
     * Store a newly created resource in storage.
     *
     */

    public function store()
    {
        Request::validate([
            'clientId' => 'required',
            'date' => 'required',
            'subject' => 'required'
        ],[
            'clientId.required' => 'First Select An Client...',
            'qutDate.required' => 'Please Select Quotation Date...',
        ]);

        $storeItems = [];
        foreach (Request::input('items') as $item){
            $storeItems[] = [
                'checkFeatrueds' => $item['checkFeatrueds'],
                'checkPackages' =>  $item['checkPackages']
            ];
        }


        Quotation::create([
            'quotation_id' => Request::input('quotationId'),
            'client_id' => Request::input('clientId'),
            'qut_date' => Request::input('date'),
            'subject' => Request::input('subject'),
            'created_by' => Auth::id(),
            "total_price" => Request::input('totalPrice'),
            "grand_total" => Request::input('totalPrice'),
            'items' => json_encode($storeItems),
            'status' => true,
            'note' => Request::input('note'),
            'payment_policy' => Request::input('attachPaymentPolicy') ? Request::input('paymentPolicy') : NULL,
            'trams_of_service' => Request::input('attachServicePolicy') ? Request::input('servicePolicy') : NULL,
        ]);
        return Redirect::route('quotations.index');
    }



/*    public function store()
    {

        return dd(Request::all());
        exit();

        Quotation::create([

        ]);



//
//        Request::validate([
//            'client_id'          => "required",
//            'subject'            => "required",
//            'valid_until'        => "required",
//            'date'               => "required",
//            'status'             => "required",
//        ]);


        $price = 0;
        $discount = 0;
        $discount += Request::input('discount');
        $quotation = Quotation::create([
            'u_id'               => date('Yd', strtotime(now())),
            'user_id'            => Auth::id(),
            'client_id'          => Request::input('client_id'),
            'subject'            => Request::input('subject'),
            'date'               => Request::input('date'),
            'valid_until'        => Request::input('valid_until'),
            'payment_policy'     => Request::input('payment_policy'),
            'terms_of_service'   => Request::input('Trams_Services'),
            'status'             => Request::input('status')["name"],
            'note'               => Request::input('note')
        ]);

        $quotationDomains        = Request::input('domains');
        $quotationHostings       = Request::input('hostings');
        $quotationWorks          = Request::input('works');
        $quotationPackages       = Request::input('packages');

//        return $quotationPackages;
//        return $this->createArrayGroups($quotationPackages);

        if (count($quotationDomains)) {
             $quotation->domains()->attach($this->createArrayGroups($quotationDomains));
        }

        if (count($quotationHostings)) {
            $quotation->hostings()->attach($this->createArrayGroups($quotationHostings));
        }

        if (count($quotationWorks)) {
            $quotation->works()->attach($this->createArrayGroups($quotationWorks));
        }

        if (count($quotationPackages)) {
            $quotation->packages()->attach($this->createArrayGroups($quotationPackages));
        }


        $quotations = Request::input('quatations');
        $quotationsOption = [];
        foreach ($quotations as $option) {
            $quotationsOption[] = [
                'quotation_id'   => $quotation->id,
                'item_name'       => $option['item_name'],
                'discount'       => $option['discount'] ?? 0,
                'price'          => $option['price']    ?? 0,
                'quantity'       => $option['quantity'] ?? 1
            ];
        }

        foreach ($quotationsOption as $item) {
            $price += $item['price'] * $item['quantity'];
            $discount += $item['discount'];
        }

        foreach ($this->createArrayGroups($quotationDomains) as $item){
            $price += $item['price'] * $item['quantity'];
            $discount += $item['discount'];
        }

        foreach ($this->createArrayGroups($quotationHostings) as $item){
            $price += $item['price'] * $item['quantity'];
            $discount += $item['discount'];
        }

        foreach ($this->createArrayGroups($quotationPackages) as $item){
            $price += $item['price'] * $item['quantity'];
            $discount += $item['discount'];
        }
        foreach ($this->createArrayGroups($quotationWorks) as $item){
            $price += $item['price'] * $item['quantity'];
            $discount += $item['discount'];
        }

        $quotation->price = $price;
        $quotation->discount = $discount;
        $quotation->save();

        $quotation->quotationItems()->createMany($quotationsOption);
        return redirect()->route('quotations.index');



//        $totalPrice = 0;
//        $totalDiscount = 0;
//        foreach (Request::input('quatations') as $item){
//            $totalPrice += $item['price'];
//            $totalDiscount += $item['discount'];
//            InvoiceItem::create([
//                'invoice_id' => $quotation->id,
//                'item_name'  => $item['itemname'],
//                'price'      => $item['price'],
//                'discount'   => $item['discount'],
//            ]);
//        }
//
//        $quotation->total_price =  $totalPrice ?? 0;
//        $quotation->discount = $totalDiscount ?? 0;
//        $quotation->save();




    }*/


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
//        }
        return redirect()->route('quotations.index');
    }


    /**
     * Display the specified resource.
     *
     * @param Quotation $quotation
     * @return false|string
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




    public function show($id)
    {
        $quotation = Quotation::with(['client', 'user:id,name', 'invoice'])->findOrFail($id);
        $pref = [];
        foreach (json_decode($quotation->items) as $item){
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

        if (Request::input('download')) {
            $isPrint = false;
            $pdf = Pdf::loadView('invoice.quotation', compact('quotation', 'pref', 'isPrint'));
            return $pdf->download($quotation->client->name."_".now()->format('d_m_Y')."_".'quotation.pdf');
        }

        if (Request::input('print')){
            $isPrint = true;
            return view('invoice.quotation', compact('quotation', 'pref', 'isPrint'));
        }

        return Inertia::render('Quotation/Show',   [
            "quotation" => $quotation,
            "paymentMethods" => Method::all(),
            $downloadInvoiceUrl = $quotation->invoice ? URL::route('invoices.downloadInvoice', $quotation->invoice?->id) : null,
            "url" =>[
                "show_url" => URL::route('quotations.show', $quotation->id),
                "edit_url" => URL::route('quotations.edit', $quotation->id),
                "add_discount" => URL::route('quotations.addDiscount', $quotation->id),
                "create_invoice" => URL::route('invoices.createInvoice', $quotation->id),
                "invoice_url" => $downloadInvoiceUrl,
            ]
        ]);


    }

    public function givenDiscount($id){
        $quotation = Quotation::findOrFail($id);
        $quotation->discount = Request::input('discount');
        $quotation->grand_total = $quotation->total_price - Request::input('discount');
        $quotation->save();
        return back();
    }

/*    public function show($id)
    {

        $quotation = Quotation::with('client')->findOrFail($id);

        return $quotation;

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
                'name' => $item->name ?? $item->item_name,
                'price' => $item->price ?? 0,
                'discount' => $item->discount ?? 0,
                'quantity' => $item->quantity > 0 ? $item->quantity  : 1,
            ];
        }



        if(Request::input('type') === 'show_invoice'){
            return Inertia::render('Modules/Quotation/Invoice',   [
                "info" => [
                    'quotation'          => $quotation,
                    'dates'              => [
                        'date'           => $quotation->date->format('d/m/Y'),
                        'valid_until'    => $quotation->valid_until->format('d/m/Y'),
                    ],
                    'others_info'        => [
                        "items"          => $mainarray,
                        "create_invoice" => URL::route('quotation.download', $quotation->id),
                        "edit_url"     => URL::route('quotations.edit', $quotation->id)
                    ],
                    'quotation_owner'    => [
                        'creator'        => $quotation->user,
                        'client'         => $quotation->client,
                    ],
                    'invoice' => $quotation->invoice,
                    'payment_methods'    => Method::all(),
                    'add_payment'  => URL::route('quotations.addPayment'),
                ]
            ]);
        }


        return Inertia::render('Modules/Quotation/NewShow',   [
            "info" => [
                'quotation'          => $quotation,
                'dates'              => [
                    'date'           => $quotation->date->format('d/m/Y'),
                    'valid_until'    => $quotation->valid_until->format('d/m/Y'),
                ],

                'others_info'        => [
                    "items"          => $mainarray,
                    "create_invoice" => URL::route('quotation.download', $quotation->id),
                    "edit_url"     => URL::route('quotations.edit', $quotation->id)

                ],

                'quotation_owner'    => [
                    'creator'        => $quotation->user,
                    'client'         => $quotation->client,
                ],

                'payment_methods'    => Method::all(),
                'change_status_url'  => URL::route('chnageQuotationStatus'),
        ]
    ]);


    }*/


    public function createInvoice($id){
        $quotation = Quotation::findOrFail($id);


        $mainarray = array();

        foreach ($quotation->domains as $item){
            $mainarray [] =[
                'name' => $item->name,
                'price' => $item->price,
                'discount' => $item->pivot->discount,
                'quantity' => $item->pivot->quantity ?? 1
            ];
        }

        foreach ($quotation->hostings as $item){
            $mainarray [] =[
                'name' => $item->name,
                'price' => $item->price,
                'discount' => $item->pivot->discount,
                'quantity' => $item->pivot->quantitiy ?? 1
            ];
        }
        foreach ($quotation->works as $item){
            $mainarray [] =[
                'name' => $item->name,
                'price' => $item->price,
                'discount' => $item->pivot->discount,
                'quantity' => $item->pivot->quantitiy ?? 1
            ];
        }
        foreach ($quotation->packages as $item){
            $mainarray [] =[
                'name' => $item->name,
                'price' => $item->price,
                'discount' => $item->pivot->discount,
                'quantity' => $item->pivot->quantitiy ?? 1
            ];
        }
        foreach ($quotation->quotationItems as $item){
            $mainarray [] =[
                'name' => $item->name ?? $item->item_name,
                'price' => $item->price,
                'discount' => $item->discount,
                'quantity' => $item->quantity ?? 1
            ];
        }

//        $transactions = [];
//        foreach($quotation->transactions as $item){
//            $transactions[] = [
//                "amount"     => $item->amount ?? 0,
//                "user"       => $item->user,
//                "method"     => $item->method->name,
//
//                "pay_amount" => $item->pay_amount ?? 0,
//                "discount"   => $item->discount ?? 0,
//                "total_due"  => $item->total_due ?? 0,
//                "old_total_pay" => $item->old_total_pay ?? 0,
//                "date"       => $item->date->format('d M,y'),
//                "note"       => $item->note,
//            ];
//        }
//
//        $totalPay = $quotation->transactions->sum('pay_amount') + $quotation->transactions->sum('discount');
//
//        $quotationLastTransaction = $quotation->transactions->last() ?? [
//                'pay_amount' => 0,
//                'discount' => 0
//            ];

        $data = [
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


            'payment_methods'    => Method::all(),
            'payment_url'        => URL::route('saveQuotationTransaction'),
        ];

        $isQuotation = true;
        if(Request::input('is_invoice') === 'true'){
            $isQuotation = false;
            $data["invoice"] = $quotation->invoice;

        }



//        return view('invoice.quotation', compact('data', 'isQuotation'));
//        exit();

        $pdf = Pdf::loadView('invoice.quotation', compact('data', 'isQuotation'));

        return $pdf->download($data["quotation_owner"]["client"]["name"]."_".now()->format('d_m_Y')."_".'quotation.pdf');


    }



    public function editQuotation($id){
        $quot = Quotation::with('client')->findOrFail($id);

        $services = Searvice::all()->map(function ($service){
            $service["platforms"] = Platform::with("packages")
                ->whereIn('id', json_decode($service->platforms))
                ->get()
                ->map(function($platform){
                    $platform["features"] = json_decode($platform->featureds);
                    return collect($platform)->only(['id', 'name', 'features', 'packages']);
                });
            return collect($service)->only(['service_name', 'id', 'platforms']);
        });
        $clients = Client::where('status', '=', 'Converted to Customer')->latest()->get();

        return Inertia::render('Quotation/Edit',   [
            'quotation' => $quot,
            'services' => $services,
            'clients' => $clients,
            'update_url' => URL::route('quotations.update', $quot->id),
        ]);
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Quotation  $quotation
     * @return string
     */
    public function update(Request $request, Quotation $quotation)
    {
        Request::validate([
            'clientId' => 'required',
            'date' => 'required',
            'subject' => 'required'
        ],[
            'clientId.required' => 'First Select An Client...',
            'qutDate.required' => 'Please Select Quotation Date...',
        ]);

        $storeItems = [];
        foreach (Request::input('items') as $item){
            $storeItems[] = [
                'checkFeatrueds' => $item['checkFeatrueds'],
                'checkPackages' =>  $item['checkPackages']
            ];
        }

        $quotation->update([
            'client_id' => Request::input('clientId'),
            'qut_date' => Request::input('date'),
            'subject' => Request::input('subject'),
            'created_by' => Auth::id(),
            "total_price" => Request::input('totalPrice'),
            'discount' => 0,
            'grand_total' => Request::input('totalPrice'),
            'items' => json_encode($storeItems),
            'status' => true,
            'note' => Request::input('note'),
            'payment_policy' => Request::input('attachPaymentPolicy') ? Request::input('paymentPolicy') : NULL,
            'trams_of_service' => Request::input('attachServicePolicy') ? Request::input('servicePolicy') : NULL,
        ]);

        return Redirect::route('quotations.index');

    }

/*    public function oldUpdate(){

        if(is_integer(Request::input("client_id"))){
            $clientId = Request::input('client_id');
        }else{
            $clientId = $quotation->client->id;
        }


        $quotation->update([
            'user_id'            => Auth::id(),
            'client_id'          => $clientId,
            'subject'            => Request::input('subject'),
            'date'               => Request::input('date'),
            'valid_until'        => Request::input('valid_until'),
            'payment_policy'     => Request::input('payment_policy'),
            'terms_of_service'   => Request::input('Trams_Services'),
            'status'             => Request::input('status')["name"] ?? $quotation->status,
            'note'               => Request::input('note')
        ]);

        $quotationDomains        = Request::input('domains');
        $quotationHostings       = Request::input('hostings');
        $quotationWorks          = Request::input('works');
        $quotationPackages       = Request::input('packages');

        if (count($quotationDomains)) {
            $data = $quotation->domains()->sync($this->createArrayGroups($quotationDomains));
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


        $price = 0;
        $discount = 0;
        $quotations = Request::input('quatations');

        $quotationsOption = [];
        foreach ($quotations as $key => $option) {
            $quotationsOption[] = [
                'id'             => $option["id"] ?? null,
                'quotation_id'   => $quotation->id,
                'item_name'       => $option['item_name'],
                'discount'       => $option['discount'] ?? 0,
                'price'          => $option['price']    ?? 0,
                'quantity'       => $option['quantity'] ?? 1
            ];
        }

        foreach ($quotationsOption as $item) {
            $price += $item['price'] * $item['quantity'];
            $discount += $item['discount'];
        }

        foreach ($this->createArrayGroups($quotationDomains) as $item){
            $price += $item['price'] * $item['quantity'];
            $discount += $item['discount'];
        }

        foreach ($this->createArrayGroups($quotationHostings) as $item){
            $price += $item['price'] * $item['quantity'];
            $discount += $item['discount'];
        }

        foreach ($this->createArrayGroups($quotationPackages) as $item){
            $price += $item['price'] * $item['quantity'];
            $discount += $item['discount'];
        }
        foreach ($this->createArrayGroups($quotationWorks) as $item){
            $price += $item['price'] * $item['quantity'];
            $discount += $item['discount'];
        }

        $quotation->price = $price;
        $quotation->discount = $discount;
        $quotation->save();

        if ($quotation->invoice &&  $quotation->invoice != null){
            $quotation->invoice->update([
                'quotation_id' => $quotation->id,
                'client_id' => $quotation->client->id,
                'sub_total' => $quotation->price,
                'discount' => $quotation->discount,
                'grand_total' => $quotation->price - $quotation->discount,
                'due' => $quotation->price - $quotation->discount,
            ]);
        }


        $array = $quotation->quotationItems->toArray();
        $deletedItems=[];
        $deletedItems = array_map(function($item)use($quotationsOption){
            return in_array($item['id'], array_column($quotationsOption, 'id')) ? null : $item["id"];
        }, $array);
        foreach ($deletedItems as $deletedItem){
            if ($deletedItem){
                $quotation->quotationItems()->find($deletedItem)->delete();
            }
        }


        $relatedModels = $quotation->quotationItems;
        foreach ($quotationsOption as $item) {
            $updateData = $relatedModels->find($item['id']);
            if($updateData){
                $updateData->update($item);
            }else{
                if ($item['id'] == null){
                    $quotation->quotationItems()->create($item);
                }
            }
        }
        return Redirect::route('quotations.index');
    }*/


    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Quotation  $quotation
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy(Quotation $quotation)
    {
//        return $quotation;
        $quotation->delete();
        return back();
    }


    public function chnageQuotationStatus(){
        if(Request::input('quotId') != null && is_array(Request::input('status')) != null){
            $status = Request::input('status')["name"];
            $quotaiton = Quotation::findOrfail(Request::input('quotId'))->load(['invoice', 'client']);
            if ($status == 'Converted To Invoice'){
                if ($quotaiton->invoice != null){
                    $quotaiton->invoice->update([
                        'quotation_id' => $quotaiton->id,
                        'client_id' => $quotaiton->client->id,
                        'sub_total' => $quotaiton->price,
                        'discount' => $quotaiton->discount,
                        'grand_total' => $quotaiton->price - $quotaiton->discount,
                        'due' => $quotaiton->price - $quotaiton->discount,
                    ]);
                }else{
                    Invoice::create([
                        'u_id' => date('Yd', strtotime(now())),
                        'quotation_id' => $quotaiton->id,
                        'client_id' => $quotaiton->client->id,
                        'sub_total' => $quotaiton->price,
                        'discount' => $quotaiton->discount,
                        'grand_total' => $quotaiton->price - $quotaiton->discount,
                        'status' => 'Converted Form Quotation',
                        'due' => $quotaiton->price - $quotaiton->discount,
                    ]);
                }
                $quotaiton->update(['status' => $status]);
            }else{
                if ($quotaiton->invoice != null){
                    $quotaiton->invoice->delete();
                }
                $quotaiton->update(['status' => $status]);
            }
        }
        return back();
    }

    public function addPayment(){

        Request::validate([
            'payment_id' => 'required|integer'
        ]);

        $quotation = Quotation::with(['invoice','client'])->findOrFail(Request::input('quotation_id'));
        $invoice = Invoice::where('quotation_id',$quotation->id)->first();
        $totalPay = Request::input('pay_amount')+Request::input('discount');
        Transaction::create([
            'u_id'       => date('Yd', strtotime(now())),
            'transaction_model' => 'App\\Models\\Invoice',
            'transaction_model_id' => $invoice->id,
            'method_id'  => Request::input('payment_id'),
            'user_id'    => Auth::id(),
            'client_id'  => $quotation->client->id,
            'invoice_id' => $quotation->invoice->id,

            'amount'     => $quotation->invoice->grand_total,
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
           'pay' =>  $quotation->invoice->pay + $totalPay,
            'due' => $tk
        ]);


        return back();
    }

}
