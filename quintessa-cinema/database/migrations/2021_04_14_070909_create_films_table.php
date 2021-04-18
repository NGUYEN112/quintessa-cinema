<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFilmsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('films', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable(false);
            $table->string('global_name');
            $table->longText('image')->nullable(false);
            $table->string('producer')->nullable(false);
            $table->string('categories')->nullable(false);
            $table->string('director')->nullable(false);
            $table->string('case')->nullable(false);
            $table->integer('durations')->nullable(false);
            $table->date('release_date')->nullable(false);
            $table->integer('status')->nullable(false);
            $table->string('trailer');
            $table->longText('description')->nullable(false);
            $table->integer('ticket_price');

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
        Schema::dropIfExists('films');
    }
}
