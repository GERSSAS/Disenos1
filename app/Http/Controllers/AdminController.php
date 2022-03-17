<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use App\User;
use Session;

class AdminController extends Controller
{
    public function store(Request $request)
    {
        // dd($request);
        
        toastr()->success('!Correctamente', 'Usuario Creado');

        $users = new User;

        $users->name = $request->name;

        $users->email= $request->email;

        $users->password = bcrypt($request->password);

        $users->matricula = $request->matricula;

        // $users->matricula = $request->matricula;

        $users->save();

        $users->assignRole('User');



        // return view('admin.AssignUsers',compact('users'));
     
        return redirect()->route('home');
        
    }

    public function update(Request $request,User $user)
    {
        toastr()->info('!Correctamente', 'Usuario Editado');

        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = $request->password;
        $user->matricula = $request->matricula;
        $user->save();
        
        return redirect()->route('home');
        
        
        
    }

    public function destroy(User $user)
    {

        toastr()->error('!Correctamente', 'Usuario Eliminado');

        Session::flash('message','Usuario Eliminado');
        $user->delete();

        return redirect()->route('home');
        
    }


    public function all_projects()
    {
        $query="select * from projects";
        $proyectos= \DB::select($query);

        return view('admin.Projects',compact('proyectos'));
    }


    public function enable_project($id)
    {
   
       $query = "UPDATE projects SET estado=1 WHERE id=".$id;
    //    dd($query);
       $eliminar = \DB::select($query);

return back();       
   
    }
}
