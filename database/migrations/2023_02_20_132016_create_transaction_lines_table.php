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
        Schema::create('transaction_lines', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users');
            $table->enum('type', ['in', 'out'])->nullable();
            $table->string('subject_model')->nullable();
            $table->integer('subject_id')->nullable();
            $table->foreignId('method_id')->constrained('methods');
            $table->text('note')->nullable();
            $table->double('amount');
            $table->timestamp('date');
            $table->integer('discount')->nullable();
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
        Schema::dropIfExists('transaction_lines');
    }
};
