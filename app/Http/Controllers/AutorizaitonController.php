<?php

namespace App\Http\Controllers;

use App\Models\Module;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Str;
use NumberToWords\Language\Persian\PersianConverter;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class AutorizaitonController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function index()
    {
//        return Role::with(["users"])->withCount("users")->get();


        return inertia('Modules/Roles/Index', [
            'permissions' => Permission::with(['roles', 'users'])->get()->groupBy('module_name'),
            'all_permissions' => Permission::with("roles", "users")->get(),
            'roles'       => Role::with(["users"])->withCount("users")->get(),
            'can'         => null,
            'create_url'  => URL::route('authorizations.store')
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
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store()
    {
        Request::validate([
           'roleName' => 'required|unique:roles,name',
           'selectedPermissions' => 'required'
        ]);

        $role = Role::create(['name' => Request::input('roleName')]);

        foreach (Request::input('selectedPermissions') as $permission) {
            $role->givePermissionTo($permission);
        };

        return back();



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
