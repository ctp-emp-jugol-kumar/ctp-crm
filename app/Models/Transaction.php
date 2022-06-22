<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{


    /*
    |--------------------------------------------------------------------------
    | GLOBAL VARIABLES
    |--------------------------------------------------------------------------
    */

    protected $table = 'transactions';
    // protected $primaryKey = 'id';
    // public $timestamps = false;
    protected $guarded = ['id'];
    protected $fillable = [
        'method_id',
        'purpose_id',
        'user_id',
        'client_id',
        'invoice_id',
        'amount',
        'date',
        'log',
        'type',
        'note',
    ];
    // protected $hidden = [];
    protected $dates = ['date'];

    /*
    |--------------------------------------------------------------------------
    | FUNCTIONS
    |--------------------------------------------------------------------------
    */

    public static function statement($start_date = '2020-05-10', $end_date = '2020-12-30', $type = null, $method = null, $purpose = null, $client = null, $user = null)
    {
        $data = Transaction::where('date', '>=', $start_date)->where('date', '<=', $end_date);

        if ($type) {
            $data->where('type', $type);
        }
        if ($method) {
            $data->where('method_id', $method);
        }
        if ($purpose) {
            $data->where('purpose_id', $purpose);
        }
        if ($client) {
            $data->where('client_id', $client);
        }
        if ($user) {
            $data->where('user_id', $user);
        }

        return $data;
    }

    public static function overview($start_date = '2020-05-10', $end_date = '2020-12-30', $user = null)
    {
        $data = Transaction::where('date', '>=', $start_date)->where('date', '<=', $end_date)->whereNotNull('invoice_id');

        if ($user) {
            $data->where('user_id', $user);
        }

        return $data;
    }

    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */
    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
    public function method()
    {
        return $this->belongsTo('App\Models\Method');
    }
    public function purpose()
    {
        return $this->belongsTo('App\Models\Purpose');
    }
    public function client()
    {
        return $this->belongsTo('App\Models\Client');
    }
    public function invoice()
    {
        return $this->belongsTo('App\Models\Invoice');
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
