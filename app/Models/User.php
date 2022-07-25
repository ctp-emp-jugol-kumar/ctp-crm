<?php

namespace App\Models;

use Spatie\Permission\Traits\HasRoles;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

/**
 * @method static create(array $array)
 */
class User extends Authenticatable
{
    use HasFactory, Notifiable;
    use  HasRoles;

    protected $guard_name = 'backpack';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];



    public function quotations()
    {
        return $this->hasMany('App\Models\Quotation');
    }
    public function clients()
    {
        return $this->belongsToMany('App\Models\Client', 'client_user');
    }

    public function invoices(){
        return $this->hasMany(User::class, 'user_id');
    }

    public function projects()
    {
        return $this->belongsToMany('App\Models\Project', 'project_user');
    }
}
