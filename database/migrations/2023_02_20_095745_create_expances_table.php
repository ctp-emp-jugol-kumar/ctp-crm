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
        Schema::create('expanses', function (Blueprint $table) {
            $table->id();
            $table->foreignId('purpose_id')->constrained('purposes');
            $table->string('subject')->nullable();
            $table->double('amount');
            $table->foreignId('method_id')->constrained('methods');
            $table->foreignId('user_id')->constrained('users');
            $table->text('details')->nullable();
            $table->string('document');
            $table->timestamp('date');
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
        Schema::dropIfExists('expanse');
    }
};
