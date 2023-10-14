<?php

namespace App\Http\Controllers;

use App\Models\Platform;
use App\Models\Searvice;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;
use function Ramsey\Collection\Map\toArray;

class SearviceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function index()
    {
//        return Searvice::query()->get()->map(function ($item){
//           return json_decode(($item->platforms));
//        });

        return inertia('Services/Index',[
            'services' => Searvice::query()
                ->paginate(Request::input('perPage') ?? 16)
                ->withQueryString()
                ->through(fn($service) => [
                    'id' => $service->id,
                    'name' => $service->service_name,
                    'platforms' => Platform::whereIn('id', json_decode($service->platforms))->get(),
                    'created_at' => $service->created_at->format('d M Y'),
                    'edit_url' =>  URL::route('services.edit', $service->id)
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
            'platforms' => json_encode(Request::input('platforms'))
        ]);
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Searvice  $searvice
     * @return \Illuminate\Http\Response
     */
    public function show(Searvice $searvice)
    {
        //
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
        $service->delete();
        return back();
    }
}
