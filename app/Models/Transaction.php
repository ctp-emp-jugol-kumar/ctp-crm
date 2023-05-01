<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    protected $dates = ['payment_date'];

    public function receivedBy(){
        return $this->belongsTo(User::class, 'received_by');
    }

    public function paymentBy(){
        return $this->belongsTo(Client::class, 'payment_by');
    }

    public function method(){
        return $this->belongsTo(Method::class, 'method_id');
    }

}
