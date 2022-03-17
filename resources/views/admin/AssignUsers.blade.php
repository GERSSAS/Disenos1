@extends('layouts.app')


<script src="https://code.jquery.com/jquery-3.3.1.min.js"integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.js"></script>



@section('content')

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
    
     
         <!-- Importamos el modal -->
         {{-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <style>
      .modal-header, h4, .close {
          background-color: #4784BE;
          color:white !important;
          text-align: center;
          font-size: 30px;
      }
      .modal-footer {
          background-color: #f9f9f9;
      }
      </style> --}}
    
    {{-- <script>
        $(document).ready(function(){
            $("#myBtn").click(function(){
                $("#myModal").modal('show');
            });
          
          
        });
    
    
    
    
        
    </script> --}}
    {{-- <script>
        function editar(param) {  
        document.getElementById('ID-usuario').value=param['id'];
        document.getElementById('nombre-usuarioE').value=param['nombre'];
        document.getElementById('correoE').value=param['correo'];
        document.getElementById('passwordE').value=param['password'];
        document.getElementById('matriculaE').value=param['matricula'];
          
            $("#myModalEditar").modal();
        }
     
    </script> --}}
    
    
    </head>
    <body>    
        <div class="container-fluid" id="divstyle">
            <div class="content"><div class="col-sm-3"><h3>Bienvenido:{{auth()->user()->name}} </h3></div>
            </div>       
        </div>
        
        <div class="container-fluid">          
    
    
        </div>
            <div class="container-fluid">

                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#flipFlop">
                            Añadir usuario
                        </button>

                <!-- Modal para agregar usuario -->
                <div class="modal fade" id="flipFlop" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">               
                        <div class="modal-dialog" role="document">
                        <div class="modal-content">                
                        <div class="modal-header" style="padding:35px 50px;">
                         <h4><span ></span> Registrar</h4>
                        
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                        </div>
                        
                        <div class="modal-content" style="padding:40px 50px;">
                        <div class="container-fluid">
                        
                        
                      
                        <form role="form" action="{{ route('user/create') }}" method="POST">
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
                                <label for="password"><span ></span> Contraseña</label>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Ingrese la contraseña para el usuario" required="">
                            </div>
                            
                            <div class="form-group">
                                <label for="matricula"><span ></span> Matricula </label>
                                <input type="text" class="form-control" id="matricula" name="matricula" placeholder="Ingrese la Matricula profesional" required="">
                            </div>

                            <div class="form-group">
                                    <label ><span ></span> Rol </label>
                                   <select name="role_name" >
                                    @foreach($roles as $rol)
                                   <option value="{{$rol->name}}">{{ $rol->name }}</option>
                                   
                                    @endforeach

                                   </select>
                                </div>

                        
                    </div>
                    </div>
                        
                        <div class="modal-footer">
                                <button type="submit" class="btn btn-success btn-block" name="btnRegistrar"><span ></span> Registrar</button>
                        </div>
                       
                        
                        </div>
                        </form>
                        </div>  
                    </div>



                    @if(Session::has('message'))
                    <div class="alert alert-primary alert-dismissible" role="alert">
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                      {{Session::get('message')}}
                    </div>
                    @endif


                <table id="usuarios-table" class="display">
                    <thead>
                        <tr>
                  
                            <th>Nombre usuario</th>
                            <th>Correo</th>
                            <th>Contraseña</th>
                            <th>Matricula</th>
                            <th>Acciones</th>
                            
                            
                        </tr>
                    </thead>
                    <tbody>
                @foreach($users as $user)
                <tr>

                <td>
                    {{ $user->name }}
                </td>

            <td>{{ $user->email }}</td>

            <td>{{ $user->password }}</td>
            <td></td>
                <td>

                <button type="button" class="btn btn-success" data-id="{{ $user->id }}" data-toggle="modal" data-target="#editar_{{ $user->id }}">Editar</button>
                
                
                <!-- Modal para editar usuario -->
                <div class="modal fade" id="editar_{{ $user->id }}" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">               
    <div class="modal-dialog" role="document">
    <div class="modal-content">                
    <div class="modal-header" style="padding:35px 50px;">
     <h4><span ></span>Editar usuario</h4>
    
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
    <span aria-hidden="true">&times;</span>
    </button>
    </div>
    
    <div class="modal-content" style="padding:40px 50px;">
    <div class="container-fluid">
    
    
  
    <form role="form" action="{{ route('user/update',$user->id) }}" method="POST">
            {{ csrf_field() }} {{ method_Field('PUT') }}
        <div class="form-group">
            <label for="name"><span ></span> Nombre usuario</label>
        <input type="text" class="form-control" id="name" name="name" value="{{ $user->name }}" placeholder="Ingresa el nombre del usuario" required="">
        </div>

        <div class="form-group">
            <label for="correo"><span ></span> Correo</label>
            <input type="text" class="form-control" id="email" name="email" value="{{ $user->email }}" placeholder="Ingresa el correo del usuario" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@['gerscali.com']+['gers.com.co']" required="">
        </div>

        <div class="form-group">
            <label for="password"><span ></span> Contraseña</label>
            <input type="password" class="form-control" id="password" name="password" value="{{ $user->password }}" placeholder="Ingrese la contraseña para el usuario" required="">
        </div>
        
        <div class="form-group">
            <label for="matricula"><span ></span> Matricula </label>
            <input type="text" class="form-control" id="matricula" name="matricula" value="{{ $user->matricula }}" placeholder="Ingrese la Matricula profesional" required="">
        </div>
      
      

            
            
        
            
       
        
    
</div>
</div>
    
    <div class="modal-footer">
            <button type="submit" class="btn btn-success btn-block" name="btnRegistrar"><span ></span> Editar</button>
    </div>
   
    
    </div>
    </form>
    </div>
    </div>
                
                {{-- boton eliminar --}}
                <form action="{{ route('user/destroy',$user->id)}}" method="POST" style="display:inline">
                {{ csrf_field() }} {{ method_field('DELETE') }}

                <button type="submit" class="btn btn-danger">Eliminar</button>

                </form>
                

                </td>

                </tr>
                  @endforeach 
                    </tbody>
                   
                </table>
                
            </div>
      
        </div>
    
@stop