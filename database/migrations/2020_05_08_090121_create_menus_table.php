<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMenusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('menus', function (Blueprint $table) {
            $table->bigIncrements('id');
		        $table->string('title');
		        $table->string('slug')->unique();
		        $table->integer('parent_id')->nullable();
		        $table->tinyInteger('published')->nullable();
		        $table->integer('created_by')->nullable();
		        $table->integer('modified_by')->nullable();
		        $table->string('image')->nullable();
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
        Schema::dropIfExists('menus');
    }
}
