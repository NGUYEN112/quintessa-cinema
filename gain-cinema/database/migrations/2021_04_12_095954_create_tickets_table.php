<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTicketsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tickets', function (Blueprint $table) {
            $table->id();
            $table->integer('ticket_price');
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('screening_id');
            $table->unsignedBigInteger('seat_id');

            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('screening_id')->references('id')->on('screenings');
            $table->foreign('seat_id')->references('id')->on('seats');
            $table->softDeletes();
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
        Schema::dropIfExists('tickets');
    }
}
