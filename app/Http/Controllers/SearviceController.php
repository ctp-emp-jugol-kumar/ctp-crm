<?php

namespace App\Http\Controllers;

use App\Http\Requests\DomainRequest;
use App\Models\Platform;
use App\Models\Searvice;
use App\Models\ServiceFeature;
use App\Models\ServicePackage;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;
use Inertia\Response;
use Inertia\ResponseFactory;
use function Ramsey\Collection\Map\toArray;

class SearviceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response|ResponseFactory
     */
    public function index()
    {

        return inertia('Services/Index',[
            'services' => Searvice::query()
                ->when(Request::input('search'), function ($query, $search) {
                    $query->where('service_name', 'like', "%{$search}%");
                })
                ->oldest('position')
                ->paginate(Request::input('perPage') ?? 16)
                ->withQueryString()
                ->through(fn($service) => [
                    'id' => $service->id,
                    'name' => $service->service_name,
                    'position' => $service->position,
                    'platforms' => Platform::whereIn('id', json_decode($service->platforms))->get(),
                    'created_at' => $service->created_at->format('d M Y'),
                    'edit_url' =>  URL::route('services.edit', $service->id),
                    'show_url' => URL::route('services.show', $service->id)
                ]),
            'filters' => Request::only(['search','perPage']),
            "platforms" => Platform::all(),//->get(),
            'main_url' => URL::route('services.index')
        ]);
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
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store()
    {
        Request::validate([
            'serviceName' => 'required|unique:searvices,service_name'
        ]);

        Searvice::create([
            'service_name' => Request::input('serviceName'),
            'position'=> Request::input('serviceOrder') ?? 0,
            'platforms' => json_encode(Request::input('platforms'))
        ]);
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param $id
     * @return Response|ResponseFactory
     */
    public function show($id)
    {
        $service = Searvice::with([
            'packages'=>fn($query)=>$query->oldest('position'),
            'features'=>fn($query)=>$query->oldest('position')
        ])->findOrFail($id);

        return inertia('Services/Show',[
            'service' => $service,
            'save_packages' => URL::route('createPackage'),
            'save_feature' => URL::route('createFeature'),
            'main_url' => URL::route('services.index')
        ]);
    }

    /**
     * Show the form for editing the specified resource. c
     *
     * @param  \App\Models\Searvice  $searvice
     * @return Searvice
     */
    public function edit($id)
    {
        $service = Searvice::findOrFail($id);
        return $service;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Searvice  $searvice
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request, $id)
    {
        Request::validate([
            'serviceName' => 'required|unique:searvices,service_name,'.$id
        ]);

        $service = Searvice::findOrFail(Request::input('serviceId'));
        $service->update([
            'service_name' => Request::input('serviceName'),
            'position'=> Request::input('serviceOrder') ?? 0,
            'platforms' => json_encode(Request::input('platforms'))
        ]);
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Searvice  $searvice
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        $service = Searvice::findOrFail($id);
        $service->features->each->delete();
        $service->packages->each->delete();

        $service->delete();
        return back();

    }


    public function createPackage()
    {
        $data = Request::validate([
            'serviceId' => 'required',
            'name' => 'required',
            'price' => 'required',
            'descriptions' => 'required'
        ]);

        $data['service_id'] = Request::input('serviceId');
        $data['position'] = Request::input('position') ?? 0;

        ServicePackage::create($data);
        return back();
    }

    public function editPackage($id){
        return ServicePackage::findOrFail($id);
    }

    public function updatePackage($id){
        $data = Request::validate([
            'serviceId' => 'required',
            'name' => 'required',
            'price' => 'required',
            'descriptions' => 'required'
        ]);
        $data['service_id'] = Request::input('serviceId');
        $data['position'] = Request::input('position') ?? 0;
        ServicePackage::findOrFail($id)->update($data);
        return back();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param ServicePackage $servicePackage
     * @return RedirectResponse
     */
    public function deletePackage($id){
        ServicePackage::findOrFail($id)->delete();
        return back();
    }




    public function createFeature()
    {

        $data = Request::validate([
            'serviceId' => 'required',
            'name' => 'required',
            'price' => 'required',
        ]);

        $data['service_id'] = Request::input('serviceId');
        $data['position'] = Request::input('position') ?? 0;

        ServiceFeature::create($data);
        return back();
    }

    public function editFeature($id){
        return ServiceFeature::findOrFail($id);
    }

    public function updateFeature($id){
        $data = Request::validate([
            'serviceId' => 'required',
            'name' => 'required',
            'price' => 'required',
        ]);
        $data['service_id'] = Request::input('serviceId');
        $data['position'] = Request::input('position') ?? 0;

        ServiceFeature::findOrFail($id)->update($data);
        return back();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param ServicePackage $servicePackage
     * @return RedirectResponse
     */
    public function deleteFeature($id){
        ServiceFeature::findOrFail($id)->delete();
        return back();
    }




}
