<?php

namespace App\Http\Controllers;

use App\Models\Note;
use App\Models\NoteCategory;
use App\Models\User;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;
use Mockery\Matcher\Not;

class NoteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function index()
    {
        return inertia('Modules/Notes/Notes', [
            $search = Request::input('search'),
            'notes' => Note::query()
                ->with('noteCategory')
                ->when(Request::input('search'), function ($query, $search) {
                    $query
                        ->where('title', 'like', "%{$search}%")
                        ->orWhereHas('notes', function ($developer) use($search){
                            $developer->where('title', 'like', "%{$search}%");
                        });
                })
                ->latest()
                ->paginate(Request::input('perPage') ?? 10)
                ->withQueryString()
                ->through(fn($note) => [
                    'id' => $note->id,
                    'title' => $note->title,
                    'notes_cat' => $note->noteCategory,
                    'created_at' => $note->created_at->format('d M Y'),
                    'show_url' => URL::route('notes.show', $note->id),
                ]),
            'filters' => Request::only(['search','perPage', 'dateRange']),
            "main_url" => Url::route('notes.index'),
            "users" => User::all(),
            "categories" => NoteCategory::all(),
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
    public function store(Request $request)
    {
        $data = Request::validate([
            "title" =>  "required",
            "notes" => "required",
            "category" => "required|integer",
            "agents" => "nullable|array"
        ]);
        $note = Note::create([
            'title' => Request::input('title'),
            'note_category_id' => Request::input('category'),
            'notes' => Request::input('notes'),
            'status' => filled(Request::input('status'))
        ]);
        $note->users()->attach(Request::input('agents'));
        return back();

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Note  $note
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function show($id)
    {

        $note = Note::with(["noteCategory", "users"])->findOrFail($id);
        if(Request::input("satus") === 'edit'){
            return inertia('Modules/Notes/Edit', [
                "note" => $note
            ]);
        }else{
            return inertia('Modules/Notes/Show', [
                'note' => $note
            ]);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Note  $note
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
     * @param  \App\Models\Note  $note
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Note $note)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Note  $note
     * @return \Illuminate\Http\Response
     */
    public function destroy(Note $note)
    {
        //
    }
}
