@extends('layouts.app')
 <!--modal para ingresar una nueva revision  -->
 @section('content')
 
 <div class="modal fade" id="flipFlop" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">               
                <div class="modal-dialog" role="document">
                <div class="modal-content">                
                <div class="modal-header" style="background-color:#B7B9F5">
                <h3 class="modal-title" id="modalLabel">Revisión</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
                </div>
                <br>



                <div class="container-fluid">
                
                
                <form action="{{route('guardar_descripcion_baja')}}" method="POST" >
                    {{csrf_field()}}
               <div class="input-group">
                <div class="input-group-prepend">
                <span class="input-group-text"><strong>Digite descripción</strong></span>
                <textarea type="text" class="form-control" name="descripcion" id="descripcion"  placeholder="Descripción" required></textarea>
                </div>
               </div>
                <br>
                 <div class="input-group">
                <div class="input-group-prepend">
                 <span class="input-group-text"><strong>Digite la fecha</strong></span>
                <input type="date" name="fecha" class="form-control">
                <input type="text" value="{{$id}}" name="id" hidden>
                </div>
              
                </div>
            </div>
           
                <br>
                <div class="modal-footer">
                <button type="submit" class="btn btn-primary">Crear</button>
                </div>
               
                
                </div>
                </form>
                </div>
                </div>

                
                <!-- //funcion para obtener la hora exacta
                    // if (isset($_POST['descripcion'])) {
                    //     $fecha=strftime("%d/%m/%Y");
                    //     $sql="INSERT INTO descripciones_word(idproyecto,descripcion,fecha) VALUES(".$_SESSION['pro'].",'".$_POST['descripcion']."','".$fecha."')";
                    //     $dato=$db->query($sql);
                    //     $sql;

                    // } -->

               

<div class="container-fluid">

<script type="text/javascript">
    document.body.style.zoom = "90%"; 
</script> 

<form action="{{route('save_doc_media')}}" method="POST">
  {{csrf_field()}}
    <div class="row content">
        <div class="col-sm-3">
           
            <div class="panel panel-primary">
                <div class="panel-heading">Codigos</div>
            
               
                    <div class="panel-body">
                    <div class="input-group" style="padding:5px;">
                        <div class="input-group-dependet">                                 
                            <span class="input-group-text">Interno: </span>                            
                        </div>
                        <input type="text" class="form-control" name="CodInterno" id="CodInterno" required="">                         
                    </div> 
                    <div class="input-group" style="padding:5px;">
                        <div class="input-group-dependet">                                 
                            <span class="input-group-text">Externo: </span>
                        </div>
                        <input type="text" class="form-control" name="CodExterno" id="CodExterno" required="">
                    </div>
                    </div>            
               
                </div>
             <div class="panel panel-primary">
                <div class="panel-heading">Responsables</div>
                 <div class="panel-body">

                    <h4>Verifico</h4>
                    
                    <div class="input-group" style="padding:5px;">
                        <div class="input-group-dependet">                                 
                            <span class="input-group-text">Nombre: </span>
                        </div>
                         <input type="text" class="form-control" name="NombVerifi" id="NombVerifi" required="">
                    </div>
                    
                    <div class="input-group" style="padding:5px;">
                        <div class="input-group-dependet">                                 
                            <span class="input-group-text">Matricula: </span>
                        </div>
                         <input type="text" class="form-control"  name="MatriculaVerifi" id="MatriculaVerifi" required="">
                    </div>

                   
                    <h4>Aprobo</h4>

                    <div class="input-group" style="padding:5px;">
                        <div class="input-group-dependet">                                 
                            <span class="input-group-text">Aprobo: </span>
                        </div>
                         <input type="text" class="form-control" name="NombAprobo" id="NombAprobo" required="">
                    </div>

                    <div class="input-group" style="padding:5px;">
                        <div class="input-group-dependet">                                 
                            <span class="input-group-text">Matricula: </span>
                        </div>
                         <input type="text" class="form-control" name="MatriculaAprobo" id="MatriculaAprobo" required="">
                    </div>
                  
           
            </div>
            </div>
            </div>

                
        
        <div class="col-sm-9">
        
              <center><div><h1><font face="Times New Roman">Datos para generar archivo word</font></h1></div></center>
                       
            <div class="form-group">         
                <label for="TxtAreaIntro">Introduccion</label>   
                <textarea name="TxtAreaIntro" class="form-control" id="TxtAreaintro" rows="5" required=""></textarea>
            </div>
            <div class="row content" style="padding:15px;">    
                <div class="input-group"> 
                    <div class="input-group-dependet">                                 
                        <span class="input-group-text">Nombre de la empresa</span>
                        
                    </div>   
                        <input type="text" class="form-control"  name="NombreEmp" id="NombreEmp" placeholder="nombre de la empresa" required="">
                        <input type="text" value="{{$id}}" name="id" hidden>
                </div> 
            </div>
            <button type="submit" class="btn btn-primary" name="boton">Enviar</button>
            </form>
            <div align="right"><button type="button" align="right" class="btn btn-success" data-toggle="modal" data-target="#flipFlop">Agregar Revision</button></div>
            <div id="area" style="display:none;">
            <br>
            <label>Agregar Descripcion de la revision</label>
                <textarea name="txt" id="txt" class="form-control"></textarea>
            </div>
           
        </div>
       </div>





</div>
@stop