<?php

namespace App\Http\Controllers;

use App\Models\Exapnse;
use App\Models\User;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;


class ExpanceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function index()
    {

        return inertia('Modules/Expanse/Index', [
            $search = Request::input('search'),
            'expanses' => Exapnse::query()
                ->when(Request::input('search'), function ($query, $search) {
                    $query->where('name', 'like', "%{$search}%");
                })->latest()
                ->paginate(Request::input('perPage') ?? 10)
                ->withQueryString()
                ->through(fn($expance) => [
                    'id' => $expance->id,
                    'name' => $expance->name,
                    'created_at' => $expance->created_at->format('d M Y'),
                    'show_url' => URL::route('expense.show', $expance->id),
                ]),
            'users' => User::all(),
            'filters' => Request::only(['search','perPage']),
            "main_url" => Url::route('expense.index'),
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
     * @param  \App\Models\expanse  $expance
     * @return \Illuminate\Http\Response
     */
    public function show(expanse $expance)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\expanse  $expance
     * @return \Illuminate\Http\Response
     */
    public function edit(expanse $expance)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\expanse  $expance
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, expanse $expance)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\expanse  $expance
     * @return \Illuminate\Http\Response
     */
    public function destroy(expanse $expance)
    {
        //
    }

    public function resizeImagePost(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $image = $request->file('image');
        $input['imagename'] = time().'.'.$image->getClientOriginalExtension();

        $destinationPath = public_path('/thumbnail');
        $img = Image::make($image->getRealPath());
        $img->resize(100, 100, function ($constraint) {
            $constraint->aspectRatio();
        })->save($destinationPath.'/'.$input['imagename']);

        $destinationPath = public_path('/images');
        $image->move($destinationPath, $input['imagename']);

        $this->postImage->add($input);

        return back()
            ->with('success','Image Upload successful')
            ->with('imageName',$input['imagename']);
    }
}
