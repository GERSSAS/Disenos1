<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Memoria_media extends Model
{
    protected $table = 'memoria_media';

    protected $fillable=[

        'tag_conductor',
        'tag',
        'tablero',
        'longitud',
        'potencia',
        'fases',
        'tension',
        'calibre_min',
        'corriente_nominal',
        'corriente_asignada',
        'calibre',
        'm_instal',
        'tabla',
        'cap_uno',
        'nro_con_fase',
        'cap_tot_con',
        'aislamiento',
        'reactancia',
        'resistencia',
        'cos',
        'sen',
        'regulacion',
        'cond_selec',
        'tablero_id',
        'project_id'
    ];
    //Una memoria pertenece a un tablero de baja tension
    public function tablero_media()
    {
        return $this->belongsTo(tablero_media::class);
    }
}
