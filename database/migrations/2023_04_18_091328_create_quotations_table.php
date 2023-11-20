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
        Schema::create('quotations', function (Blueprint $table) {
            $table->id();
            $table->foreignId('client_id')->constrained('clients')->cascadeOnDelete()->cascadeOnUpdate();
            $table->foreignId('created_by')->constrained('users');
            $table->string('quotation_id');
            $table->string('qut_date')->nullable();
            $table->string('due_date')->nullable();
            $table->string('subject')->nullable();
            $table->json('items');
            $table->integer('total_price')->default(0);
            $table->integer('discount')->default(0);
            $table->integer('grand_total')->default(0);
            $table->boolean('status')->default(true);
            $table->enum('steps', ['created', 'sender', 'updated', 'cti'])->default('created');
            $table->longText('payment_methods')->nullable();
            $table->longText('trams_of_service')->nullable();
            $table->longText('payment_policy')->nullable();
            $table->string('currency')->default('taka');
            $table->text('note')->nullable();
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
        Schema::dropIfExists('quotations');
    }
};
