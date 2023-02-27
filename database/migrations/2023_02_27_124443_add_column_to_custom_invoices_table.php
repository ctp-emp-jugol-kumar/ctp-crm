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
        Schema::table('custom_invoices', function (Blueprint $table) {
            $table->double('grand_total')->after('total_price');
            $table->double('pay')->after('quantity');
            $table->double('due')->after('pay');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('custom_invoices', function (Blueprint $table) {
            $table->dropColumn('grand_total');
            $table->dropColumn('pay');
            $table->dropColumn('due');
        });
    }
};
