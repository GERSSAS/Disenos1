<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Project;
use App\Memoria_baja;

class Tablero_baja extends Model
{
    protected $table = 'tablero_bajas';

    protected $fillable = ['name','tension','project_id'];


    //Un tablero pertenece a un proyecto
    public function project()
    {
        return $this->belongsTo(Project::class);
    }

    //Un tablero tiene muchas memorias
    public function memorias()
    {
        return $this->hasMany(Memoria_baja::class);
    }
}
