<?php

namespace App\Http\Controllers;

use App\Models\Package;
use App\Models\Platform;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;

class PackageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function index()
    {
        return inertia('Package/Index', [
            'packages' => Package::query()
                ->with('platform')
                ->when(Request::input('search'), function ($query, $search) {
                    $query->where('name', 'like', "%{$search}%");
                })
                ->paginate(Request::input('perPage') ?? 10)
                ->withQueryString()
                ->through(fn($package) => [
                    'id' => $package->id,
                    'name' => $package->name,
                    'price' => $package->price,
                    'platform' => $package->platform,
                    'description' => nl2br($package->descriptions),
                    'created_at' => $package->created_at->format('d M Y'),
                    'show_url' => URL::route('package.show', $package->id),
                ]),
            'filters' => Request::only(['search','perPage']),
            'main_url' => URL::route('package.index'),
        ]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function create()
    {
        $platforms = Platform::all()->map(function($platform){
            $platform->featureds = json_decode($platform->featureds);
            return $platform;
        });

        return inertia('Package/Create', [
            'platforms' => $platforms,
            'main_url' => URL::route('package.index')
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store()
    {
        Package::create([
            'platform_id' => Request::input('platformId'),
            'name' => Request::input('name'),
            'price' => Request::input('price'),
            'descriptions' => Request::input('descriptions')
        ]);

        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Package  $package
     * @return \Illuminate\Http\Response
     */
    public function show(Package $package)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Package  $package
     * @return \Illuminate\Http\Response
     */
    public function edit(Package $package)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Package  $package
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Package $package)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Package  $package
     * @return \Illuminate\Http\Response
     */
    public function destroy(Package $package)
    {
        //
    }
}
