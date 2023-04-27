<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
    use HasFactory;

    protected $fillable = ['platform_id', 'name', 'price', 'descriptions'];


    public function platform(){
        return $this->belongsTo(Platform::class, 'platform_id');
    }

}
