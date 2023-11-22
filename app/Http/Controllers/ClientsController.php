<?php

namespace App\Http\Controllers;

use App\Http\Requests\ClientRequest;
use App\Http\Requests\UpdateClient;
use App\Models\Client;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
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


//        if (!auth()->user()->can('client.index')){
//            abort(404);
//        }
        $names = array_column(Auth::user()->roles->toArray(), 'name');
        $admin = in_array('Administrator', $names);
        return inertia('Modules/Clients/Index', [
            $search = Request::input('search'),
            'clients' => Client::query()->with(['projects', 'users', 'createdBy', 'updatedBy'])
                    ->latest()
                    ->with('projects', 'users')
                    ->where('status', '==', 'Converted to Customer')
                    ->orWhere('is_client', true)
                    ->when(!$admin, function ($query){
                        $query->whereHas('users',function($user){
                            $user->where('user_id', Auth::id());
                        });
                    })


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
                    'users' => $client->users,
                    'status' => $client->status,
                    'note' => $client->note,
                    'created_at' => $client->created_at->format('d M Y'),
                    'createdBy' => $client->createdBy,
                    'updatedBy' => $client->updatedBy,
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
    public function store()
    {



//        return dd(!auth()->user()->can('client.create'));
//
//        if (!auth()->user()->can('leads.create')) {
//            abort(401 );
//        }
//
//        if (!auth()->user()->can('client.create')) {
//            abort(401 );
//        }

        $data = Request::validate([
            "name" => ['nullable'],
            "email" => ['nullable', 'email'],
            "secondary_email" => ['nullable','email'],
            "phone" => ['required'],
            "secondary_phone" => ['nullable'],
            "company" => ['nullable'],
            "address" => ['nullable', 'max:150'],
            "note" => ['nullable'],
            "status" => ['required'],
            "agents" => ['nullable']
        ]);

//

       $data['status'] = Request::input("status")["name"];
       if (Request::input('status') == 'Converted to Customer' || Request::input('create') == 'true'){
           $data['is_client'] = true;
       }
        $data['created_by'] = Auth::id();



//        $admis = User::whereHas('roles', function($role){
//            return $role->where('name', 'Administrator');
//        })->pluck('id');


        $client = Client::create($data);
       if (Request::input('agents') != null){
//           $ids = array_unique([...Request::input('agents'), ...$admis]);
           $client->users()->attach(Request::input('agents'));
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

//        if (!auth()->user()->can('client.show') || !auth()->user()->can('leads.show')) {
//            abort(401 );
//        }

        $user = Client::findOrFail($id)->load('users','transactions','transactions.receivedBy',
            'invoices','invoices.user',
            'transactions.method',
            'quotations','quotations.user', 'projects',
            'projects.users', 'createdBy', 'updatedBy');


        if(Request::input('edit')){
            return $user;
        }


        return inertia('Modules/Clients/Show', [
            "user" => $user,
            'users' => User::all(),
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
    public function update(Client $client)
    {
//        if (!auth()->user()->can('client.edit') || !auth()->user()->can('leads.edit')) {
//            abort(401 );
//        }

        if(Request::input('status') == 'Follow Up'){
            Request::validate([
                'followDate' => 'required'
            ]);
            if (Request::input('isClient')){
                $client->is_client = true;
            }else{
                $client->is_client = false;
            }

            $client->status = Request::input('status');
            $client->follow_up = date('Y-m-d H:i:s', strtotime(Request::input('followDate')));
            $client->save();
            return back();
        }else{
            $data = Request::validate([
                "name" => ['nullable'],
                "email" => ['nullable', 'email'],
                "secondary_email" => ['nullable','email'],
                "phone" => ['required'],
                "secondary_phone" => ['nullable'],
                "company" => ['nullable'],
                "address" => ['nullable', 'max:150'],
                "note" => ['nullable'],
                "status" => ['required'],
                "agents" => ['nullable']
            ]);


            if(is_array(Request::input('status'))){
                $data['status'] = Request::input('status')["name"];
            }else{
                $data['status'] = Request::input('status');
            }

            if ($data['status'] == 'Converted to Customer'){
                $data['is_client'] = true;
            }

            $agents = [];
            if (Request::input('agents') != null){
                foreach (Request::input("agents") as $item){
                    if (is_int($item)){
                        $agents[] = $item;
                    }else{
                        $agents[] = $item["id"];
                    }
                }
            }

            $data['follow_up'] = null;


            $data['updated_by'] = Auth::id();

//            return $data;

            $client->update($data);
            $client->users()->sync($agents);
        }


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
//        if (!auth()->user()->can('client.delete') || !auth()->user()->can('leads.delete')) {
//            abort(401 );
//        }

        $client = Client::findOrFail($id);

        $client->delete();



/*
        $invoices = $client->invoices;

        return $invoices;
        if ($invoices){
            foreach ($invoices as $invoice) {
                $transactions = $invoice->transactions;
                if ($transactions){
                    foreach ($transactions as $transaction) {
                        $transaction->delete();
                    }
                }
                if($invoice->project){
                    $invoice->project->delete();
                }
                $invoice->delete();
            }
        }*/


//        $client->delete();
        return back();
    }
}
