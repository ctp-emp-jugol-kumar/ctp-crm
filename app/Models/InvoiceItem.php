<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class InvoiceItem extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    public function Invoice(){
        return $this->belongsTo(CustomInvoice::class, 'invoice_id');
    }


}
