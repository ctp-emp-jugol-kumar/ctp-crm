<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

/**
 * @method static findOrFail(int $id)
 */
class Client extends Model
{


    /*
    |--------------------------------------------------------------------------
    | GLOBAL VARIABLES
    |--------------------------------------------------------------------------
    */

    protected $table = 'clients';
    // protected $primaryKey = 'id';
    // public $timestamps = false;
    protected $guarded = ['id'];
    protected $fillable = [
        'name',
        'email',
        'phone',
        'company',
        'address',
        'secondary_email',
        'secondary_phone',
        'note',
        'status',
        // 'user_id',
    ];
    // protected $hidden = [];
    // protected $dates = [];

    /*
    |--------------------------------------------------------------------------
    | FUNCTIONS
    |--------------------------------------------------------------------------
    */

    public static function boot() {
        parent::boot();
        self::deleting(function($client) {
            $client->quotations()->each(function($quotation) {
                $quotation->delete();
             });
        });
    }

    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */


    public function quotations()
    {
        return $this->hasMany('App\Models\Quotation');
    }

    public function users()
    {
        return $this->belongsToMany('App\Models\User', 'client_user');
    }

    public function projects(){
        return $this->belongsToMany(Project::class, 'client_project');
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
