<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CustomInvoice extends Model
{
    use HasFactory;

    protected $guarded = ['id'];


    public function client(){
        return $this->belongsTo(Client::class, 'client_id');
    }

    public function invoiceItems(){
        return $this->hasMany(InvoiceItem::class, 'invoice_id');
    }

    public function user(){
        return $this->belongsTo(User::class, 'creator_id');
    }




}
