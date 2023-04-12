<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @method static findOrFail($id)
 */
class NoteCategory extends Model
{
    use HasFactory;


    protected $guarded = ['id'];

    public function notes(){
        return $this->hasMany(Note::class);
    }

}
