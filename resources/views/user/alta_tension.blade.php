@extends('layouts.app')

<script src="{{asset('js/EnviarUpdateAlta.js')}}"></script>

@section('titulo')
<a class="navbar-brand">
{{--boton que activa la funcion de agregar tableros--}}
    <button class="btn btn-primary" onclick="mostrar();">Agregar tablero</button>&nbsp;

{{--boton que activa el modal que sirve para ingresar el documento que importan los datos a cada tablero--}}
    <button class="btn btn-primary" data-toggle="modal" data-target="#flipFlop">Importar datos</button>
    
{{--boton que permite acceder a la funcion para generar el word de la tabla--}}
    <a href="{{ route('archivo_word_media',$id) }}"><button class="btn btn-primary">Descargar word</button></a>&nbsp;&nbsp;
   
{{--boton que permite acceder a la funcion para generar el archivo excel de la tabla--}}
    <a href="{{ route('archivo_excel_alta',$id) }}"><button class="btn btn-primary">Descargar excel</button></a>
 </a>
@stop

@section('content')
<span id="url_actualizaralta" hidden="">
    {{url("actualizar_alta")}}
</span>

{{--tabla--}}
<table   border="1" bordercolor="#0000FF" cellspacing="10" cellpadding="10" id="result" class="fixed_headers" >

        <thead bgcolor="#F9DDDB" style="text-align: center;" class="thead-dark">
            <tr>
                <th rowspan="2">CABLE</th>
                <th rowspan="2" colspan="2">CARGA</th>
                <th colspan="3">DATOS DE ENTRADA</th>
                <th colspan="4">CALCULO DE CORRIENTE</th>
                <th>SELECCIÓN DE CALIBRE CONDUCTOR FASE</th>
                <th colspan="10">VERIFICACIÓN DE CONDUCTOR POR CAPACIDAD DE CORRIENTE</th>
                <th colspan="4">VERIFICACIÓN CONDUCTOR POR REGULACIÓN</th>
                <th colspan="2">SELECCIÓN PROTECCIÓN CONDUCTOR</th>
                <th rowspan="3">CALIBRE MINIMO CONDUCTOR TIERRA (Awg o kcmil)</th>
                <th rowspan="3">TIPO DE CONDUCTOR</th>
                <th rowspan="3">CONDUCTOR SELECCIONADO</th>
            </tr>
            <tr>
                <th colspan="2">POTENCIA DC (KVA=kW=HP*746)</th>
                <th rowspan="2">Un Tensión nominal (Vdc)</th>
                <th rowspan="2">(In) Corriente nominal (A) (A=kVA*1000/VDC)</th>
                <th colspan="2">FACTOR_DE_CARGA_A_APLICAR (K)</th>
                <th rowspan="2">IS Corriente Asignada (A) In*K</th>
                <th rowspan="2">Calibre conductor (Awg o kcmil)</th>
                <th rowspan="2">Medio de instalación (Caso mas critico)</th>
                <th rowspan="2">Tabla NTC 2050 a utlizar</th>
                <th rowspan="2">Ic Capacidad de corriente para un conductor seguntabla utlizada (A)</th>
                <th rowspan="2">N conductores por fase</th>
                <th colspan="2">Conductores Portadores de Corriente Por un un Ducto</th>
                <th colspan="2">Temperatura Promedio del Sitio de Instalación</th>
                <th colspan="2">Ict Capacidad Total de Conductores Por Fase</th>
                <th rowspan="2">L Longitud (km)</th>
                <th>PROPIEDAD CONDUCTORES DE COBRE</th>
                <th rowspan="2" colspan="2">%Reg_Circuitos_DC: %𝑅𝑒𝑔=(2𝐿𝐼_𝑛(𝑅/𝑁))/𝑈_𝑛×100 <=3%CUMPLE</th>
                <th rowspan="3">PROTECCIÓN SELECCIONADA (A)</th>
                <th rowspan="3">VERIFICACIÓN DEE PROTECCIÓN In<=A<=ICT</th>


            </tr>
            <tr>
                <th>TAG</th>
                <th>TAG</th>
                <th>DESCRIPCIÓN</th>
                <th>HP</th>
                <th>kVA = kW</th>
                <th>Valor (K)</th>
                <th>DONDE_SE_APLICA</th>
                <th>Cantidad</th>
                <th>Fn Factor de ajuste</th>
                <th>Rango Temperatura °C</th>
                <th>Ft Factor de ajuste</th>
                <th>Valor</th>
                <th>Verificación Ict>=Is</th>
                <th>Resistencia Rdc</th>
            </tr>
        </thead>
        @php $contador=0;  @endphp
        @foreach($tableros as $project)
        @php $contador++;  @endphp

        <tr>
            <td colspan="30"><button class="btn btn-primary" onclick="mostrar2('{{$contador}}');"><i class="fi-plus"></i></button> {{ $project->name." ".$project->tension }}</td>

        </tr>

      

        @php
        $query= "select * from memoria_altas where tablero_id=".$project->id;
        $memorias = \DB::select($query);
        @endphp

        

        @foreach($memorias as $memoria)
     <form action="{{route('actualizar_alta')}}" method="POST">
    {{csrf_field()}}
    <input type="text" name="id" value="{{$memoria->id}}" hidden>
    <input type="text" name="calibre" value="4/0" hidden>
   {{--<input type="text" name="medio" value="bandeja sin tapa" hidden> --}}
   {{--<input type="text" name="cantidad" value="De 7 a 9" hidden> --}}
   {{--<input type="text" name="temperatura" value="21-25" hidden> --}}
   {--<input type="text" name="proteccion" value="50" hidden> --}}
   {{--<input type="text" name="tipo" value="monopolar" hidden> --}}
   {{--<input type="text" name="NCF" value="2" hidden> --}}
    <input type="submit" value="enviar">
    </form> 
        

        <tr>
        <td>{{$memoria->tag_cable}}</td>
        <td>{{$memoria->tag_carga}}</td>
        <td>{{$memoria->descripcion}}</td>
        <td>{{$memoria->hp}}</td>
        <td>{{$memoria->kva_kw}}</td>
        <td>{{$memoria->tension}}</td>
        <td>{{$memoria->corriente_nominal}}</td>
        <td>{{$memoria->valor_k}}</td>
        <td>{{$memoria->donde_aplica}}</td>
        <td>{{$memoria->corriente_asignada}}</td>
        
        <td style='background-color:#96A6F5;'><select id={{'calibre'.$memoria->id}} onchange='cargar({{$memoria->id}});'>
						<option style='font-weight:bold;' value='0'>{{$memoria->calibre}}</option>
		  				<option value='14'>14</option>
		  				<option value='12'>12</option>
		  				<option value='10'>10</option>
		  				<option value='8'>8</option>
		  				<option value='6'>6</option>
		  				<option value='4'>4</option>
		  				<option value='2'>2</option>
		  				<option value='1/0'>1/0</option>
		  				<option value='2/0'>2/0</option>
		  				<option value='4/0'>4/0</option>
		  				<option value='250'>250</option>
		  				<option value='350'>350</option>
		  				<option value='400'>400</option>
		  				<option value='500'>500</option>
		  			</select></td>

        <td style='background-color:#96A6F5;'>
            <select id={{'medio'.$memoria->id}} onchange='cargar({{$memoria->id}});'>
					<optgroup label='Medio de instalación'>
					<option style='font-weight:bold;' value='0'>{{$memoria->m_instal}}</option>
					<option value='bandeja sin tapa'>bandeja sin tapa</option>
					<option value='bandeja con tapa'>bandeja con tapa</option>
					<option value='tuberia/coraza'>tuberia/coraza</option>
					</optgroup>
			</select>
        </td>

        <td id={{'tabla'.$memoria->id}} >{{$memoria->tabla_2050}}</td>
		<td id={{'capacidad_de_un_conductor'.$memoria->id}}>{{$memoria->capacidad_de_un_conductor}}</td>
		<td><input type='number' value='{{$memoria->nro_con_fases}}' name={{'NCF'.$memoria->id}} id={{'NCF'.$memoria->id}} onchange='cargar({{$memoria->id}});'></td>
        
        <td style='background-color:#96A6F5;'><select id={{'cantidad'.$memoria->id}} onchange='cargar({{$memoria->id}});'>
					<optgroup label='Seleccione Cantidad'>
					<option style='font-weight:bold;' value='0'>{{$memoria->cantidad}}</option>
					<option value='No mas de 3'>No mas de 3</option>
					<option value='De 4 a 6'>De 4 a 6</option>
					<option value='De 7 a 9'>De 7 a 9</option>
					<option value='De 10 a 20'>De 10 a 20</option>
					<option value='De 21 a 30'>De 21 a 30</option>
					<option value='De 31 a 40'>De 31 a 40</option>
					<option value='Mas de 40'>Mas de 40</option>
					</optgroup>
					</select></td>
					<td id={{'factor_de_ajuste_con'.$memoria->id}}>{{$memoria->ajuste_cant}}</td>

        <td style='background-color:#96A6F5;'><select id={{'temperatura'.$memoria->id}} onchange='cargar({{$memoria->id}});'>
					<optgroup label='Rango temperatura'>
					<option style='font-weight:bold;' value='0'>{{$memoria->temperatura}}</option>
					<option value='21-25'>21-25</option>
					<option value='26-30'>26-30</option>
					<option value='31-35'>31-35</option>
					<option value='36-40'>36-40</option>
					<option value='41-45'>41-45</option>
					<option value='46-50'>46-50</option>
					<option value='51-55'>51-55</option>
					<option value='56-60'>56-60</option>
					<option value='61-70'>61-70</option>
					</optgroup>
					</select></td>
					<td id={{'factor_de_ajuste_tem'.$memoria->id}}>{{$memoria->ajuste_temp}}</td>

                    <td id={{'cap_tot_conduc_x_fase'.$memoria->id}}>{{$memoria->cap_tot_conduc}}</td>

                    @if($memoria->cap_tot_conduc>=$memoria->corriente_asignada)
                        <td id={{'con1'.$memoria->id}}>Cumple</td>
                    @else
                        <td id={{'con1'.$memoria->id}}>No Cumple</td>
                    @endif
                    

                    <td>{{$memoria->longitud}}</td>
					<td id={{'resistencia'.$memoria->id}}>{{$memoria->resistencia}}</td>
					<td id={{'regulacion'.$memoria->id}}>{{$memoria->regulacion}}</td>

                    @if($memoria->regulacion<=3)
                        <td id={{'con2'.$memoria->id}}>Cumple</td>
                    @else
                        <td id={{'con2'.$memoria->id}}>No Cumple</td>
                    @endif

                    <td style='background-color:#96A6F5;'><select id={{'proteccion'.$memoria->id}} onchange='cargar({{$memoria->id}});'>
					<optgroup label='Seleccione proteccion'>
					<option style='font-weight:bold;' value='0'>{{$memoria->proteccion}}</option>
					<option value='15'>15</option>
					<option value='20'>20</option>
					<option value='30'>30</option>
					<option value='40'>40</option>
					<option value='60'>60</option>
					<option value='100'>100</option>
					<option value='200'>200</option>
					<option value='300'>300</option>
					<option value='400'>400</option>
					<option value='500'>500</option>
					<option value='600'>600</option>
					<option value='800'>800</option>
					<option value='1000'>1000</option>
					<option value='1200'>1200</option>
					<option value='1600'>1600</option>
					<option value='2000'>2000</option>
					<option value='2500'>2500</option>
					<option value='3000'>3000</option>
					<option value='4000'>4000</option>
					<option value='5000'>5000</option>
					<option value='6000'>6000</option>
					
					
					</optgroup>
			 		</select></td>

                     @if($memoria->proteccion>=$memoria->corriente_nominal and $memoria->proteccion<=$memoria->cap_tot_conduc)
                        <td id={{'con3'.$memoria->id}}>Cumple</td>
                     @else
                        <td id={{'con3'.$memoria->id}}>No Cumple</td>
                     @endif

                    <td id={{'calibre_min'.$memoria->id}}>{{$memoria->calibre_min}}</td>

                    <td style='background-color:#96A6F5;'><select id={{'tipo'.$memoria->id}} onchange='cargar({{$memoria->id}});'>
                        <option style='font-weight:bold;' value='0'>{{$memoria->tipo_conductor}}</option>
                        <option value='monopolar'>monopolar</option>
						<option value='multiconductor'>multiconductor</option>
					</select></td>
					<td id={{'conductor_selecc'.$memoria->id}}>{{$memoria->conductor_selec}}</td>

        </tr>
       @endforeach
      

        <tr id="{{ $contador }}" style="display:none;" class="tr">
            <form action="{{route('memorias_alta')}}" method="POST">
                {{csrf_field()}}
                <input type="text" name="tablero_id" value="{{$project->id}}" hidden>

                <input type="text" name="tension" value="{{$project->tension}}" hidden>

                <input type="text" name="project" value="{{$id}}" hidden>

                <td><input type="text" name="tag_cable"></td>

                  <td><input type="text" name="tag_carga"></td>
                  
                  <td><input type="text" name="desc"></td>
                  		  			
		  		<td colspan="2"><input type="number" name="potencia">
		  		<select name="pot">
		  			<optgroup>tipo de voltaje
		  				<option value="hp">hp</option>
		  				<option value="kva">kva</option>
		  			</optgroup>
		  		</select>
                      </td>
                      
                <td></td>
                      
                <td></td>
                  
		  		<td><select name="k">
		  			<option value="1">1</option>
		  			<option value="1.15">1.15</option>
		  			<option value="1.25">1.25</option>
		  			<option value="1.65">1.65</option>
                </select></td>
                      
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
				<td><input type="number" step="any" name="longitud"></td>
		  		<td></td>
		  		<td></td>
		  		<td></td>
				<td></td>
		  		<td></td>
				<td></td>
		  		<td></td>
		  		<td></td>
		  		<td><button type="submit" class="btn btn-primary">Enviar</button></td>
            </form>
        </tr>
        @endforeach
         {{-- generar la fila en la cual se digita el tablero cuando se preiona el boto(agregar tablero) --}}
         <tr id="none" style="display:none;">
            <form action="{{route('tablero_alta')}}" method="POST" >
                    {{ csrf_field() }}
        <td colspan="10">
            <input name="name" id="name" type="text" placeholder="Digite el nombre del tablero">

            <select name="tension" id="tension">
                <option value='24'>24 V</option>
                <option value='48'>48 V</option>
                <option value='125'>125 V</option>
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
        <form action="{{route('importar_alta')}}" method="POST" enctype="multipart/form-data">
                {{ csrf_field() }}

                @php
                $query="select * from tablero_altas where project_id=".$id;
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