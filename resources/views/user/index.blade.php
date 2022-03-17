@extends('layouts.app')
<script src="https://code.jquery.com/jquery-3.3.1.min.js"integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="crossorigin="anonymous"></script>

@section('titulo')

@stop

@section('content')

<script>
    $('#inputGroupFile01').on('change', function() {
    //get the file name
    var fileName = $(this).val().split('\\').slice(-1)[0];
    //replace the "Choose a file" label
    $(this).next('.custom-file-label').html(fileName);

    });
</script>

<div class="container" style="padding-top:120px;height:100%">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><h3 style="text-align:center">Memorias de cálculo</h3></div>

                <div class="card-body" style="height:250px">
                   
                <form action="{{route('create.project')}}" method="POST" enctype="multipart/form-data">
                    {{csrf_field()}}

                    <label  for="inputGroupFile01" align="center">Seleccionar Imagen de la empresa a la que se realiza la memoria</label>  
                    
                    <div class="custom-file">
                    <input type="file" name="file" class="custom-file-input" id="inputGroupFile01"  lang="es" required>
                    
                    <label class="custom-file-label" for="inputGroupFile01"></label>
                    <p>

                    <div class="input-group"> 

                    <label  for="text" align="center" required="" >Digite el nombre del proyecto</label>
                         
                   <input type="text" name="name" class="form-control" id="text" style="width:90%" placeholder="Digite el nombre del proyecto" required>
                   <span class="input-group-btn">
                   <button type="submit" class="btn btn-primary">Crear</button>
                    </span>
                   </div>
                   
                </form>
                
                <br>
                <div align="center"><a href="{{route('listar_proyectos')}}"><button type="button" class="btn btn-success">Buscar proyecto</button></a></div>
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






