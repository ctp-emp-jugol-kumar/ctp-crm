<?php

namespace App\Http\Controllers;

use App\Models\Client;
use App\Models\CustomInvoice;
use App\Models\Project;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;
use Inertia\Inertia;

class ProjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function index()
    {
//        return  Project::query()
//            ->with(['client', 'client', 'users', 'users'])->get();

        return inertia('Projects/Index', [
            'projects' => Project::query()
                ->with(['client', 'client', 'users', 'users'])
                ->latest()
                ->when(Request::input('search'), function ($query, $search) {
                    $query
                    ->where('name', 'like', "%{$search}%")
                        ->orWhere('status', 'like', "%{$search}%")
                    ->orWhereHas('client', function ($client) use($search){
                        $client
                            ->where('name',    'like', "%{$search}%")
                            ->orWhere('phone', 'like', "%{$search}%")
                            ->orWhere('email', 'like', "%{$search}%")
                        ;
                    })
                    ->orWhereHas('user', function ($user) use($search){
                        $user->where('name', 'like', "%{$search}%");
                    })
                    ->orWhereHas('users', function ($developer) use($search){
                        $developer->where('name', 'like', "%{$search}%");
                    });
                })
                ->paginate(Request::input('perPage') ?? 10)
                ->withQueryString()
                ->through(fn($project) => [
                    'id'            => $project->id,
                    'project'       => $project,
                    'creator'       => $project->user ? $project->user->name : "asdfasdf",
                    'project_date'  => $project->date->format('d M Y'),
                    'start_date'    => $project->start->format('d M'),
                    'end_date'      => $project->end->format('d M Y'),
                    'create_at'     => $project->created_at->format('d M Y'),
                    "edit_url"      => URL::route('projects.edit', $project->id),
                    "show_url"      => URL::route('projects.show', $project->id),
                ]),
            'clients'  => Client::all(['id','name', 'email', 'phone']),
            'users'    => User::all(['id','name', 'email']),
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
     * @return array
     */

    public function createArrayGroups($items)
    {
        $added = array();
        foreach($items as $key=> $item){
            $added[$key] = [
                "user_id" => $item
            ];
        }
        return $added;
    }

    public function store(Request $request)
    {
        $filePath = "";

        if (Request::hasFile('files')) {
            $filePath = Request::file('files')->store('image', 'public');
        }

        $project = Project::create([
            "name"        => Request::input('name'),
            "user_id"     => Auth::id(),
            "client_id"   => Request::input('client_id'),
            "date"        => Request::input('date'),
            "start"       => Request::input('start_date'),
            "end"         => Request::input('end_date'),
            "description" => Request::input('project_details'),
            "credential"  => Request::input('credintials'),
            "status"      => Request::input('status'),
            "files"       => $filePath,
        ]);


        $project->clients()->sync(Request::all('client_id'));
        $agents            = Request::input('agents');
        if (count($agents)) {
            $project->users()->sync($this->createArrayGroups($agents));
        }


        return "saved";

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function show($id)
    {

        $project = Project::with(['user', 'users', 'clients', 'client'])->findOrFail($id);


        return inertia('Projects/Show', [
            "info" =>  $project,
            "dates" =>[
                "end_date" => $project->end->format("d M, y"),
                "start_date" => $project->start->format("d M, y"),
                "created_at" => $project->created_at->diffForHumans(),
            ]
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Database\Eloquent\Builder|\Illuminate\Database\Eloquent\Builder[]|\Illuminate\Database\Eloquent\Collection|\Illuminate\Database\Eloquent\Model
     */
    public function edit($id)
    {
        return Project::with(['user', 'users', 'clients', 'client'])->findOrFail($id);

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
        $project = Project::findOrFail($id);
        $filePath = "";

        if (Request::hasFile('files')) {
            $filePath = Request::file('files')->store('image', 'public');
            $project->files = $filePath;
            $project->save();
        }

        $project->update([
            "name"        => Request::input('name'),
            "user_id"     => Auth::id(),
            "client_id"   => Request::input('client_id'),
            "date"        => Request::input('date'),
            "start"       => Request::input('start_date'),
            "end"         => Request::input('end_date'),
            "description" => Request::input('project_details'),
            "credential"  => Request::input('credintials'),
            "status"      => Request::input('status'),
        ]);


        $project->clients()->sync(Request::all('client_id'));
        $agents = Request::input('agents');
        if (count($agents)) {
            $project->users()->sync($this->createArrayGroups($agents));
        }

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
