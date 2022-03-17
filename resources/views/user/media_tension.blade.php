@extends('layouts.app')
<script>

</script>
{{--se utiliza para conectar la hoja de secripts correspondiente a esta tabla--}}
<script src="{{asset('js/EnviarUpdateMedia.js')}}"></script>

@section('titulo')

<a class="navbar-brand">
{{--boton que activa la funcion de agregar tableros--}}
    <button class="btn btn-primary" onclick="mostrar();">Agregar tablero</button>

{{--boton que dezpliega el modal que se encarga de elegir el documento a importar --}}
    <button class="btn btn-primary" data-toggle="modal" data-target="#flipFlop">Importar datos</button>
    
{{--boton que permite acceder a la funcion que se encarga de generar el documento de word--}}
    <a href="{{ route('word_media',$id) }}"><button class="btn btn-primary">Descargar word</button></a>&nbsp;&nbsp;

{{--boton que permite acceder a la funcion que se encarga de generar el archivo de excel--}}
    <a href="{{ route('archivo_excel_media',$id) }}"><button class="btn btn-primary">Descargar excel</button></a>
 </a>
@stop

@section('content')
<span id="url_actualizarmedia" hidden="">
    {{url("actualizar_media")}}
</span>
{{--codigo que se encarga de crear la tabla--}}
<table   border="1" bordercolor="#0000FF" cellspacing="10" cellpadding="10" id="result" class="fixed_headers">
        <thead>
            <tr align="center" bgcolor="#F9DDDB">
                <th rowspan="3">Tag_conductor</th>
                <th colspan="2" rowspan="2">Descripción</th>
                <th rowspan="3">Longitud (K_M)</th>
                <th rowspan="3">Potencia (KVA)</th>
                <th rowspan="3">Nro_Fases</th>
                <th rowspan="3">Tension nominal</th>
                <th rowspan="3">Calibre_minimo de conductor a seleccionar segun tension nominal (AWG) Tabla 310-5 NTC 2050</th>
                <th rowspan="3">(in) corriente nominal 3F: A=kVA*1000/(raiz(3)*V) 1F,2F: A=kVA*1000/V)</th>
                <th rowspan="3">Corriente asignada In x 1,25</th>
                <th colspan="15">Seleccion del conductor fase</th>
                <th  rowspan="3">Conductor_seleccionado</th>
            </tr>
            <tr align="center" bgcolor="#F9DDDB">
                
                <th rowspan="2">Calibre conductor (AWG o KCMIL)</th>
                <th rowspan="2">Medio de instalacion (Caso mas critico)</th>
                <th rowspan="2">Tabla_NTC-2050 a utlizar</th>
                <th rowspan="2">(Ic) capacidad de un conductor segun tabla utilizada (A) Ic X N</th>
                <th rowspan="2">N de conductores por fase</th>
                <th rowspan="2" colspan="2">Capacidad_total_de conductores por fase</th>
                <th rowspan="2" colspan="2">¿cable_conectado_a_un_circuito provisto de un rele de proteccion contra fallas a tierra que despejes las fallas rapidamente(1 min) (SI/NO)</th>
                <th colspan="4">Propiedades conductores de cobre</th>
                <th rowspan="2" colspan="2">Regulacion (<=3% Cumple)</th>
            </tr>
            <tr align="center" bgcolor="#F9DDDB">
                <th>TAG</th>
                <th>Tablero/Equipo</th>
                <th>Reactancia (Xl)</th>
                <th>Resistencia (Rac)</th>
                <th>Cos 0 Factor de potencia</th>
                <th>Sen 0= Sen(arcos_fp)</th>
            </tr>
            {{--contador que es utlizado para manejar las posiciones de los scripts--}}
            @php $contador=0;  @endphp

            {{--recorrer consulta que se trae al ingresar a la tabla--}}
            @foreach($tableros as $project)
            @php $contador++;  @endphp

            <tr>
                <td colspan="26"><button class="btn btn-primary" onclick="mostrar2('{{$contador}}');"><i class="fi-plus"></i></button> {{ $project->name." ".$project->tension }}</td>
    
            </tr>

            @php 

        //consulta para traer las memorias de media tension relacionadas a cada proyecto
         $query = "select * from memoria_media where tablero_id=".$project->id;
         $consulta = \DB::select($query);

            @endphp

            @foreach($consulta as $memoria)

                <tr>
                <td>{{$memoria->tag_conductor}}</td>
                <td>{{$memoria->tag}}</td>
                <td>{{$memoria->tablero}}</td>
                <td>{{$memoria->longitud}}</td>
                <td>{{$memoria->potencia}}</td>
                <td>{{$memoria->fases}}</td>
                <td>{{$memoria->tension}}</td>
                <td>{{$memoria->calibre_min}}</td>
                <td>{{$memoria->corriente_nominal}}</td>
                <td>{{$memoria->corriente_asignada}}</td>
                <td style='background-color:#96A6F5;'>

                {{--select para seleccionar el calibre que se va a utilizar en cada una de los conductores--}}
                        <select id={{'calibre'.$memoria->id}} onchange='cargar({{$memoria->id}});' class="form-control">
                        <optgroup label='Seleccione Calibre'>
                        <option style='font-weight:bold;' value='0'>{{$memoria->calibre}}</option>
                        <option value='8'>8</option>
                        <option value='6'>6</option>
                        <option value='4'>4</option>
                        <option value='2'>2</option>
                        <option value='1/0'>1/0</option>
                        <option value='2/0'>2/0</option>
                        <option value='4/0'>4/0</option>
                        <option value='250'>250</option>
                        <option value='350'>350</option>
                        <option value='500'>500</option>
                        </optgroup>
                        </select>
                </td>   

                {{--select para seleccionar el medio de instalacion que se va a utilizar en cada una de los conductores--}}
      
                <td style='background-color:#96A6F5;'><select id={{'medio'.$memoria->id}} onchange='cargar({{$memoria->id}});' class="form-control">
                        <optgroup label='Medio de instalación'>
                        <option style='font-weight:bold;' value='0'>{{$memoria->m_instal}}</option>
                        <option value='bandeja sin tapa'>bandeja sin tapa</option>
                        <option value='bandeja con tapa'>bandeja con tapa</option>
                        <option value='1 ducto subterraneo'>1 ducto subterraneo</option>
                        <option value='3 ductos subterraneos'>3 ductos subterraneos</option>
                        <option value='6 ductos subterraneos'>6 ductos subterraneos</option>
                        </optgroup>
                    </select>
                </td>
                <td id={{"tabla".$memoria->id}}>{{$memoria->tabla}}</td>
                <td id={{"cap_uno".$memoria->id}}>{{$memoria->cap_uno}}</td>
                <td style='background-color:#96A6F5;'  ><input type='number'  id={{"NCF".$memoria->id}} value="{{$memoria->nro_con_fase}}" onchange='cargar({{$memoria->id}});'></td>
                <td id={{"cap_tot".$memoria->id}}>{{$memoria->cap_tot_con}}</td>

                {{--condicion que permite determinar si se esta cumpliendo la regla que se debe de tener en cuenta la capcidad total de conductores debe de ser mayor a la corrrienete asignada del conductor--}}
                @if($memoria->cap_tot_con>=$memoria->corriente_asignada)
                        <td id={{"con1".$memoria->id}}>Cumple</td>           
                    @else
                        <td id={{"con1".$memoria->id}}>No cumple</td>
                    @endif

                {{--select para seleccionar el aislamiento que se va a utilizar en cada una de los conductores--}}
                <td style='background-color:#96A6F5;'>
                    <select id={{'aisl'.$memoria->id}} onchange='cargar({{$memoria->id}});' class="form-control">
                        <option style='font-weight:bold;' value='0'>{{$memoria->aislamiento}}</option>
                        <option value='Si'>Si</option>
                        <option value='No'>No</option>
                    </select>
                </td>
                
                {{--condicion para definir que tipo de aislamiento se va a utilizar en la tabla--}}
                    @if($memoria->aislamiento=="Si")
                        <td id={{"con2".$memoria->id}}>Aislamiento 100%</td>
                    
                    @else
                        <td id={{"con2".$memoria->id}}>Aislamiento 133%</td>
                    @endif
                
                <td id={{"reactancia".$memoria->id}}>{{$memoria->reactancia}}</td>
                <td id={{"resistencia".$memoria->id}}>{{$memoria->resistencia}}</td>
                <td>{{$memoria->cos}}</td>
                <td>{{$memoria->sen}}</td>
                <td id={{"regulacion".$memoria->id}}>{{$memoria->regulacion}}</td>

                {{--condicion para comprobar si cumple la condicion que la regulacion debe ser menor o igual al 3%--}}
                @if($memoria->regulacion<=3)
                        <td id={{"con3".$memoria->id}}>Cumple</td>           
                    @else
                        <td id={{"con3".$memoria->id}}>No cumple</td>
                    @endif
                    
                <td id={{"conductor_selec".$memoria->id}}>{{$memoria->cond_selec}}</td>
                </tr>
                @php
                @$idm=$memoria->id;
                @endphp

            @endforeach

            
            {{--esta funcion permanece oculta y aparecer solo cuando se presiona el boton de agregar una nueva carga a cada tablero--}}
            <tr id="{{ $contador }}" style="display:none;" class="tr">
            <form action="{{route('memorias_media')}}" method="POST">
                {{csrf_field()}}

                        {{-- <input type="text" name="id" value="{{@$idm}}" hidden> --}}

                        <input type="text" name="tablero_id" value="{{$project->id}}" hidden>

                        <input type="text" name="tension" value="{{$project->tension}}" hidden>

                        <input type="text" name="project" value="{{$id}}" hidden>

                        <td><input type='text' name='tag_conductor' required=""></td>

                        <td><input type='text' name='tag' required=""></td>

                        <td><input type='text' name='tablero' required=""></td>

                        <td><input  type='number' step="any" name='longitud'v required=""></td>
                        
                        <td ><input step="any" name='potencia' required="">

                        <td><select id='fases' name='fases'>
                            <option value='1'>1</option>
                            <option value='2'>2</option>
                            <option value='3'>3</option>
                        </select>
                        </td>
    
                        <td></td>
    
                        <td></td>
    
                        <td></td>
    
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                                            <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><input  type='number' step="any" name='cos' required=""></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><button class='btn btn-primary' type='submit' id="envio1" name="envio1">Continuar</button></td>
                </form>
            </tr>
            @endforeach


         {{-- generar la fila en la cual se digita el tablero cuando se preiona el boto(agregar tablero) --}}
         <tr id="none" style="display:none;">
            <form action="{{route('tablero_media')}}" method="POST" >
                    {{ csrf_field() }}
        <td colspan="10">
            <input name="name" id="name" type="text" placeholder="Digite el nombre del tablero">

            <select name="tension" id="tension">
                    <option value='4160 '>4160 V</option>
                    <option value='13200'>13200 V</option>
                    <option value='13800'>13800 V</option>
                    <option value='14400'>14400 V</option>
                    <option value='24000'>24000 V</option>
                    <option value='34500'>34500 V</option>
            </select>

            <input type="text" name="project_id" value="{{$id}}" hidden>

            <button type="submit" class="btn btn-primary">Guardar</button>

        </td>
    </form>
    </tr>

    {{--modal que se utiliza para seleccionar el archivo que se encargara de importar los datos al tablero--}}
    <div class="modal fade" id="flipFlop" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">               
        <div class="modal-dialog" role="document">
        <div class="modal-content">                
        <div class="modal-header" style="padding:35px 50px;">
         <h4><span ></span> Importar datos a un tablero</h4>
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button>
        </div>
        
        <div class="modal-content" style="padding:40px 50px;">
        <div class="container-fluid">
        
        <div>
        <form action="{{route('importar_media')}}" method="POST" enctype="multipart/form-data">
                {{ csrf_field() }}

                @php
                //consulta para traer todos los tableros pertenecientes a cada uno de los proyectos
                $query="select * from tablero_media where project_id=".$id;
                $consulta = \DB::select($query);
            @endphp

        <div class="input-group">
                <div class="input-group-prepend">
                 <span class="input-group-text"><strong>Eija el tablero</strong></span>
                            <select name="tablero_id" id="tablero" class="form-control" style="padding-top:10px">
                                @foreach($consulta as $tableros)
           
                                    <option value="{{$tableros->id}}">{{$tableros->name." ".$tableros->tension}}</option>
            
                                @endforeach
                            </select>                 
               </div>
        </div>
            <input type="text" name="id" id="id" value="{{$id}}" hidden>
            <input type="file" name="file" id="file" class="form-control">

            <input type="submit" value="Enviar">


        </form>
</div>
          

</div>

</div>
           
        
@stop