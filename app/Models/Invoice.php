<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @method static create(array $array)
 */
class Invoice extends Model
{
    use HasFactory;

    protected $dates = ['invoice_date'];

    protected $guarded = ['id'];

    public function client(){
        return $this->belongsTo(Client::class, 'client_id');
    }

    public function user(){
        return $this->belongsTo(User::class, 'user_id');
    }

    public function quotation(){
        return $this->belongsTo(Quotation::class, 'quotation_id');
    }

    public function transactions(){
        return $this->morphMany(Transaction::class, 'transactionable');
    }

    public function project(){
        return $this->hasOne(Project::class, 'invoice_id');
    }


}
