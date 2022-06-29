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

use http\Env\Response;
use Illuminate\Routing\Route;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;
use Inertia\Inertia;
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
        ->with(["client:id,name", "design:id,name,price", "domain:id,name,price", "hosting:id,name,price", "user:id,name", "works", "quotationItems"])
        ->when(Request::input('search'), function ($query, $search) {
            $query->where('email', 'like', "%{$search}%");
        })
        ->paginate(Request::input('perPage') ?? 10)
        ->withQueryString()
        ->through(fn($qot) => [
            "id"         => $qot->id,
            "totalPrice" => $qot->getTotalAmountAttribute(),
            "subject" => $qot->subject,
            "status" => $qot->status,
            "date" => $qot->date,
            "client_name" => $qot->client->name,
            "design" => $qot->design->name,
            "domain" => $qot->domain->name,
            "hosting" => $qot->hosting->name,
            "user_name" => $qot->user->name,
        ]);

        return inertia('Modules/Quotation/Index', [
            'quotations' => $quotation,
            'filters' => Request::only(['search','perPage']),
            'url' => URL::route('quotations.index'),
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
//        if (!isEmpty($quatationsOptoin)){
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
    public function show(Quotation $quotation)
    {
        return Inertia::render('Modules/Quotation/Show', [
            'quotation' => $quotation->with(['client', 'domain', 'hosting', 'quotationItems', 'works'])->first(),
            'others_info' => [
                'quot_id' =>$quotation->created_at->format('Ymd').$quotation->id,
                'creator' => $quotation->user,
                "created" => $quotation->created_at->format('D, d F, Y'),
                "validated" => $quotation->valid_until->format('D, d F, Y'),
//                "content " => {!! nl2br($data->additional) !!}
            ]
        ]);

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
