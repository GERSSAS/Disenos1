<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Project;
use App\Tablero_baja;
use App\Memoria_baja;
use App\tablero_media;
use App\Tablero_alta;
use App\Memoria_alta;
use Session;

class UserController extends Controller
{
    
//funcion para guardar un nuevo pryecto a la base de datos
   public function store(Request $request)
   { 
    
    //obtenemos el campo file definido en el formulario
    $file = $request->file('file');

       
    //obtenemos el nombre del archivo
    $nombre = $file->getClientOriginalName();

    //Generamos la url de la imagen usando el metodo store
    $fileUrl = $file->store('local');

     //indicamos que queremos guardar un nuevo archivo en el disco local
     \Storage::disk('local')->put($fileUrl,  \File::get($file));

      $project = new Project; 

      $project->name = $request->name;

      $project->estado = 1;

      $project->url = $fileUrl;

      $project->save();

      return redirect()->route('show.project' ,$project->id);
      
   }

   public function delete($id)
   {
    
       $query = "UPDATE projects SET estado=2 WHERE id=".$id;
    //    dd($query);
       $eliminar = \DB::select($query);

return back();       
   }

   public function serch_memories($project)
   {
    return redirect()->route('show.project' ,$project);
   }

//funcion que sirve para redireccionarme a la vista en la cual aparecen las memorias de calculo a crear
   public function show($project)
   {
       return view('user.memorias',compact('project'));
       
   }

//funcion para redireccionar a la vista de el tablero de baja tension
   public function low_memory(Project $project)
   {
    //consulta eloquent que trae los tableros de baja tensión que pertenecen a este proyecto 
    $tableros = $project->tablero_bajas;
    
    $id=$project->id;

    $form = Session::flash('Modal_type', 'create');

    return view('user.baja_tension',compact('tableros','id'));
   }


// funcion para redireccionar a la vista de media tension
   public function average_memory(Project $project)
   {
    // $tableros = $project->tablero_media;
    $query= "select * from tablero_media where project_id=".$project->id;
    
    $tableros = \DB::select($query);

    $id=$project->id;

    $form = Session::flash('Modal_type', 'create');

    return view('user.media_tension',compact('tableros','id'));
   }

   // funcion para redireccionar a la vista de alta tension
   public function high_memory(Project $project)
   {

    $query= "select * from tablero_altas where project_id=".$project->id;
    
    $tableros = \DB::select($query);
    
    $id=$project->id;

    $form = Session::flash('Modal_type', 'create');

    return view('user.alta_tension',compact('tableros','id'));
   }

   //consulta los todos los proyectos que esten con estado 1 que es activo
   public function search_projects()
   {
        $query="select * from projects where estado=1";
        $proyectos= \DB::select($query);

        return view('user.list_project',compact('proyectos'));
   }

   public function change_password(Request $request)
   {

    toastr()->info('!Actualizada', 'Contraseña');

    $user = User::find($request->id);

    $user->password = bcrypt($request->password);

    $user->save();

    return view('user.index');

    return redirect()->route('create.project');
    
   }
}
