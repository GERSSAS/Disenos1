<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;


class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
    
    public function Apply_for(Request $request)
    {
        $email="douglas.lopez@gers.com.co";
    
        $mensaje="Por medio de la presente solicito acceso para el aplicativo Memorias de calculo a el ingeniero(a): ".$request->name." 
        con la siguiente informacion:
        "; 
        

        $matricula="matricula profesional: ".$request->matricula."";

        $correo="correo: ".$request->email."";

        $saludo="Coordial saludo.";

        $despedida="Muchas Gracias.";
    
        Mail::send('emails.email',compact('mensaje','saludo','despedida','correo','matricula'),function($message) use($email){
            $emails = array($email);
            $message->to($emails)->subject('Asignacion de correo');
        });  
        
        return back();
            
    }
    
}


/*douglas.lopez@gers.com.co*/