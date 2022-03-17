@extends('layouts.app')

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
                <th>Baja tensión</th>
                <th>Media tensión</th>
                <th>Alta tensión</th>
                <th>Acciones</th>
                
                
            </tr>
        </thead>
        <tbody>
@foreach($proyectos as $project)
<tr>
            <td>{{$project->name}}</td>
            @php 
            $query = "select * from tablero_bajas where project_id=".$project->id." order by id asc limit 1";
            $consulta = \DB::select($query);
            @endphp

            @foreach($consulta as $baja)

            @if($baja->project_id==$project->id)
            <td><a href="{{route('Memories',$project->id)}}"><button type="button" class="btn btn-primary">Editar</button></a></td>
            @else
            <td>No existe memoria</td>
            @endif
            
            @endforeach
            @if(empty($consulta))
            <td>No existe memoria</td>
            @endif


             @php 
            $query = "select * from tablero_media where project_id=".$project->id." order by id asc limit 1";
            $consulta2 = \DB::select($query);
            @endphp

            @foreach($consulta2 as $meia)

            @if($meia->project_id==$project->id)
            <td><a href="{{route('Memories2',$project->id)}}"><button type="button" class="btn btn-primary">Editar</button></a></td>
            @else
            <td>No existe memoria</td>
            @endif
            
            @endforeach
            @if(empty($consulta2))
            <td>No existe memoria</td>
            @endif


             @php 
            $query = "select * from tablero_altas where project_id=".$project->id." order by id asc limit 1";
            $consulta3 = \DB::select($query);
            @endphp

            @foreach($consulta3 as $alta)

            @if($alta->project_id==$project->id)
            <td><a href="{{route('Memories3',$project->id)}}"><button type="button" class="btn btn-primary">Editar</button></a></td>
            @else
            <td>No existe memoria</td>
            @endif
            
            @endforeach
            @if(empty($consulta3))
            <td>No existe memoria</td>
            @endif

            <td><a href="{{route('buscar_memorias',$project->id)}}"><button type="button" class="btn btn-success">Agregar</button></a>
            <a href="{{url('delete_project',$project->id)}}"><button type="button" class="btn btn-danger">Eliminar</button></a></td>
            {{-- {{$project->id}} --}}
</tr>

@endforeach
        </tbody>
        </div>

@stop
@section('footer')
<footer> <div class="futer"><span> CopyRight®  {{ date('Y') }}</span> </div></footer>
@stop