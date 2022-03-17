<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMemoriaBajasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('memoria_bajas', function (Blueprint $table) {
            $table->increments('id');
            $table->string('conductor');
            $table->string('carga');
            $table->string('descripcion_carga');
            $table->double('longitud_km');
            $table->double('potencia_hp')->nullable();
            $table->double('potencia_kw')->nullable();
            $table->double('potencia_kva')->nullable();
            $table->integer('nro_fases');
            $table->integer('nro_hilos');
            $table->string('neutro');
            $table->string('tipo_cab');
            $table->double('tension_nominal');
            $table->double('corriente_nominal');
            $table->double('corriente_asignada');
            $table->double('proteccion_selec')->nullable();
            $table->int('ajustable');
            $table->string('calibre_conductor')->nullable();
            $table->string('medio_de_instal')->nullable();
            $table->string('tabla_2050')->nullable();
            $table->double('capacidad_de_un_conductor')->nullable();
            $table->integer('nro_de_conductores_x_fase')->nullable();
            $table->string('cantidad')->nullable();
            $table->double('factor_de_ajuste_con')->nullable();
            $table->string('rango_temperatura')->nullable();
            $table->double('factor_de_ajuste_tem')->nullable();
            $table->double('cap_tot_conduc')->nullable();
            $table->double('reactancia')->nullable();
            $table->double('resistencia')->nullable();
            $table->double('factor_de_potencia')->nullable();
            $table->double('sen')->nullable();
            $table->double('regulacion')->nullable();
            $table->string('conductores_neutro')->nullable();
            $table->string('calibre_conduc_neu')->nullable();
            $table->string('conductor_tierra')->nullable();
            $table->string('calibre_tierra')->nullable();
            $table->string('conductor_selecc')->nullable();

            $table->integer('tablero_id')->unsigned();
            $table->integer('project_id')->unsigned();
            $table->timestamps();

            //Declaracion de las foraneas
            $table->foreign('tablero_id')->references('id')->on('tablero_bajas')->onDelete('cascade')->onUpdate('cascade');
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
        Schema::dropIfExists('memoria_bajas');
    }
}
