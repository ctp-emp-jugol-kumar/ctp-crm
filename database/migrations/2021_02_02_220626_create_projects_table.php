<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('client_id');
            $table->date('date');
            $table->date('start')->nullable();
            $table->date('end')->nullable();
            $table->longText('description')->nullable();
            $table->longText('credential')->nullable();
            $table->string('status')->default('New');
            $table->unsignedInteger('progress')->default(0);
            $table->string('files')->nullable();
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
        Schema::dropIfExists('projects');
    }
}
