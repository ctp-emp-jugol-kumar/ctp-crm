<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OldInvoice extends Model
{
    use HasFactory;

    public function quotation(){
        return $this->belongsTo(OldQuotation::class, 'quotation_id');
    }

    public function client(){
        return $this->belongsTo(Client::class);
    }

}
