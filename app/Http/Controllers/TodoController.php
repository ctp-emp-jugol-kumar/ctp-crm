<?php

namespace App\Http\Controllers;

use App\Models\Todo;
use App\Models\User;
use App\Notifications\TodoNotefication;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Notification;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\URL;
use Inertia\Inertia;

class TodoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Inertia\Response|\Inertia\ResponseFactory
     */
    public function index()
    {
        $notifications = auth()->user()->notifications()->latest()->paginate(10);
//        return $notifications;
//        $my_array = array('sheldon', 'leonard', 'howard', 'penny');
//        $to_remove = array('howard');
//        $result = array_diff($my_array, $to_remove);
//        return $result;

//        return $notifications;

        $todos = Todo::with('user')->latest()->get();
        $myTodos = Todo::with('user')->where('user_id', Auth::id())->latest()->get();
        $comTodos = Todo::with('user')->where('priority',  '=', 'Complete')->latest()->get();
        return inertia('Todo/Index',[
            'users' =>  User::where('id', '!=', Auth::id())->get(),
            'todos' => $todos,
            'myTodos' => $myTodos,
            'comTodos' => $comTodos,
            'main_url' => URL::route('todos.index'),
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

        Request::validate([
            'title' => 'required',
            'users' => 'required',
        ]);

        if (Request::input('date')){
            Request::validate([
                'date' => 'date'
            ]);
        }


        $path = null;
        if (Request::hasFile('attachment')) {
            $fileName = Request::file('attachment')->getClientOriginalName();
            $path = Storage::putFileAs('public/todos', Request::file('attachment'), $fileName);
        }

        $todo = Todo::create([
           'title' => Request::input('title'),
           'users' => json_encode(Request::input('users')),
           'date' => Request::input('date') ? date('d-m-Y', strtotime(Request::input('date'))) : now()->format('d-y-m'),
           'about_todo' => Request::input('aboutTodo'),
           'file' => $path,
           'user_id' => Auth::id(),
           'priority' => Request::input('priority') ?? 'Normal',
        ]);

        $ids = array_filter(json_decode($todo->users), function($value) { return $value !== Auth::id(); });
        $users = User::whereIn('id', $ids)->get();

        Notification::send($users, new TodoNotefication($todo));

        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function show($id)
    {
        $todo = Todo::findOrFail($id);
        if (Request::input('complete') == 'true'){
            $todo->priority = 'Complete';
            $todo->update();
            return back();
        }

        if (Request::input('show_data') == 'true'){
            return $todo;
        }
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
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        $todo = Todo::findOrFail($id);
        if($todo->file && Storage::exists($todo->file)){
            Storage::delete($todo->file);
        }
        $todo->delete();
        return back();
    }
}
