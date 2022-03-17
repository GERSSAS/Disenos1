<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Tablero_baja;

class Project extends Model
{
    protected $table = 'projects';

    protected $fillable = ['name','url','estado'];

    //Un proyecto tiene muchos tableros de baja tension
    public function tablero_bajas()
    {
        return $this->hasMany(Tablero_baja::class);
        
    }

    //Un proyecto tiene muchos tableros de media tension
    public function tablero_medias()
    {
        return $this->hasMany(tablero_media::class);
        
    }
}
