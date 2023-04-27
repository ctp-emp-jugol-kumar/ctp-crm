<?php

namespace App\Models;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;


/**
 * @method static create(array $array)
 * @method static findOrFail(mixed $id)
 */
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
        'u_id',
        'quotation_id',
        'sub_total',
        'grand_total',
        'qtn',
        'discount',
         'pay',
         'due',
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


}
