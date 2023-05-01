<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Searvice extends Model
{
    use HasFactory;

    protected $fillable = ['service_name', 'platforms'];

    public function platforms(){
        return $this->hasMany(Platform::class, 'platform_id');
    }

}
