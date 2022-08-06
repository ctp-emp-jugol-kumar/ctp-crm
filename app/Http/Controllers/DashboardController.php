<?php

namespace App\Http\Controllers;

use App\Models\Client;
use App\Models\CustomInvoice;
use App\Models\Design;
use App\Models\Domain;
use App\Models\Hosting;
use App\Models\Platform;
use App\Models\Project;
use App\Models\Quotation;
use App\Models\User;
use App\Models\Website;
use App\Models\Work;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;
use Spatie\Permission\Models\Role;

class DashboardController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Inertia\Response
     */
    public function __invoke(Request $request)
    {

//        Auth::user()->
//        return "ok";

//        return Auth::user()->getPermissionsViaRoles();


        return Inertia::render('Test', [
            "data" => [
                'clients' => Client::count(),
                'packages' => Design::count(),
                'domain' => Domain::count(),
                'hosting' => Hosting::count(),
                'cInvoice' => CustomInvoice::count(),
                'platforms' => Platform::count(),
                'projects' => Project::count(),
                'quotation' => Quotation::count(),
                'users' => User::count(),
                'website' => Website::count(),
                'work' => Work::count(),
            ]


        ]);
    }
}
