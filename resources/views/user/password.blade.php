@extends('layouts.app')
<script src="https://code.jquery.com/jquery-3.3.1.min.js"integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="crossorigin="anonymous"></script>

<script>
$(document).ready( function(){

	  
	 
	   $('#show').click(function(){

    checkbox = document.getElementById('show');
    passField = document.getElementById('password');
    if(checkbox.checked==true) // Si la checkbox de mostrar contraseña está activada
    {
        $('#password').attr('type', 'text');
    }
    else // Si no está activada
    {
        $('#password').attr('type', 'password');
    }

	   });
	});
</script>
@section('titulo')

@stop

@section('content')

<div class="container" style="padding-top:120px">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><h3 style="text-align:center">Cambiar Contraseña</h3></div>

                <div class="card-body">
                   
                <form action="{{route('password')}}" method="POST">
                    {{csrf_field()}}
                    <label for="password">Contraseña:</label><input type="password" name="password" id="password" style="width:70%" placeholder="Digite la contraseña" required/><br/>

	         <input type="checkbox" id="show"/> <label for="show">Mostrar Contraseña</label><br/>
                   <br>

                <input type="text" name="id" value="{{$id}}" hidden>

                   <button type="submit" class="btn btn-primary">Guardar</button>
                   
                </form>
                
                </div>
            </div>
            </div>
        </div>
    </div>
</div>
@stop
@section('footer')
<footer> <div class="futer"><span> CopyRight®  {{ date('Y') }}</span> </div></footer>

@stop