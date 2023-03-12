<?php

namespace App\Http\Controllers;

use App\Models\Expanse;
use App\Models\Method;
use App\Models\Purpose;
use App\Models\Transaction;
use App\Models\TransactionLine;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Storage;
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
            'expanses' => Expanse::query()->with(['purpse', 'user','method'])
                ->when(Request::input('search'), function ($query, $search) {
                    $query->where('subject', 'like', "%{$search}%");
                })->latest()
                ->paginate(Request::input('perPage') ?? 10)
                ->withQueryString()
                ->through(fn($expance) => [
                    'id' => $expance->id,
                    'user' => $expance->user,
                    'purpse' => $expance->purpse,
                    'method' => $expance->method,
                    'amount' => $expance->amount,
                    'subject' => $expance->subject,
                    'created_at' => $expance->created_at->format('d M Y'),
                    'show_url' => URL::route('expense.show', $expance->id),
                ]),
            'purposes' => Purpose::all(),
            'methods' => Method::all(),
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
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        Request::validate([
            'purpose_id' => 'required|integer',
            'subject' => 'required',
            'amount' => 'required',
            'method_id' => 'required',
            'expanse_date' => 'required',
            'document' => 'max:20000'
        ]);

        $filePath = "";
        if (Request::hasFile('document')) {
            $filePath = Request::file('document')->store('expanses', 'public');
        }

        $expanse = Expanse::create([
            'u_id' => date('Yd', strtotime(now())),
            'purpose_id' => Request::input('purpose_id'),
            'subject' => Request::input('subject'),
            'amount' => Request::input('amount'),
            'method_id' => Request::input('method_id'),
            'user_id' => Auth::id(),
            'date' => Request::input('expanse_date'),
            'details' => Request::input('details'),
            'document' => $filePath
        ]);
//        TransactionLine::create([
//            'u_id' => date('Yd', strtotime(now())),
//            'user_id' => Auth::id(),
//            'type' => 'out',
//            'subject_model' => "App\\Models\\Expanse",
//            'subject_id' => $expanse->id,
//            'note' => Request::input('details'),
//            'amount' => Request::input('amount'),
//            'method_id' =>Request::input('method_id'),
//            'date' => Request::input('expanse_date')
//        ]);
        Transaction::create([
            'u_id'       => date('Yd', strtotime(now())),
            'transaction_model' => 'App\\Models\\Expanse',
            'transaction_model_id' => $expanse->id,
            'method_id'  => Request::input('method_id'),
            'user_id'    => Auth::id(),
            'expanse_id' => $expanse->id,
            'total_pay'  => Request::input('amount'),
            'date'       => Request::input('expanse_date'),
            'note'       => Request::input('details'),
            'type'       => 'out'
        ]);

        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\expanse  $expance
     * @return string
     */
    public function show($id)
    {
        if (Request::input('data')){
            return Expanse::with(['purpse', 'user','method'])->findOrFail($id);
        }
        return "view";
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
    public function update($id)
    {
        $expance = Expanse::findOrFail($id);
        Request::validate([
            'purpose_id' => 'required|integer',
            'subject' => 'required',
            'amount' => 'required',
            'method_id' => 'required',
            'expanse_date' => 'required',
            'document' => 'nullable|max:20000'
        ]);
        $filePath = "";
        if (Request::hasFile('document')) {
            $file = Storage::disk('public')->get($expance->document);
            if ($file != null){
                Storage::disk('public')->delete($expance->document);
            }
            $filePath = Request::file('document')->store('expanses', 'public');
        }
        $expance->update([
            'purpose_id' => Request::input('purpose_id'),
            'subject' => Request::input('subject'),
            'amount' => Request::input('amount'),
            'method_id' => Request::input('method_id'),
            'user_id' => Auth::id(),
            'date' => Request::input('expanse_date'),
            'details' => Request::input('details'),
            'document' => $filePath
        ]);

        $transaction = TransactionLine::findOrfail($expance->id);
        $transaction->update([
            'user_id' => Auth::id(),
            'type' => 'out',
            'subject_id' => $expance->id,
            'note' => Request::input('details'),
            'amount' => Request::input('amount'),
            'method_id' =>Request::input('method_id'),
            'date' => Request::input('expanse_date')
        ]);


        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\expanse  $expance
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Expanse::findOrFail($id)->delete();
        return back();
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
