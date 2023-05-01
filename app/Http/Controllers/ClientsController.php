<?php

namespace App\Http\Controllers;

use App\Http\Requests\ClientRequest;
use App\Http\Requests\UpdateClient;
use App\Models\Client;
use App\Models\User;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;
use Illuminate\Validation\Rule;


class ClientsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function index()
    {
        if (!auth()->user()->can('client.index')){
            abort(404);
        }

        return inertia('Modules/Clients/Index', [
            $search = Request::input('search'),
            'clients' => Client::query()
                ->with('projects')
                ->where('status', '=', 'Converted to Customer')
                ->latest()
                ->when(Request::input('search'), function ($query, $search) {
                    $query
                        ->where('email', 'like', "%{$search}%")
                          ->orWhere('name', 'like', "%{$search}%")
                          ->orWhere('company', 'like', "%{$search}%")
                          ->orWhere('secondary_email', 'like', "%{$search}%")
                          ->orWhere('secondary_phone', 'like', "%{$search}%")
                          ->orWhere('address', 'like', "%{$search}%")
                          ->orWhere('phone', 'like', "%{$search}%")

                        ->orWhereHas('projects', function ($developer) use($search){
                            $developer->where('name', 'like', "%{$search}%")
                            ->orWhere('description', 'like', "%{$search}");
                        });
                    ;
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
                ->latest()
                ->paginate(Request::input('perPage') ?? 10)
                ->withQueryString()
                ->through(fn($client) => [
                    'id' => $client->id,
                    'name' => $client->name,
                    'phone' => $client->phone,
                    'secondary_phone' => $client->secondary_phone,
                    'email' => $client->email,
                    'secondary_email' => $client->secondary_email,
                    'company' => $client->company,
                    'photo' => '/images/avatar.png',
                    'address' => $client->address,
                    'note' => $client->note,
                    'created_at' => $client->created_at->format('d M Y'),
                    'show_url' => URL::route('clients.show', $client->id),
                ]),
            'users' => User::all(),
            'filters' => Request::only(['search','perPage', 'dateRange']),
            "main_url" => Url::route('clients.index'),
        ]);


    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(ClientRequest $request)
    {
        if (!auth()->user()->can('client.create') || !auth()->user()->can('leads.create')) {
            abort(401 );
        }

       $data = $request->validate([
            "name" => ['required'],
            "email" => ['required', 'email', Rule::unique('clients', 'email')],
            "secondary_email" => ['nullable','email'],
            "phone" => ['required', 'regex:/(^([+]{1}[8]{2}|0088)?(01){1}[3-9]{1}\d{8})$/'],
            "secondary_phone" => ['nullable','regex:/(^([+]{1}[8]{2}|0088)?(01){1}[3-9]{1}\d{8})$/'],
            "company" => ['nullable'],
            "address" => ['nullable', 'max:150'],
            "note" => ['nullable'],
            "status" => ['nullable'],
            "agents" => ['nullable']
       ]);

       $data['status'] = $request->status["name"];

       $client = Client::create($data);
       if ($request->agents){
            $client->users()->attach($request->input('agents'));
       }
       return back();
//        return redirect()->route('clients.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function show($id)
    {
        if (!auth()->user()->can('client.show') || !auth()->user()->can('leads.show')) {
            abort(401 );
        }

        $user = Client::findOrFail($id)->load('users','transactions','transactions.receivedBy',
            'transactions.method',
            'quotations','quotations.user', 'projects',
            'projects.users');


        if(Request::input('edit')){
            return $user;
        }


        return inertia('Modules/Clients/Show', [
            "user" => $user,
            'image' => "/images/avatar.png",
            'show_url' => URL::route('clients.show', $user->id),
        ]);
    }

    public function edit($id){
        return $id;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param ClientRequest $request
     * @param Client $client
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateClient $request, Client $client)
    {
        if (!auth()->user()->can('client.edit') || !auth()->user()->can('leads.edit')) {
            abort(401 );
        }

        $data = $request->validated();

        if(is_array(Request::input('status'))){
            $data['status'] = $request->status["name"];
        }else{
            $data['status'] = $request->status;
        }

        $agents = [];
        foreach (Request::input("agents") as $item){
            if (is_int($item)){
                $agents[] = $item;
            }else{
                $agents[] = $item["id"];
            }
        }

        $client->update($data);
        $client->users()->sync($agents);

//        if ($request->agents){
//            $client->users()->sync($request->input('agents'));
//        }
        return back();
//        return redirect()->route('clients.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        if (!auth()->user()->can('client.delete') || !auth()->user()->can('leads.delete')) {
            abort(401 );
        }

        Client::findOrFail($id)->delete();
        return back();
//        return redirect()->route('clients.index');
    }
}
