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
        Schema::table('transactions', function (Blueprint $table) {
            $table->unsignedBigInteger('quotation_id')->nullable()->after('invoice_id');
            $table->integer('pay_amount')->nullable()->after('amount')->default(0);
            $table->integer('discount')->nullable()->after('pay_amount')->default(0);
            $table->integer('total_due')->nullable()->after('discount')->default(0);
            $table->integer('total_pay')->nullable()->after('total_due')->default(0);
            $table->integer('old_total_pay')->nullable()->after('total_pay')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('transactions', function (Blueprint $table) {
            $table->dropColumn('pay_amount');
            $table->dropColumn('quotation_id');
            $table->dropColumn('discount');
            $table->dropColumn('total_due');
            $table->dropColumn('total_pay');
            $table->dropColumn('old_total_pay');
        });
    }
};
