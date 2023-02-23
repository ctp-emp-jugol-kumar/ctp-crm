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
            ->latest()
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
                "client_name"  => $qot->client->name,
                "user_name"    => $qot->user->name,
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
        ]);
    }


    public function createArrayGroups($items)
    {
        $added = array();
        foreach($items as $item){
            if (isset($item['p'])){
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
    public function store(Request $request)
    {
//
//        Request::validate([
//            'client_id'          => "required",
//            'subject'            => "required",
//            'valid_until'        => "required",
//            'date'               => "required",
//        ]);


        $quotation = Quotation::create([
            'u_id' => 'Quotation_'.rand(73862, 5632625),
            'user_id'            => Auth::id(),
            'client_id'          => Request::input('client_id'),
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

        $price = 0;
        $discount = 0;

        if (count($quotationDomains)) {
            $data = $quotation->domains()->attach($this->createArrayGroups($quotationDomains));
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
                'itemname'       => $option['itemname'],
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
//        }
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







        return Inertia::render('Modules/Quotation/NewShow',   [
            "info" => [
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
                'name' => $item->name ?? $item->itemname,
                'price' => $item->price,
                'discount' => $item->discount,
                'quantity' => $item->quantity ?? 1
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
            'total_pay'          => $totalPay,
            'last_payment'       => $quotationLastTransaction,
            'transactions'       => $transactions,

            'payment_methods'    => Method::all(),
            'payment_url'        => URL::route('saveQuotationTransaction'),
        ];

//        return view('invoice.quotation', compact('data'));
//        exit();

        $pdf = Pdf::loadView('invoice.quotation', compact('data'));

        return $pdf->download($data["quotation_owner"]["client"]["name"]."_".now()->format('d_m_Y')."_".'quotation.pdf');


    }



    public function editQuotation($id){
        $quot = Quotation::with('client')->findOrFail($id);


        $qWOrks = $quot->works;
        $works = Work::all(['id','name', 'price']);
        $editedWork = $works->map(function ($item) use($qWOrks){
            $isTrue = false;
            $data = null;
            foreach ($qWOrks as $work){
                if ($work->id == $item->id){
                    $isTrue = true;
                    $data = $work;
                    $data['p'] = true;
                    $data['quantity'] = $work->pivot->quantity;
                    $data['discount'] = $work->pivot->discount;
                    break;
                }
            }
            return $isTrue ? $data : $item;
        });

        $hostings = Hosting::all(['id','name', 'price']);
        $editHostings = $quot->hostings;
        $editedHostings = $hostings->map(function ($item) use($editHostings){
            $isTrue = false;
            $data = null;
            foreach ($editHostings as $eItem){
                if ($eItem->id == $item->id){
                    $isTrue = true;
                    $data = $eItem;
                    $data['p'] = true;
                    $data['quantity'] = $eItem->pivot->quantity;
                    $data['discount'] = $eItem->pivot->discount;
                    break;
                }
            }
            return $isTrue ? $data : $item;
        });

        $editedDomains = $quot->domains;
        $domains = Domain::all(['id','name', 'price']);
        $editedDomains = $domains->map(function ($item) use($editedDomains){
            $isTrue = false;
            $data = null;
            foreach ($editedDomains as $eItem){
                if ($eItem->id == $item->id){
                    $isTrue = true;
                    $data = $eItem;
                    $data['p'] = true;
                    $data['quantity'] = $eItem->pivot->quantity;
                    $data['discount'] = $eItem->pivot->discount;
                    break;
                }
            }
            return $isTrue ? $data : $item;
        });


        $packages = Design::all(['id','name', 'price']);
        $editPackages = $quot->packages;

        $editPackages = $packages->map(function ($item) use($editPackages){
            $isTrue = false;
            $data = null;
            foreach ($editPackages as $eItem){
                if ($eItem->id == $item->id){
                    $isTrue = true;
                    $data = $eItem;
                    $data['p'] = true;
                    $data['quantity'] = $eItem->pivot->quantity;
                    $data['discount'] = $eItem->pivot->discount;
                    break;
                }
            }
            return $isTrue ? $data : $item;
        });


        return Inertia::render('Modules/Quotation/EditQuot', [
            "clients"   => Client::all(['id','name']),
            "editable_works" => $editedWork,
            "edited_hosting" => $editedHostings,
            "edited_domains" => $editedDomains,
            "edit_packages" => $editPackages,
            "quotItems" => $quot->quotationItems,
            "quotDetails"      => $quot,
            "client"=> $quot->client,
            "update_url"=> URL::route('quotations.update', $id),
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

//        return Request::all();

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
            'status'             => filled(Request::input('status')),
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
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Quotation  $quotation
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy(Quotation $quotation)
    {
        $quotation->delete();
        return back();
    }



}
