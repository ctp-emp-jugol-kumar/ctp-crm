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
        Schema::create('custom_invoices', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('client_id')->nullable();
            $table->unsignedBigInteger('creator_id')->nullable();
            $table->string('subject')->nullable();
            $table->date('date')->default(now());
            $table->integer('total_price')->nullable();
            $table->integer('quantity')->nullable();
            $table->integer('discount')->nullable();
            $table->longText('trams_and_condition')->nullable();
            $table->longText('privicy_and_policy')->nullable();
            $table->tinyInteger('status');
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
        Schema::dropIfExists('custom_invoices');
    }
};
