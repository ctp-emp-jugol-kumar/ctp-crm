<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('todos', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete()->cascadeOnUpdate();
            $table->foreignId('todo_id')->nullable()->constrained('todos')->cascadeOnDelete()->cascadeOnUpdate();
            $table->string('title')->nullable();
            $table->json('users')->nullable();
            $table->string('date');
            $table->text('about_todo')->nullable();
            $table->string('file')->nullable();
            $table->string('priority')->nullable()->default('Normal');
            $table->boolean('is_replay')->default(false);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('todos');
    }
};
