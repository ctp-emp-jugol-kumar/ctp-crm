<?php

namespace App\Http\Controllers;

use App\Models\OldInvoice;
use App\Models\OldQuotation;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\URL;

class OldDataController extends Controller
{

    public function quotation(){
        return inertia('OldData/Quotation', [
            'oldQuotations' =>  OldQuotation::query()
                ->with(['user', 'client'])
                ->when(Request::input('search'), function ($query, $search) {
                    $query
                        ->where('subject', 'like', "%{$search}%")
                        ->orWhere('status', 'like', "%{$search}%")
                        ->orWhereHas('client', function ($client) use($search){
                            $client
                                ->where('name',    'like', "%{$search}%")
                                ->orWhere('phone', 'like', "%{$search}%")
                                ->orWhere('email', 'like', "%{$search}%");
                        });
                })
                ->latest()
                ->paginate(Request::input('perPage') ?? 10)
                ->withQueryString()
                ->through(fn($quotation) => [
                    'quotation' => $quotation,
                ]),
            'filters'  => Request::only(['search','perPage']),
            'main_url' => URL::route('oldQuotation')
        ]);
    }

    public function showQuotation($id){
        $data = OldQuotation::with(['user', 'client'])->findOrFail($id);
        return  inertia('OldData/ShowQuotation',[
            'content' => $data
        ]);
    }

    public function invoice(){
        return inertia('OldData/Invoice', [
            'oldInvoice' =>  OldInvoice::query()
                ->with(['quotation', 'quotation.client'])
                ->when(Request::input('search'), function ($query, $search) {
                    $query
                        ->where('subject', 'like', "%{$search}%")
                        ->orWhere('status', 'like', "%{$search}%")
                        ->orWhereHas('client', function ($client) use($search){
                            $client
                                ->where('name',    'like', "%{$search}%")
                                ->orWhere('phone', 'like', "%{$search}%")
                                ->orWhere('email', 'like', "%{$search}%");
                        });
                })
                ->latest()
                ->paginate(Request::input('perPage') ?? 10)
                ->withQueryString()
                ->through(fn($invoice) => [
                    'invoice' => $invoice,
                ]),
            'filters'  => Request::only(['search','perPage']),
            'main_url' => URL::route('oldInvoice')
        ]);
    }

    public function showInvoice($id){
        $data = OldInvoice::with(['quotation', 'quotation.client'])->findOrFail($id);
        return  inertia('OldData/ShowInvoice',[
            'content' => $data
        ]);
    }

}
