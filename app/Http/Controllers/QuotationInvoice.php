<?php

namespace App\Http\Controllers;

use App\Models\Quotation;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\URL;

class QuotationInvoice extends Controller
{
    public function createInvoice($id){
        $quotation = Quotation::findOrFail($id);

        $mainarray = array();

        foreach ($quotation->domains as $item){
            $mainarray [] =[
                'name' => $item->name,
                'price' => $item->price,
                'discount' => $item->pivot->discount,
                'quantity' => $item->pivot->quantity
            ];
        }

        foreach ($quotation->hostings as $item){
            $mainarray [] =[
                'name' => $item->name,
                'price' => $item->price,
                'discount' => $item->pivot->discount,
                'quantity' => $item->pivot->quantitiy
            ];
        }
        foreach ($quotation->works as $item){
            $mainarray [] =[
                'name' => $item->name,
                'price' => $item->price,
                'discount' => $item->pivot->discount,
                'quantity' => $item->pivot->quantitiy
            ];
        }
        foreach ($quotation->packages as $item){
            $mainarray [] =[
                'name' => $item->name,
                'price' => $item->price,
                'discount' => $item->pivot->discount,
                'quantity' => $item->pivot->quantitiy
            ];
        }
        foreach ($quotation->quotationItems as $item){
            $mainarray [] =[
                'name' => $item->name ?? $item->itemname,
                'price' => $item->price,
                'discount' => $item->discount,
                'quantity' => $item->quantity
            ];
        }


        $data =[
            'quotation'          => $quotation,
            'others_info'        => [
                "items"          => $mainarray,
                "create_invoice" => URL::route('quotation.download', $quotation->id)
            ],

            'quotation_owner'    => [
                'creator'        => $quotation->user,
                'client'         => $quotation->client,
            ]
        ];

        $pdf = Pdf::loadView('invoice.quotation', compact('data'));
        return $pdf->download('quotation.pdf');
    }
}
