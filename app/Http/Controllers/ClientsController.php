<?php

namespace App\Http\Controllers;

use App\Http\Requests\ClientRequest;
use App\Models\Client;
use App\Models\User;
use Illuminate\Support\Facades\Request;
use Inertia\Response;
use mysql_xdevapi\Exception;


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
            'clients' => Client::query()
                ->when(Request::input('search'), function ($query, $search) {
                    $query->where('email', 'like', "%{$search}%");
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
                    'address' => $client->address,
                    'note' => $client->note,
                    'created_at' => $client->created_at->format('d M Y'),
                ]),
            'users' => User::all(),
            'filters' => Request::only(['search','perPage'])
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
     * @return \Illuminate\Http\Response
     */
    public function show($id)
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
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        Client::findOrFail($id)->delete();
        return redirect()->route('clients.index');
    }
}
