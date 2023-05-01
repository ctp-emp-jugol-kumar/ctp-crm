<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use const http\Client\Curl\FEATURES;


class Platform extends Model
{

    use SoftDeletes;


    protected $table = 'platforms';
    protected $guarded = ['id'];

    public function packages(){
        return $this->hasMany(Package::class, 'platform_id');
    }

    public function featureds(){
        return $this->hasMany(Feature::class, 'featured_id');
    }

}
