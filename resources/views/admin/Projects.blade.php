@extends('admin.layout')

<script src="https://code.jquery.com/jquery-3.3.1.min.js"integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.js"></script>

@section('content')

<div class="container-fluid" style="padding-top:50px">

<script>

$(function () {
    $('#usuarios-table').DataTable({
        'paging': true,
        'lengthChange': false,   
        'scrollY':'305px',
        'scrollCollapse': true,
        'searching': true,
        'ordering': true,
        'info': false,
        'autoWidth': false,
        language:{
            "emptyTable": "No hay información",
            "search":"Buscar",
            "paginate":{
                "next":"Siguiente",
                "previous":"Anterior",
            },
        },        
    });
});


</script>

  <table id="usuarios-table" class="display">
        <thead>
            <tr>
                      
                <th>Proyectos</th>
               
                <th>Acciones</th>
                
                
            </tr>
        </thead>
        <tbody>
@foreach($proyectos as $project)
<tr>
            <td>{{$project->name}}</td>
           

           @if($project->estado==2)
            <td><a href="{{url('habilitar',$project->id)}}"><button type="button" class="btn btn-success">habilitar proyecto</button></a></td>
            @endif
            {{-- {{$project->id}} --}}
</tr>

@endforeach
        </tbody>
        </div>

@stop
@section('footer')
<footer> <div class="futer"><span> CopyRight®  {{ date('Y') }}</span> </div></footer>
@stop

