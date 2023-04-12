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
        Schema::create('package_quotation', function (Blueprint $table) {
            $table->id();
            $table->foreignId('design_id')->constrained('designs')->cascadeOnUpdate()->cascadeOnDelete();
            $table->foreignId('quotation_id')->constrained('quotations')->cascadeOnUpdate()->cascadeOnDelete();
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
        Schema::dropIfExists('package_quotation');
    }
};
