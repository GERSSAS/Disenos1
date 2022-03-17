@extends('layouts.app')
@section('titulo')
<div align="left">
<a class="navbar-brand" href="{{ url('/home') }}">
    MEMORIAS DE CALCULO
 </a>
 </div>
@stop

@section('content')
<div class="container" style="padding-top:80px">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Login') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="email" class="col-sm-4 col-form-label text-md-right">{{ __('Correo electronico') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('contraseña') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        {{--<div class="form-group row">
                            <div class="col-md-6 offset-md-4">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> {{ __('Remember Me') }}
                                    </label>
                                </div>
                            </div>
                        </div>--}}

                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Login') }}
                                </button>

                                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#flipFlop">
                                    Solicitar usuario
                                </button>

                                {{-- <a class="btn btn-link" href="{{ route('password.request') }}">
                                    {{ __('Forgot Your Password?') }}
                                </a> --}}
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="flipFlop" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">               
                            <div class="modal-dialog" role="document">
                            <div class="modal-content">                
                            <div class="modal-header" style="padding:35px 50px;">
                             <h4><span ></span> Solicitar usuario</h4>
                            
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                            </div>
                            
                            <div class="modal-content" style="padding:40px 50px;">
                            <div class="container-fluid">
                            
                            
                          
                            <form role="form" action="{{ route('solicitar') }}" method="POST">
                                    {{ csrf_field() }}
                                <div class="form-group">
                                    <label for="name"><span ></span> Nombre usuario</label>
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Ingresa el nombre del usuario" required="">
                                </div>
                    
                                <div class="form-group">
                                    <label for="correo"><span ></span> Correo</label>
                                    <input type="text" class="form-control" id="email" name="email" placeholder="Ingresa el correo del usuario" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@['gerscali.com']+['gers.com.co']" required="">
                                </div>
                                
                                <div class="form-group">
                                    <label for="matricula"><span ></span> Matricula Profesional</label>
                                    <input type="text" class="form-control" id="matricula" name="matricula" placeholder="Ingrese la Matricula profesional" required="">
                                </div>
                        </div>
                        <label>Se enviara un mensaje con sus datos a los Administradores del aplicativo y debera esperar un mensaje de respuesta a su correo con la contraseña que se le ha sido asignada</label>
                        </div>
                        <div class="modal-footer">
                                    <button type="submit" class="btn btn-success btn-block" name="btnRegistrar"><span ></span> Enviar</button>
                            </div>
                           
                            
                            </div>
                            </form>
                            </div>  
                        </div>
@endsection
@section('footer')
<footer> <div class="futer"><span> CopyRight®  {{ date('Y') }}</span> </div></footer>
@stop
