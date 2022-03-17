<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('/', function () {
    return view('welcome');
})->middleware('guest');;

Route::post('solicitar','Auth\LoginController@Apply_for')->name('solicitar');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


Route::group(['middleware' => 'auth'], function (){

    Route::post('actions','AdminController@store')->name('user/create');

    Route::put('actions/{user}','AdminController@update')->name('user/update');

    Route::delete('actions/{user}','AdminController@destroy')->name('user/destroy');

    Route::get('todos_proyectos','AdminController@all_projects')->name('todos_proyectos');

    Route::get('habilitar/{id}','AdminController@enable_project')->name('habilitar');

   //rutas para los usuarios
   
    Route::post('Memories','UserController@store')->name('create.project');

    Route::get('Memories/{project}','UserController@show')->name('show.project');

    

    Route::post('Memories/{project}','UserController@search_memories')->name('buscar_memorias');

    Route::get('cambiar/{id}',function($id){
    return view('user.password',compact('id'));
    })->name('cambiar');

    Route::post('password','UserController@change_password')->name('password');
    
    //  Route::get('Memories/{project}/tension/{cod}','UserController@memories')->name('Memories');

    Route::get('Memories/{project}/tension','UserController@low_memory')->name('Memories');

    Route::get('Memories2/{project}/tension','UserController@average_memory')->name('Memories2');

    Route::get('Memories3/{project}/tension','UserController@high_memory')->name('Memories3');

    Route::get('listar_proyectos','UserController@search_projects')->name('listar_proyectos');
       
    Route::get('delete_project/{id}','UserController@delete')->name('delete_project');

    //rutas para memorias de baja tension

    Route::post('tablero','ControllerBaja@save_board')->name('tablero');
    
    Route::post('memorias','ControllerBaja@save_memories')->name('memorias');

    Route::post('actualizar_baja','ControllerBaja@update_baja')->name('actualizar_baja');

    Route::get('archivo_excel/{id}','ControllerBaja@file_excel')->name('archivo_excel');

    Route::get('archivo_word/{id}', function($id){
            return view('user.doc_word',compact('id'));
    })->name('archivo_word');

    Route::post('save_doc','ControllerBaja@save_doc')->name('save_doc');

    Route::post('importar_baja','ControllerBaja@import_low_file')->name('importar_baja');

    Route::post('guardar_descripcion_baja','ControllerBaja@save')->name('guardar_descripcion_baja');

    Route::get('delete_file/{id}','ControllerBaja@deletef')->name('delete_file');


     //rutas para memorias de media tensión
  
    Route::post('tablero_media','ControllerMedia@save_mediun_table')->name('tablero_media');

    Route::post('memorias_media','ControllerMedia@save_mediun_memories')->name('memorias_media');

    Route::get('archivo_excel_media/{id}','ControllerMedia@file_excel_media')->name('archivo_excel_media');

    Route::post('actualizar_media','ControllerMedia@update_media')->name('actualizar_media');

    Route::post('importar_media','ControllerMedia@import_mediun_file')->name('importar_media');

    Route::get('word_media/{id}', function($id){
        return view('user.doc_word_media',compact('id'));
    })->name('word_media');

    Route::post('save_doc_media','ControllerMedia@save_doc_media')->name('save_doc_media'); 
    
    //rutas para memorias de alta tensión

    Route::post('tablero_alta','ControllerAlta@save_high_table')->name('tablero_alta');

    Route::post('memorias_alta','ControllerAlta@save_high_memories')->name('memorias_alta');

    Route::get('archivo_excel_alta/{id}','ControllerAlta@file_excel_alta')->name('archivo_excel_alta');

    Route::post('guardar_descripcion','ControllerAlta@save')->name('guardar_descripcion');
  
    Route::get('archivo_word_media/{id}', function($id){
        return view('user.doc_word_alta',compact('id'));
    })->name('archivo_word_media');

    Route::post('save_doc_alta','ControllerAlta@save_doc_alta')->name('save_doc_alta');

    Route::post('importar_alta','ControllerAlta@import_high_file')->name('importar_alta');

    Route::post('actualizar_alta','ControllerAlta@update_alta')->name('actualizar_alta');



});
