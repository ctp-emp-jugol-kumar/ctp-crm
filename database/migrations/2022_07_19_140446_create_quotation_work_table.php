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
        Schema::create('quotation_work', function (Blueprint $table) {
            $table->id();
            $table->foreignId('work_id')->constrained('works');
            $table->foreignId('quotation_id')->constrained('quotations');
            $table->integer('price')->default(0);
            $table->integer('quantity')->default(1);
            $table->integer('discount')->default(0);
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
        Schema::dropIfExists('quotation_work');
    }
};
