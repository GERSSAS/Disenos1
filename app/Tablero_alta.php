<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tablero_alta extends Model
{
    protected $table = 'tablero_altas';

    protected $fillable = ['name','tension','project_id'];

    //Un tablero pertenece a un proyecto
    public function project()
    {
        return $this->belongsTo(Project::class);
    }

    //Un tablero tiene muchas memorias
    public function memorias()
    {
        return $this->hasMany(Memoria_alta::class);
    }
}
