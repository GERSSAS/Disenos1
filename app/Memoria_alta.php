<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Memoria_alta extends Model
{
    protected $table = 'memoria_altas';

    protected $fillable = [
        'tag_cable',
        'tag_carga',
        'descripcion',
        'hp',
        'kva_kw',
        'tension',
        'corriente_nominal',
        'valor_k',
        'donde_aplica',
        'corriente_asignada',
        'calibre',
        'm_instal',
        'tabla_2050',
        'capacidad_de_un_conductor',
        'nro_con_fases',
        'cantidad',
        'ajuste_cant',
        'temperatura',
        'ajuste_temp',
        'cap_tot_conduc',
        'longitud',
        'resistencia',
        'regulacion',
        'proteccion',
        'calibre_min',
        'tipo_conductor',
        'conductor_selec',
        'tablero_id',
        'project_id'

    ];
    //Una memoria pertenece a un tablero de baja tension
    public function tablero_alta()
    {
        return $this->belongsTo(Tablero_alta::class);
    }
}
