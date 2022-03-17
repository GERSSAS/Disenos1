<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMemoriaAltasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('memoria_altas', function (Blueprint $table) {
            $table->increments('id');
            $table->string('tag_cable');
            $table->string('tag_carga');
            $table->string('descripcion');
            $table->double('hp');
            $table->double('kva_kw');
            $table->double('tension');
            $table->double('corriente_nominal');
            $table->double('valor_k');
            $table->string('donde_aplica');
            $table->double('corriente_asignada');
            $table->string('calibre')->nullable();
            $table->string('m_instal')->nullable();
            $table->string('tabla_2050')->nullable();
            $table->double('capacidad_de_un_conductor')->nullable();
            $table->double('nro_con_fases')->nullable();
            $table->string('cantidad')->nullable();
            $table->double('ajuste_cant')->nullable();
            $table->string('temperatura')->nullable();
            $table->double('ajuste_temp')->nullable();
            $table->double('cap_tot_conduc')->nullable();
            $table->double('longitud')->nullable();
            $table->double('resistencia')->nullable();
            $table->double('regulacion')->nullable();
            $table->double('proteccion')->nullable();
            $table->double('calibre_min')->nullable();
            $table->string('tipo_conductor')->nullable();
            $table->string('conductor_selec')->nullable();
            $table->integer('tablero_id')->unsigned();
            $table->integer('project_id')->unsigned();
            $table->timestamps();

            //Declaracion de las foraneas
            $table->foreign('tablero_id')->references('id')->on('tablero_altas')->onDelete('cascade')->onUpdate('cascade');
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
        Schema::dropIfExists('memoria_altas');
    }
}
