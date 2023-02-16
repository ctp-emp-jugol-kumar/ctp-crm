<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;
use Spatie\Permission\Models\Role;


class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function index()
    {
        if (!auth()->user()->can('user.index')){
            abort(404);
        }

        return inertia('Modules/Admin/Index', [
            'users' => User::query()
                ->when(Request::input('search'), function ($query, $search) {
                    $query->where('email', 'like', "%{$search}%");
                })
                ->paginate(Request::input('perPage') ?? 10)
                ->withQueryString()
                ->through(fn($user) => [
                    'id' => $user->id,
                    'name' => $user->name,
                    'email' => $user->email,
                    'photo' => $user->photo,
                    'active_on' => $user->created_at->format('d M Y'),
                    'roles' => $user->getRoleNames(),
                    'show_url' => URL::route('users.show', $user->id),
                ]),
            'filters' => Request::only(['search','perPage']),
            'roles'=> Role::all(['id','name']),
        ]);


    }

    public function create(){
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        if (!auth()->user()->can('user.create')){
            abort(404);
        }
        $image_path = "";
        if (Request::hasFile('photo')){
            $image_path = Request::file('photo')->store('image', 'public');
        }

        User::create([
            'name' => Request::input('name'),
            'email' => Request::input('email'),
            'password' => bcrypt(Request::input('password')),
            'photo' => $image_path,
        ])->assignRole(Request::input('roles_name'));

        return Redirect::route('users.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function show($id)
    {
        if (!auth()->user()->can('user.show')){
            abort(404);
        }
        $user = User::findOrFail($id)->load('invoices', 'projects', 'roles');
        return inertia('Modules/Admin/Show', [
            "user" => $user,
        ]);
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
