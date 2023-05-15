<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @method static create(array $array)
 * @method static findOrFail(int $id)
 */
class Todo extends Model
{
    use HasFactory;


    protected $guarded = ['id'];
    protected $dates = ['date'];

    public function user(){
        return $this->belongsTo(User::class);
    }

    public function replayTodos(){
        return $this->hasMany(Todo::class, 'todo_id');
    }


}
