@extends('layouts.app')
<meta name="csrf-token" content="{{csrf_token()}}"/>

{{-- @include('Js.EnviarUpdateBaja') --}}

<script src="{{asset('js/EnviarUpdateBaja.js')}}"></script>



@section('titulo')



<a class="navbar-brand">
    <button class="btn btn-primary" onclick="mostrar();">Agregar tablero</button>&nbsp;
    {{-- <button class="btn btn-primary" onclick="mostrar2();">Agregar carga</button> --}}
<button class="btn btn-primary" data-toggle="modal" data-target="#flipFlop">Importar datos</button>
<a href="{{ route('archivo_word',$id) }}"><button class="btn btn-primary">Descargar word</button></a>&nbsp;&nbsp;
    <a href="{{ route('archivo_excel',$id) }}"><button class="btn btn-primary">Descargar excel</button></a>
 </a>
@stop


@section('content')

<table   border="1" bordercolor="#0000FF" cellspacing="5" cellpadding="5" id="result" class="fixed_headers">
        <thead>
            <tr align="center" bgcolor="#F9DDDB">
                <th colspan="3" rowspan="2" >CARGA QUE ALIMENTA</th>
                <th colspan="8">DATOS DE ENTRADA</th>
                <th colspan="3">CÁLCULOS  DE CORRIENTE</th>
                <th>SELECCIÓN CALIBRE CONDUCTOR FASES DE COBRE</th>				
                <th colspan="9">VERIFICACIÓN CONDUCTOR POR CAPACIDAD DE CORRIENTE</th>
                <th colspan="7">VERIFICACIÓN DE CONDUCTOR POR REGULACIÓN</th>
                <th colspan="3">TIPOS DE CABLES SELECCIONADOS</th>
                <th colspan="3">SELECCIÓN PROTECCIÓN DE CONDUCTOR</th>
                <th colspan="2" rowspan="2">Conductor Tierra</th>
            </tr>
            <tr align="center" bgcolor="#F9DDDB">					
                <th rowspan="2">COS Ø <b><font color="red">(Factor_de_potencia)(Escribir el valor con coma)</font></b></th>
                <th colspan="3">kW=HP*0,746<br>kVA=kW/fp</th>
                <th rowspan="2">Número de fases</th>
                <th colspan="5" align="center">Formula para corriente nominal<br>3F:  A=kva*1000/(raiz(3)*V)<br>1F,2F:   A=kva*1000/V</th>
                <th>In*1,25</th>
                <th rowspan="2">Calibre_conductor (EN COBRE)<br><b><font color="red"> (AWG o kcmil)</font></b></th>					
                <th rowspan="2">Medio de instalación<br><b><font color="red">(caso_mas_critico)</font></b></th>
                <th rowspan="2">Tabla_NTC 2050 a utlizar</th>
                <th rowspan="2">(Ict)<br>cap._de_1_conductor (A)<br><b><font color="red">(segun tabla utilizada)</font></b></th>
                <th rowspan="2">Número de conductores por fase</th>
                <th colspan="2">Conductores portadores de corriente por un ducto (no aplica bandejas portacables en este caso FN1)</th>
                <th colspan="2">Temperatura promedio sitio de instalación</th>
                <th colspan="2">Cap._total_de conductores x fase<br><b><font color="red">(Ic * N * Fn * Ft)</font></b></th>
                <th rowspan="2">Longitud <font color="red">(Metros)</font></th>
                <th colspan="3">Propiedades de conductores de cobre</th>
                <th colspan="2">SELECCIÓN_CALIBRE_CONDUCTORES FASES DE COBRE<br><br>3F %𝑅𝑒𝑔=  (√3 𝐿𝐼 𝑛 ((𝑅∕𝑁)  cos⁡Ø+(𝑋𝐿∕𝑁)  sin⁡Ø ))/𝑈𝑛 ×100<br>1F y 2F %𝑅𝑒𝑔= (2LIn ((𝑅∕𝑁)  cos⁡Ø+(𝑋_𝐿∕𝑁)  sin⁡Ø))/𝑈𝑛 ×100</th>
                <th colspan="2">Conductor neutro</th>
                
                <th rowspan="2">conductor_seleccionado</th>
                <th colspan="3">El ajuste de la protección no debe superar la capacidad del conductor seleccionado</th>
            </tr>
            <!--nombre de los campos que componen la tabla -->
            <tr align="center" bgcolor="#F9DDDB">
                <th>TAG_Conductor</th>
                <th>TAG_carga</th>
                <th>Descripción Carga</th>					
                <th>Potencia (HP)</th>
                <th>Potencia (kW)</th>
                <th>Potencia (kVA)</th>
                <th>Número de hilos</th>
                <th>Lleva_neutro?<br><b><font color="red">(SI/NO)</font></b></th>
                <th>Tipo_de_cable_requerido</th>
                <th>Tensión nominal<br><b><font color="red">(V)</font></b></th>
                <th>(In) Corriente nominal<br><b><font color="red">(A)</font></b></th>
                <th>(Is)<br> Corriente asignada<br><b><font color="red">(A)</font></b></th>
                <th>Cant._de_portadores de corriente</th>
                <th>(Fn)<br>factor_de_ajuste</th>
                <th>Rango de temperatura C°</th>
                <th>(Ft)<br>Factor de ajuste</th>
                <th>Valor</th>
                <th>Condición<br>Ict>=Is</th>					
                <th>Reactancia <br><b><font color="red">(XL)</font></b></th>
                <th>Resistencia <br><b><font color="red">(RAC)</font></b></th>
                <!--<th>COS 0 <b><font color="red">(Factor_de_potencia)</font></b></th>-->
                <th>SENO <b><font color="red">(arcos fp)</font></b></th>
                <th>Regulación<b><font color="red">(<=3% Cumple)</font></b></th>
                <th>Cumple</th>
                <th>Conductores_x_neutro</th>
                <th>Calibre_x_neutro<br><b><font color="red">(AWG o kcmil)</font></b></th>
                <th>Protección seleccionada<br><b><font color="red">(A)</font></b></th>
                <th>Ajustable<br><b><font color="red">(A)</font></b></th>
                <th>Cumple con la Protección_seleccionada<br><b><font color="red">(A)</font></b></th>
                <th>Conductores por tierra</th>
                <th>Calibre conductor<br><b><font color="red">(AWG o kcmil)</font></b></th>
            </tr>
            @php $contador=0;  @endphp
            @foreach($tableros as $project)
            @php $contador++;  @endphp

            <tr>
            
                <td colspan="39"><button class="btn btn-primary" onclick="mostrar2('{{$contador}}');"><i class="fi-plus"></i></button> {{ $project->name." ".$project->tension }}</td>
                
            
            </tr>
            
           

            @if(Session::get('Modal_type')=='create')

            @php 

             $query = "select * from memoria_bajas where tablero_id=".$project->id;
             $consulta = \DB::select($query);

            
            
            @endphp

            @foreach($consulta as $memorias)
            {{-- <form action="{{route('actualizar_baja')}}" method="POST">

                {{csrf_field()}}
                <input type="text" name="id" value="{{$memorias->id}}" hidden>
                <input type="text" name="rango" value="0" hidden>
                <input type="text" name="calibre" value="4" hidden>
                <input type="text" name="medio" value="0" hidden>
                <input type="text" name="cantCD" value="0" hidden>
                <input type="text" name="NCF" value="2" hidden>
                <!--<input type="text" name="proteccion" value="0" hidden>-->
                <input type="text" name="ajustable" value="0" hidden>
                <input type="text" name="tipocable" value="Vfd" hidden>
                <input type="text" name="neutro" value="0" hidden>
                <input type="submit" value="enviar">

            </form> --}}
           
            <tr>

                <span id="url_actualizarbaja" hidden="">
                    {{url("actualizar_baja")}}
                </span>
                {{-- posicionar en la tabla los resultados de las consultas almacenadas en la base de datos --}}
                <td id='conductor'>{{$memorias->conductor}}</td>
                <td id='carga'>{{$memorias->carga}}</td>
                <td id='descripcion_carga'>{{$memorias->descripcion_carga}}</td>
                <td id='factor_de_potencia'>{{$memorias->factor_de_potencia}}</td>
                <td id='potencia_hp'>{{$memorias->potencia_hp}}</td>
                <td id='potencia_kw'>{{$memorias->potencia_kw}}</td>
                <td id='potencia_kva'>{{$memorias->potencia_kva}}</td>
                <td id='nro_fases'>{{$memorias->nro_fases}}</td>
                <td id='{{"nro_hilos".$memorias->id}}'>{{$memorias->nro_hilos}}</td>

                <td style='background-color:#96A6F5;'>
                    <select id={{"neutro".$memorias->id}} onchange='cargar({{$memorias->id}});' class="form-control">
                        <option style='font-weight:bold;' value="0">{{$memorias->neutro}}</option>
                        <option value="Si">Si</option>  
                        <option value="No">No</option>  
                    </select>
                    
                </td>
                <td style='background-color:#96A6F5;'>
                    
                    <select id={{"tipocable".$memorias->id}} onchange='cargar({{$memorias->id}});' class="form-control">
                        <option style='font-weight:bold;' value="0">{{$memorias->tipo_cab}}</option>
                        <option value="Monopolar">monopolar</option>
                        <option value="Multiconductor">multiconductor</option>
                        <option value="Vfd">vfd</option>
                    </select>
                    

                
                </td>
                <td id='tension_nominal'>{{$memorias->tension_nominal}}</td>
                <td id='corriente_nominal'>{{$memorias->corriente_nominal}}</td>
                <td id='corriente_asignada'>{{$memorias->corriente_asignada}}</td>
            
                {{-- actualizar a tiempo real el calibre del conductor --}}
                <td style='background-color:#96A6F5;'>
                       @if($memorias->tipo_cab=="VFD" or $memorias->tipo_cab=="Vfd" or $memorias->tipo_cab=="vfd")

                        <select id={{"calibre".$memorias->id}} onchange='cargar({{$memorias->id}});' class="form-control">
                                <optgroup label='Seleccione Calibre'>
                                <option style='font-weight:bold; ' value="0">{{$memorias->calibre_conductor}}</option>
                                <option value="14">14</option>
                                <option value="12">12</option>
                                <option value="10">10</option>
                                <option value="8">8</option>
                                <option value="6">6</option>
                                <option value="4">4</option>
                                <option value="2">2</option>
                                <option value="1/0">1/0</option>
                                <option value="2/0">2/0</option>
                                <option value="3/0">3/0</option>
                                <option value="4/0">4/0</option>
                                <option value="250">250</option>
                                <option value="350">350</option>
                                <option value="400">400</option>
                                <option value="500">500</option>
                                <option value="750">750</option>
                                <option value="1000">1000</option>
                                </optgroup>
                            </select>
                            
                   
                   @else
                    <select id={{"calibre".$memorias->id}} onchange='cargar({{$memorias->id}});' class="form-control">
                            <optgroup label='Seleccione Calibre'>
                            <option style='font-weight:bold; ' value="0">{{$memorias->calibre_conductor}}</option>
                            <option value="14">14</option>
                            <option value="12">12</option>
                            <option value="10">10</option>
                            <option value="8">8</option>
                            <option value="6">6</option>
                            <option value="4">4</option>
                            <option value="2">2</option>
                            <option value="1/0">1/0</option>
                            <option value="2/0">2/0</option>
                            <option value="3/0">3/0</option>
                            <option value="4/0">4/0</option>
                            <option value="250">250</option>
                            <option value="350">350</option>
                            <option value="400">400</option>
                            <option value="500">500</option>
                            <option value="750">750</option>
                            <option value="1000">1000</option>
                            </optgroup>
                        </select>
                        @endif
                </td>

                <td style='background-color:#96A6F5;'>
                    <select id={{"medio".$memorias->id}} onchange='cargar({{$memorias->id}});' class="form-control">
                        <optgroup label='Medio de instalación'>
                        <option style='font-weight:bold;' value="0">{{$memorias->medio_de_instal}}</option>
                        <option value='bandeja sin tapa'>bandeja sin tapa</option>
                        <option value='bandeja con tapa'>bandeja con tapa</option>
                        <option value='tuberia/coraza'>tuberia/coraza</option>
                        </optgroup>
                    </select>
                </td>

                <td id='{{"tabla_ntc_2050_utilizar".$memorias->id}}'>{{$memorias->tabla_2050}}</td>
                <td id={{'capacidad_de_un_conductor'.$memorias->id}}>{{$memorias->capacidad_de_un_conductor}}</td>
                
            <td style='background-color:#96A6F5;'><input type='number' value='{{$memorias->nro_de_conductores_x_fase}}' id={{'NCFN'.$memorias->id}} onchange='cargar({{$memorias->id}});' class="form-control"></td>
            
                <td style='background-color:#96A6F5;'>
                    <select id={{'cantCD'.$memorias->id}} onchange='cargar({{$memorias->id}});' class="form-control">
                        <optgroup label='Seleccione Cantidad'>
                        <option style='font-weight:bold;' value="0">{{$memorias->cantidad}}</option>
                        <option value="No más de 3">No más de 3</option>
                        <option value="De 4 a 6">De 4 a 6</option>
                        <option value="De 7 a 9">De 7 a 9</option>
                        <option value="De 10 a 20">De 10 a 20</option>
                        <option value="De 21 a 30">De 21 a 30</option>
                        <option value="De 31 a 40">De 31 a 40</option>
                        <option value="Más de 40">Más de 40</option>
                        </optgroup>
                    </select>
                </td>

                <td id={{'factor_de_ajuste_con'.$memorias->id}}>{{$memorias->factor_de_ajuste_con}}</td>

                <td style='background-color:#96A6F5;'>
                    <select id={{'rango'.$memorias->id}} onchange='cargar({{$memorias->id}});' class="form-control">
                        <optgroup label='Rango temperatura'>
                        <option style='font-weight:bold;' value="0">{{$memorias->rango_temperatura}}</option>
                        <option value="21-25">21-25</option>
                        <option value="26-30">26-30</option>
                        <option value="31-35">31-35</option>
                        <option value="36-40">36-40</option>
                        <option value="41-45">41-45</option>
                        <option value="46-50">46-50</option>
                        <option value="51-55">51-55</option>
                        <option value="56-60">56-60</option>
                        <option value="61-70">61-70</option>
                        </optgroup>
                    </select>
                </td>


            <td id={{'factor_de_ajuste_temp'.$memorias->id}}>{{$memorias->factor_de_ajuste_tem}}</td>
            <td id={{'cap_tot_conduc_x_fase'.$memorias->id}}>{{$memorias->cap_tot_conduc}}</td>

            @if($memorias->cap_tot_conduc>=$memorias->corriente_asignada)
            <td id={{'con1'.$memorias->id}} bgcolor='#E9DBD3'>Cumple</td>
            @else
            <td id={{'con1'.$memorias->id}} bgcolor='#E9DBD3'>No Cumple</td>
            @endif

            <td id='longitud_km'>{{$memorias->longitud_metros}}</td>
			<td id={{'reactan'.$memorias->id}}>{{$memorias->reactancia}}</td>
			<td id={{'resisten'.$memorias->id}}>{{$memorias->resistencia}}</td>
			<!--<td id={{'factor_de_potencia'.$memorias->id}}>{{$memorias->factor_de_potencia}}</td>-->
			<td id='arcos_fp'>{{$memorias->sen}}</td>
            <td id={{'regulacion'.$memorias->id}}>{{$memorias->regulacion."%"}}</td>

            @if($memorias->regulacion<=5)
            <td id={{'con2'.$memorias->id}} bgcolor='#E9DBD3'>Cumple</td>
            @else
            <td id={{'con2'.$memorias->id}} bgcolor='#E9DBD3'>No Cumple</td>
            @endif

            <td id={{'conductores_neutro'.$memorias->id}}>{{$memorias->conductores_neutro}}</td>
            <td id={{'calibre_conduc_neu'.$memorias->id}}>{{$memorias->calibre_conduc_neu}}</td>
            <td id={{'conductor_selecc'.$memorias->id}}>{{$memorias->conductor_selecc}}</td>

             <td style='background-color:#96A6F5;'>

                <input type="number" name="proteccion" value="" id={{'proteccion'.$memorias->id}} onchange='cargar({{$memorias->id}});' class="form-control">
                

                <button type="submit" class="btn btn-primary" onclick="cargar({{ $memorias->id }});" value="" >OK</button><br>
                <div id="valor{{$memorias->id}}">{{$memorias->proteccion_selec}}<div>
                <td id={{'ajustable'.$memorias->id}}>{{$memorias->ajustable}}</td>

                </td>

            <!--<td style='background-color:#96A6F5;'>
                <select id={{'proteccion'.$memorias->id}} onchange='cargar({{$memorias->id}});' class="form-control">
				<optgroup label='Seleccione proteccion'>
                  <option style='font-weight:bold;' value='0'>{{$memorias->proteccion_selec}}</option>
                    
                   <td id={{'calibre_tierra'.$memorias->id}}>{{$memorias->calibre_tierra}}</td>
					<option value='15'>15</option>
					<option value='16'>16</option>
					<option value='20'>20</option>
					<option value='25'>25</option>
                    <option value='30'>30</option>
					<option value='32'>32</option>
					<option value='40'>40</option>
					<option value='50'>50</option>
                    <option value='60'>60</option>
                    <option value='63'>63</option>
                    <option value='80'>80</option>
					<option value='100'>100</option>
					<option value='125'>125</option>
                    <option value='150'>150</option>
                    <option value='160'>160</option>
					<option value='175'>175</option>
					<option value='200'>200</option>
                    <option value='225'>225</option>
					<option value='250'>250</option>
                    <option value='320'>320</option>
					<option value='400'>400</option>
					<option value='500'>500</option>
					<option value='630'>630</option>
					<option value='800'>800</option>
					<option value='1250'>1250</option>
                    <option value='1500'>1500</option>
					<option value='1600'>1600</option>
                    <option value='1750'>1750</option>
					<option value='2000'>2000</option>
					<option value='2500'>2500</option>
					
					
					</optgroup>-->

                    
           <!--<td id={{'proteccion'.$memorias->id}}>{{$memorias->proteccion_selec}}</td>-->
             

           <!--<td id={{'ajustable'.$memorias->id}}>{{$memorias->ajustable}}</td>-->


            @if($memorias->proteccion_selec>=$memorias->corriente_nominal and $memorias->proteccion_selec<=$memorias->cap_tot_conduc)
            <td id={{'con3'.$memorias->id}} bgcolor='#E9DBD3'>Cumple</td>
            @else
            <td id={{'con3'.$memorias->id}} bgcolor='#E9DBD3'>No Cumple</td>
            @endif

            

            <td id={{'conductores_tierra'.$memorias->id}}>{{$memorias->conductor_tierra}}</td>


			<td id={{'calibre_tierra'.$memorias->id}}>{{$memorias->calibre_tierra}}</td>
            
            
            <td><a class="btn btn-danger" href="{{ route('delete_file',$memorias->id) }}">Eliminar</a></td>

            
    
            </tr>
            @endforeach
            
            @endif
           
            
           
            {{-- fila oculta que se dezpliega al presionar boton agregar carga --}}
            <tr id="{{ $contador }}" style="display:none;" class="tr">
                    <form action="{{route('memorias')}}" method="POST">
                            {{ csrf_field() }}
                        <input type="text" name="tablero_id" value="{{$project->id}}" hidden>

                        <input type="text" name="tension" value="{{$project->tension}}" hidden>

                        <input type="text" name="project" value="{{$id}}" hidden>
        
                        <td><input type="text" name="conductor" required></td>
        
                        <td><input type="text" name="carga" id="" required></td>
        
                        <td><input type="text" name="descripcion" id="" required></td>
        
                        <td><input type="number" name="factor_de_potencia" step="any" required></td>
        
                        <td colspan="3">
                            <input type="number" name="potencia" step="any" required>
        
                            <select name="tipo" id="tipo">
                                <option value="hp">HP</option>
                                <option value="kw">kW</option>
                                <option value="kva">kVA</option>
                            </select>
        
                        </td>
        
                        <td><input type="number" name="nro_fases" id="" required></td>

                        <td></td>
                        
                        <td>
                            <select name="neutro" id="">
                                <option value="Si">Si</option>  
                                <option value="No">No</option>  
                            </select>
                        </td>
                        
        
                        <td>
                            <select name="tipo_cable" id="">
                                <option value="Monopolar">monopolar</option>
                                <option value="Multiconductor">multiconductor</option>
                                <option value="Vfd">vfd</option>
                            </select>
                        </td>

                        <td>

                        
                        
                         
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
                        <td><input type="number" name="longitud_m" step="any" required=""></td>
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
                        
                        
                        
                        
                        
                        <td><td><button type="submit" class="btn btn-primary">Guardar</button></td></td>
                    </form>
                    </tr>
            @endforeach
            <div >
                

            {{-- generar la fila en la cual se digita el tablero cuando se preiona el boto(agregar tablero) --}}
            <tr id="none" style="display:none;">
                    <form action="{{route('tablero')}}" method="POST" >
                            {{ csrf_field() }}
                            <td colspan="10">
                    <input name="name" id="name" required="" type="text" placeholder="Digite el nombre del tablero">

                    <select name="tension" id="tension">
                        <option value='120'>120 V</option>
						<option value='127'>127 V</option>
						<option value='208'>208 V</option>
						<option value='220'>220 V</option>
                        <option value='254'>254 V</option>
                        <option value='266'>266 V</option>
                        <option value='277'>277 V</option>
						<option value='440'>440 V</option>
						<option value='460'>460 V</option>
						<option value='480'>480 V</option>
                    </select>

                    <input type="text" name="project_id" value="{{$id}}" hidden>

                    <button type="submit" class="btn btn-primary">Guardar</button>

                </td>
            </form>
            </tr>

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
                    <form action="{{route('importar_baja')}}" method="POST" enctype="multipart/form-data">
                            {{ csrf_field() }}

                            @php
                            $query="select * from tablero_bajas where project_id=".$id;
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
                        <br>
                        <label for="">Seleccione archivo</label>
                        <input type="file" name="file" id="file" class="form-control">

                            </div>

                             </div>

                          <div class="modal-footer">
                                    <button type="submit" class="btn btn-success btn-block" name="btnRegistrar"><span ></span> Enviar</button>
                            </div>


                    </form>
           
</div>
            
</thead>

@stop