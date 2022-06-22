<?php

namespace App\Models;

use Illuminate\Support\Facades\App;
use Illuminate\Database\Eloquent\Model;


class Project extends Model
{


    /*
    |--------------------------------------------------------------------------
    | GLOBAL VARIABLES
    |--------------------------------------------------------------------------
    */

    protected $table = 'projects';
    // protected $primaryKey = 'id';
    // public $timestamps = false;
    protected $guarded = ['id'];
    protected $fillable = [
        'name',
        'user_id',
        'date',
        'start',
        'end',
        'description',
        'credential',
        'status',
        'progress',
    ];
    protected $hidden = ['credential'];
    protected $dates = [
        'date',
        'start',
        'end',
    ];

    /*
    |--------------------------------------------------------------------------
    | FUNCTIONS
    |--------------------------------------------------------------------------
    */

    public function getTimelineAttribute()
    {
        $start = empty($this->start) ? '' : \Carbon\Carbon::parse($this->start)
        ->locale(App::getLocale())
        ->isoFormat($column['format'] ?? config('backpack.base.default_date_format'));

        $end = empty($this->end) ? '' : \Carbon\Carbon::parse($this->end)
        ->locale(App::getLocale())
        ->isoFormat($column['format'] ?? config('backpack.base.default_date_format'));

        return $start .' - '. $end;
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

    public function users()
    {
        return $this->belongsToMany('App\Models\User', 'project_user');
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
