<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @method static findOrFail(array|string|null $input)
 */
class CustomInvoice extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    protected $fillable = ['u_id', 'client_id', 'subject', 'user_id','grand_total', 'pay', 'due', 'status', 'trams_and_condition', 'privicy_and_policy', 'date'];

    protected $dates = ['date'];


    public function client(){
        return $this->belongsTo(Client::class, 'client_id');
    }

    public function invoiceItems(){
        return $this->hasMany(InvoiceItem::class, 'invoice_id');
    }

    public function user(){
        return $this->belongsTo(User::class, 'user_id');
    }

    public function transactions()
    {
        return $this->hasMany(Transaction::class, 'invoice_id');
    }




}
