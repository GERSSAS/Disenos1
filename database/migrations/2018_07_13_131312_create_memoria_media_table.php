<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMemoriaMediaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('memoria_media', function (Blueprint $table) {
            $table->increments('id');
            $table->string('tag_conductor');
            $table->string('tag');
            $table->string('tablero');
            $table->double('longitud');
            $table->double('potencia');
            $table->double('fases');
            $table->double('tension');
            $table->string('calibre_min');
            $table->double('corriente_nominal');
            $table->double('corriente_asignada');
            $table->string('calibre')->nullable();
            $table->string('m_instal')->nullable();
            $table->string('tabla')->nullable();
            $table->double('cap_uno')->nullable();
            $table->double('nro_con_fase')->nullable();
            $table->double('cap_tot_con')->nullable();
            $table->string('aislamiento')->nullable();
            $table->double('reactancia')->nullable();
            $table->double('resistencia')->nullable();
            $table->double('cos')->nullable();
            $table->double('sen')->nullable();
            $table->double('regulacion')->nullable();
            $table->string('cond_selec')->nullable();
            $table->integer('tablero_id')->unsigned();
            $table->integer('project_id')->unsigned();
            $table->timestamps();

            //Declaracion de las foraneas
            $table->foreign('tablero_id')->references('id')->on('tablero_media')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('project_id')->references('id')->on('projects')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('memoria_media');
    }
}
