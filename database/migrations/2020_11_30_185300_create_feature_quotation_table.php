<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFeatureQuotationTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('feature_quotation', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('feature_id');
            $table->unsignedBigInteger('quotation_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('feature_quotation');
    }
}
