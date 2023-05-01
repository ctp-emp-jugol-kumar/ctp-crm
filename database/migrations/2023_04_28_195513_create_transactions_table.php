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
        Schema::create('transactions', function (Blueprint $table) {
            $table->id();
            $table->string('transaction_id');
            $table->unsignedBigInteger('transactionable_id');
            $table->foreignId('received_by')->nullable()->constrained('users');
            $table->foreignId('payment_by')->nullable()->constrained('clients');
            $table->string('transactionable_type');
            $table->enum('transaction_type', ['Debited,', 'Credited'])->nullable();
            $table->foreignId('method_id')->nullable()->constrained('methods');
            $table->integer('amount')->nullable();
            $table->integer('pay')->nullable();
            $table->integer('due')->nullable();
            $table->text('note')->nullable();
            $table->string('payment_date')->nullable();
            $table->enum('payment_status', ['Paid', 'Pending', 'Due', 'Cancel', 'Failed'])->default('Paid');
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
        Schema::dropIfExists('transactions');
    }
};
