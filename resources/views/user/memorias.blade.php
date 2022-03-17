@extends('layouts.app')
<link rel="stylesheet" href="{{asset('css/foot.css')}}">
@section('titulo')

@stop

@section('content')
    <div class="container-fluid" style="padding-top: 40px;" >
        <div class="col-sm-12">
            <div class="card" id="cont2" style="border-color:#FFFFF;border-width:3px">
                <div class="card-header" align="center">
                    <h1>
                        <font> MEMORIAS DE CÁLCULO</font>
                    </h1>
                </div>
                <div class="card-body">

                   
                    </form>

                    <div id="table1">
                        <table class="table" cellpadding="30" cellspacing="30">
                            <thead  style="background-color:#9FA1A1">
                                <tr>
                                    <th scope="col">Baja Tensión</th>
                                    <th scope="col">Media Tensión</th>
                                    <th scope="col">Alta tensión</th>
                              <br><br>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                
                                    {{-- condicion para definir si existe una memoria de calculo de baja tension relacionada al proyecto --}}
                                        @php 
                                        $query = "select * from tablero_bajas where project_id=".$project." order by id asc limit 1";
                                        $consulta = \DB::select($query);
                                        @endphp
                            
                                        @foreach($consulta as $baja)
                            
                                        @if($baja->project_id==$project)
                                        <td>Ya existe una Memoria</td>
                                        @else
                                        <td><a href="{{ route('Memories',$project) }}"><button type="button" class="btn btn-primary">Crear memoria</button></a></td>
                                        @endif
                                        @endforeach
                                        @if(empty($consulta))
                                        <td><a href="{{ route('Memories',$project) }}"><button type="button" class="btn btn-primary">Crear memoria</button></a></td>
                                        @endif

                                        {{-- condicion para definir si existe una memoria de calculo de media tension relacionada al proyecto --}}
                                        @php 
                                        $query = "select * from tablero_media where project_id=".$project." order by id asc limit 1";
                                        $consulta2 = \DB::select($query);
                                        @endphp
                            
                                        @foreach($consulta2 as $meia)
                            
                                        @if($meia->project_id==$project)
                                        <td>Ya existe una Memoria</td>                                        
                                        @else
                                        <td><a href="{{ route('Memories2',$project) }}"><button type="button" class="btn btn-primary">Crear memoria</button></a></td>
                                        @endif
                                        @endforeach
                                        @if(empty($consulta2))
                                        <td><a href="{{ route('Memories2',$project) }}"><button type="button" class="btn btn-primary">Crear memoria</button></a></td>
                                        @endif

                                         {{-- condicion para definir si existe una memoria de calculo de alta tension relacionada al proyecto --}}
                                        @php 
                                        $query = "select * from tablero_altas where project_id=".$project." order by id asc limit 1";
                                        $consulta3 = \DB::select($query);
                                        @endphp
                            
                                        @foreach($consulta3 as $alta)
                            
                                        @if($alta->project_id==$project)
                                        <td>Ya existe una Memoria</td>  
                                        @else
                                        <td><a href="{{ route('Memories3',$project) }}"><button type="button" class="btn btn-primary">Crear memoria</button></a></td>
                                        @endif
                                        
                                        @endforeach
                                        @if(empty($consulta3))
                                        <td><a href="{{ route('Memories3',$project) }}"><button type="button" class="btn btn-primary">Crear memoria</button></a></td>
                                        @endif
                                    
                                    
                                   
                                </tr>
                            </tbody>
                        </table>
                    </div>


                </div>
            </div>
        </div>

    </div>
@stop
@section('footer')
<footer> <div class="futer"><span> CopyRight®  {{ date('Y') }}</span> </div></footer>
@stop