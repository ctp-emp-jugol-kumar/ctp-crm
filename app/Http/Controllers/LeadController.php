<?php

namespace App\Http\Controllers;

use App\Models\Client;
use App\Models\User;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;

class LeadController extends Controller
{
    public function index(){
        if (!auth()->user()->can('client.index')){
            abort(404);
        }
        return inertia('Modules/Leads/Index', [
            $search = Request::input('search'),
            'clients' => Client::query()->with('projects')->where('status', '!=', 'Converted to Customer')
                ->when(Request::input('search'), function ($query, $search) {
                    $query
                        ->where('email', 'like', "%{$search}%")
                        ->orWhere('name', 'like', "%{$search}%")
                        ->orWhere('address', 'like', "%{$search}%")
                        ->orWhere('phone', 'like', "%{$search}%")
                    ;
                })
                ->when(Request::input('byStatus'), function ($query, $search){
                    $query->where('status', $search);
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
                    'email' => $client->email,
                    'status' => $client->status,
                    'created_at' => $client->created_at->format('d M Y'),
                ]),
            'users' => User::all(),
            'filters'     => Request::only(['search','perPage', 'byStatus', 'dateRange']),
            "main_url" => Url::route('leads.index'),
        ]);

    }
}
