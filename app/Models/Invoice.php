<?php

namespace App\Models;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;


class Invoice extends Model
{


    /*
    |--------------------------------------------------------------------------
    | GLOBAL VARIABLES
    |--------------------------------------------------------------------------
    */

    protected $table = 'invoices';
    // protected $primaryKey = 'id';
    // public $timestamps = false;
    protected $guarded = ['id'];
    protected $fillable = [
        'quotation_id',
        'sub_total',
        'grand_total',
        'qtn',
        'discount',
        // 'pay',
        // 'due',
        'status',
        'date'
    ];
    // protected $hidden = [];
    protected $dates = ['date'];

    /*
    |--------------------------------------------------------------------------
    | FUNCTIONS
    |--------------------------------------------------------------------------
    */

    public function getPayAttribute()
    {
        return $this->transactions ? $this->transactions->sum('amount') : 0;
    }
    public function getDueAttribute()
    {
        return $this->transactions ? $this->grand_total - $this->transactions->sum('amount') : $this->grand_total;
    }
    public function getClientNameAttribute()
    {
        return $this->quotation->client ? $this->quotation->client->name : '-';
    }
    public function getCreatedByAttribute()
    {
        return $this->quotation->user ? $this->quotation->user->name : '-';
    }

    public static function boot() {
        parent::boot();
        self::deleting(function($invoice) {
            $invoice->transactions()->delete();
        });
    }

    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */

    public function quotation()
    {
        return $this->belongsTo('App\Models\Quotation');
    }
    public function transactions()
    {
        return $this->hasMany('App\Models\Transaction');
    }

    /*
    |--------------------------------------------------------------------------
    | SCOPES
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | ACCESSORS
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | MUTATORS
    |--------------------------------------------------------------------------
    */
}
