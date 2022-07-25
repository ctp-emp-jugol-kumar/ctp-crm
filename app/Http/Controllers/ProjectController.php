<?php

namespace App\Http\Controllers;

use App\Models\Client;
use App\Models\CustomInvoice;
use App\Models\Project;
use App\Models\User;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;

class ProjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function index()
    {

        return inertia('Modules/Projects/Index', [
            'projects' => Project::query()
                ->when(Request::input('search'), function ($query, $search) {
                    $query->where('name', 'like', "%{$search}%")
//                        ->orWhereHas('client', function ($client) use($search){
//                            $client->where('name', 'like', "%{$search}%");
//                        })
//                        ->orWhereHas('user', function ($user) use($search){
//                            $user->where('name', 'like', "%{$search}%");
//                        })
//                        ->orWhereHas('invoiceItems', function ($projectItem) use($search){
//                            $projectItem->where('item_name', 'like', "%{$search}%");
//                        })
                    ;
                })
                ->paginate(Request::input('perPage') ?? 10)
                ->withQueryString()
                ->through(fn($project) => [
                    'id'            => $project->id,
                    'creator'       => $project->user->name,
                    'project_date'  => $project->date->format('d M Y'),
                    'start_date'    => $project->start->format('d M Y'),
                    'end_date'      => $project->end->format('d M Y'),
                    "edit_url"      => URL::route('projects.edit', $project->id),
                ]),
            'clients'  => Client::all(['id','name']),
            'users'    => User::all(['id','name']),
            'filters'  => Request::only(['search','perPage']),
            'main_url' => URL::route('projects.index'),
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
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
