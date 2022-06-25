<?php

namespace App\Http\Controllers;

use App\Http\Requests\ServicesRequest;
use App\Models\Design;
use App\Models\Website;
use App\Models\Work;
use Illuminate\Support\Facades\Request;


class WebsiteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function index()
    {

        return inertia('Modules/Services/Index', [
            'users' => Website::query()
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
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(ServicesRequest $request)
    {
        Website::create($request->validated());
        return redirect()->route('services.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Design  $design
     * @return \Illuminate\Http\Response
     */
    public function show(Website $design)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Design  $design
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Website $design)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Website $website
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {

        Website::findOrFail($id)->delete();
        return redirect()->route('services.index');
    }
}
