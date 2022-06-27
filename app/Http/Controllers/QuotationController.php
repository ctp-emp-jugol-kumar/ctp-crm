<?php

namespace App\Http\Controllers;

use App\Http\Requests\ServicesRequest;
use App\Models\Client;
use App\Models\Design;
use App\Models\Domain;
use App\Models\Hosting;
use App\Models\Platform;
use App\Models\Quotation;
use App\Models\QuotationItem;
use App\Models\Website;
use App\Models\Work;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request;
use Inertia\Inertia;

class QuotationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function index()
    {

        return inertia('Modules/Quotation/Index', [
            'users' => Quotation::query()
                ->when(Request::input('search'), function ($query, $search) {
                    $query->where('email', 'like', "%{$search}%");
                })
                ->paginate(Request::input('perPage') ?? 10)
                ->withQueryString()
                ->through(fn($client) => [
                    'id' => $client->id,
                    'name' => $client->name,
                    'price' => $client->price,
                    'description' => $client->description,
                    'created_at' => $client->created_at->format('d M Y'),
                ]),
            'filters' => Request::only(['search','perPage'])
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
            "works"      => Work::all(['id','name', 'price']),
        ]);
    }


    /**
     * Store a newly created resource in storage.
     *
     */
    public function store(Request $request)
    {
//        foreach (Request::all() as $item){
//            QuotationItem::create($item);
//        }
//
//        return Request::all();

        $works = Request::input('woarks');


        $data = Request::all();

        $data['user_id'] = Auth::id();


        $quotation = Quotation::create([
            'user_id' => Auth::id(),
            'client_id' => Request::input('client_id'),
            'subject' => Request::input('subject'),
            'valid_until' => Request::input('valid_until'),
            'website_id' => Request::input('website_id'),
            'platform_id' => Request::input('platform_id'),
            'design_id' => Request::input('design_id'),
            'domain_id' => Request::input('domain_id'),
            'hosting_id' => Request::input('hosting_id'),
            'page' => Request::input('page'),
            'page_price' => Request::input('page_price'),
            'content_page' => Request::input('content_page'),
            'content_price' => Request::input('content_price'),
            'payment_policy' => Request::input('payment_policy'),
            'terms_of_service' => Request::input('terms_of_service'),
            'date' => Request::input('date'),
        ]);
        $workdata = [];
        foreach ($works as $work){
            $workdata[] =[
                'quotation_id'=> $quotation->id,
                'work_id' => $work,
            ];
        }
        $quotation->works('quotation_work')->attach($workdata);
//        return $workdata;


//        if ($works != null){
//            return $works;
//            exit();
//            return "ok";
//        }

        $quotations = Request::input('quatations');


        $quatationsOptoin = [];
        foreach ($quotations as $option){
            $quatationsOptoin[] =[
                'quotation_id' => $quotation->id,
                'itemname'     => $option['itemname'],
                'cost'         => $option['cost'],
                'quantity'     => $option['quantity']
            ];
        }
//        return $quatationsOptoin;

        $quotation->quotationItems()->createMany($quatationsOptoin);
//        QuotationItem::insert($quotation);
        return redirect()->route('quotations.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Quotation  $quotation
     * @return \Illuminate\Http\Response
     */
    public function show(Quotation $quotation)
    {
        //
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
        //
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
