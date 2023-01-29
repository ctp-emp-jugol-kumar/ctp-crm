<?php

namespace App\Http\Controllers;

use App\Http\Requests\ClientRequest;
use App\Http\Requests\UpdateClient;
use App\Models\Client;
use App\Models\User;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;


class ClientsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function index()
    {
        return inertia('Modules/Clients/Index', [
            $search = Request::input('search'),
            'clients' => Client::query()
                ->when(Request::input('search'), function ($query, $search) {
                    $query->where('email', 'like', "%{$search}%")
                          ->orWhere('name', 'like', "%{$search}%")
                          ->orWhere('company', 'like', "%{$search}%")
                          ->orWhere('secondary_email', 'like', "%{$search}%")
                          ->orWhere('secondary_phone', 'like', "%{$search}%")
                          ->orWhere('address', 'like', "%{$search}%")
                          ->orWhere('phone', 'like', "%{$search}%");
                })
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
                    'photo' => $client->photo,
                    'address' => $client->address,
                    'note' => $client->note,
                    'created_at' => $client->created_at->format('d M Y'),
                    'show_url' => URL::route('clients.show', $client->id),
                ]),
            'users' => User::all(),
            'filters' => Request::only(['search','perPage']),
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
        try {
            $client = Client::create($request->validated());

            if ($request->agents){
                $client->users()->attach($request->input('agents'));
            }
            return redirect()->route('clients.index');
        }catch (\Exception $e){
            return redirect()->route('clients.index');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function show($id)
    {
        $user = Client::findOrFail($id)->load('transactions', 'customeInvoices', 'quotations', 'projects');
        $user['photo'] = "/images/avatar.png";

        return inertia('Modules/Clients/Show', [
            "user" => $user,
            'image' => "/images/avatar.png"
        ]);
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
        $client->update($request->validated());
        return redirect()->route('clients.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        Client::findOrFail($id)->delete();
        return redirect()->route('clients.index');
    }
}
