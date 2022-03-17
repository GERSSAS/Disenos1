<?php

namespace App\Http\Controllers;
use Spatie\Permission\Models\Role;
use App\User;

use Illuminate\Http\Request;


class HomeController extends Controller
{
    
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        
        if( auth()->user()->hasRole('Admin'))
        {
        //   $query = "select * from model_has_roles where role_id=2";

        //   $roles = \DB::select($query);

        //   foreach ($roles as $rol) {
            
        // $query2 = "select * from users where id=".$rol->model_id;
        // $usuarios[] = \DB::select($query2);

        //   }

        $users = User::role('User')->get();

        $roles = Role::all();

        
       
          
       return view('admin.index',compact('users','roles'));
            

        }

        if( auth()->user()->hasRole('User'))
        {

         return view('user.index');
            

        }
       
    }

    
}
