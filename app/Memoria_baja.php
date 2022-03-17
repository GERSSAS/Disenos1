<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Tablero_baja;
use App\Project;


class Memoria_baja extends Model
{
    protected $table = 'memoria_bajas';

    protected $fillable = [
        
        'conductor',
        'carga',
        'descripcion_carga',
        'longitud_km',
        'potencia_hp',
        'potencia_kw',
        'potencia_kva',
        'nro_fases',
        'nro_hilos',
        'neutro',
        'tipo_cab',
        'tension_nominal',
        'corriente_nominal',
        'corriente_asignada',
        'proteccion_selec',
        'ajustable',
        'calibre_conductor',
        'medio_de_instal',
        'tabla_2050',
        'capacidad_de_un_conductor',
        'nro_de_conductores_x_fase',
        'cantidad',
        'factor_de_ajuste_con',
        'rango_temperatura',
        'factor_de_ajuste_tem',
        'cap_tot_conduc',
        'reactancia',
        'resistencia',
        'factor_de_potencia',
        'sen',
        'regulacion',
        'conductores_neutro',
        'calibre_conduc_neu',
        'conductor_tierra',
        'calibre_tierra',
        'conductor_selecc',
        'tablero_id',
        'project_id'
    
    
    ];

    //Una memoria pertenece a un tablero de baja tension
    public function tablero_baja()
    {
        return $this->belongsTo(Tablero_baja::class);
    }
    
}
