<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddRequirementsToQuotationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('quotations', function (Blueprint $table) {
            $table->longText('additional2')->nullable();
            $table->integer('additional2_price')->default(0)->nullable();
            $table->longText('additional3')->nullable();
            $table->integer('additional3_price')->default(0)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('quotations', function (Blueprint $table) {
            $table->dropColumn(['additional2','additional2_price','additional3','additional3_price']);
        });
    }
}
