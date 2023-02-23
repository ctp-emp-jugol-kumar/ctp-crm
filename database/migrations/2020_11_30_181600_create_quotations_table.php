<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateQuotationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('quotations', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('client_id');
            $table->string('subject')->nullable();
            $table->date('valid_until');
            $table->unsignedBigInteger('website_id')->nullable();
            $table->unsignedBigInteger('platform_id')->nullable();
            $table->unsignedBigInteger('design_id')->nullable();
            $table->unsignedBigInteger('domain_id')->nullable();
            $table->unsignedBigInteger('hosting_id')->nullable();
            $table->integer('page')->default(1)->nullable();
            $table->integer('page_price')->default(0)->nullable();
            $table->longText('additional')->nullable();
            $table->integer('additional_price')->default(0)->nullable();
            $table->integer('content_page')->nullable();
            $table->integer('content_price')->nullable();
            $table->text('note')->nullable();
            $table->text('payment_policy')->nullable();
            $table->text('terms_of_service')->nullable();
            $table->string('status');
            $table->unsignedBigInteger('user_id');
            $table->timestamps();
            $table->softDeletes();
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
}
