<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;
use Illuminate\Http\File;
use PhpOffice\PhpWord\TemplateProcessor;
use PhpOffice\PhpWord\PhpWord;
use App\Project;
use App\Tablero_baja;
use App\Memoria_baja;
use App\tablero_media;
use Illuminate\Support\Facades\Storage;
use Session;

class ControllerBaja extends Controller
{
 
//funcion utilizada para guardar los tableros de las tablas de baja tension
    public function save_board(Request $request)
    {
        $tablero = new Tablero_baja;
 
        $tablero->name=$request->name;
 
        $tablero->tension=$request->tension;
 
        $tablero->project_id=$request->project_id;
 
        $tablero->save();
 
     return back();
    }

    public $temporal = "";
    //Funcion para agregar nuevas cargas a un tablero
    public function save_memories(Request $request)
    {
        //Calcular los valores de las potencia cuando el tipo de potencia digitada es hp
        if ($request->tipo=="HP" or $request->tipo=="Hp" or $request->tipo=="hp") {
            $pothp=$request->potencia;
 
            $potkw=$request->potencia*0.746;
 
            $potkva=$potkw/$request->factor_de_potencia;
        }
 
        //Calcular los valores de las potencia cuando el tipo de potencia digitada es kw
        if ($request->tipo=="KW" or $request->tipo=="Kw" or $request->tipo=="kw") {
            $pothp=$request->potencia/0.746;
 
            $potkw=$request->potencia;
 
            $potkva=$potkw/$request->factor_de_potencia;
        }
 
        //Calcular los valores de las potencia cuando el tipo de potencia digitada es kva
        if ($request->tipo=="KVA" or $request->tipo=="Kva" or $request->tipo=="kva") {
            $potkw=$request->potencia*$request->factor_de_potencia;
 
            $pothp=$potkw/0.746;
 
            $potkva=$request->potencia;
        }
 
        //formula para calcular el numero de hilos que se utilizaran
        if ($request->neutro=="si" or $request->neutro=="Si" or $request->neutro=="SI") {
            $hilos=$request->nro_fases+2;
        } else {
            $hilos=$request->nro_fases+1;
        }
        //formula para determinar la corriente nominal del conductor dependiendo el numero de fases
        if ($request->nro_fases==1 or $request->nro_fases==2) {
            $Cnominal=$potkva*1000/$request->tension;
        }
        if ($request->nro_fases==3) {
            $raiz=sqrt(3);
            $Cnominal=($potkva*1000)/($raiz*$request->tension);
        }
 
        //formula para calcular la corriente asignada del conductor
        $Casignada=$Cnominal*1.25;
 
        //formula para hallar el seno del conductor
        $acos= acos($request->factor_de_potencia);
        $seno= sin($acos);

        $longitud_kil=$request->longitud_m/1000;

    

        //recomendar calibre
        if ($request->tipo_cable=="VFD" or $request->tipo_cable=="Vfd" or $request->tipo_cable=="vfd") {
            if ($Casignada<20) {
                $calibre_sug='12';
                $cap=25;
                
            }
 
            if ($Casignada>=20 and $Casignada<25) {
                $calibre_sug='12';
                $cap=25;
                
            }
            if ($Casignada>=25 and $Casignada<35) {
                $calibre_sug='10';
                $cap=35;
                
            }
            if ($Casignada>=35 and $Casignada<50) {
                $calibre_sug='8';
                $cap=50;
                
            }
            if ($Casignada>=50 and $Casignada<65) {
                $calibre_sug='6';
                $cap=65;
                
            }
            if ($Casignada>=65 and $Casignada<85) {
                $calibre_sug='4';
                $cap=85;
                
            }
            if ($Casignada>=85 and $Casignada<115) {
                $calibre_sug='2';
                $cap=115;
                
            }
            if ($Casignada>=115 and $Casignada<150) {
                $calibre_sug='1/0';
                $cap=150;
                
            }
            if ($Casignada>=150 and $Casignada<175) {
                $calibre_sug='2/0';
                $cap=175;
                
            }
            if ($Casignada>=175 and $Casignada<200) {
                $calibre_sug='3/0';
                $cap=200;
            }
            if ($Casignada>=200 and $Casignada<230) {
                $calibre_sug='4/0';
                $cap=230;
                
            }
            if ($Casignada>=230 and $Casignada<255) {
                $calibre_sug='250';
                $cap=255;
            }
            if ($Casignada>=255 and $Casignada<310) {
                $calibre_sug='350';
                $cap=310;
            }
        
            if ($Casignada>=310) {
                $calibre_sug='500';
                $cap=380;
            }
        } else {
            if ($Casignada<20) {
                $calibre_sug='12';
                $cap=25;
            }

            if ($Casignada>=20 and $Casignada<25) {
                $calibre_sug='12';
                $cap=25;
            }
            if ($Casignada>=25 and $Casignada<35) {
                $calibre_sug='10';
                $cap=35;
            }
            if ($Casignada>=35 and $Casignada<50) {
                $calibre_sug='8';
                $cap=50;
            }
            if ($Casignada>=50 and $Casignada<65) {
                $calibre_sug='6';
                $cap=65;
            }
            if ($Casignada>=65 and $Casignada<85) {
                $calibre_sug='4';
                $cap=85;
            }
            if ($Casignada>=85 and $Casignada<115) {
                $calibre_sug='2';
                $cap=115;
            }
            if ($Casignada>=115 and $Casignada<150) {
                $calibre_sug='1/0';
                $cap=150;
            }
            if ($Casignada>=150 and $Casignada<175) {
                $calibre_sug='2/0';
                $cap=175;
            }
            if ($Casignada>=175 and $Casignada<200) {
                $calibre_sug='3/0';
                $cap=200;
            }
            if ($Casignada>=200 and $Casignada<230) {
                $calibre_sug='4/0';
                $cap=230;
            }
            if ($Casignada>=230 and $Casignada<255) {
                $calibre_sug='250';
                $cap=255;
            }
            if ($Casignada>=255 and $Casignada<310) {
                $calibre_sug='350';
                $cap=310;
            }
            if ($Casignada>=310 and $Casignada<335) {
                $calibre_sug='400';
                $cap=335;
            }
            if ($Casignada>=335 and $Casignada<380) {
                $calibre_sug='500';
                $cap=380;
            }
            if ($Casignada>=380 and $Casignada<475) {
                $calibre_sug='750';
                $cap=475;
            }
            if ($Casignada>=475 and $Casignada<545) {
                $calibre_sug='1000';
                $cap=545;
            }
            if ($Casignada>=545) {
                $calibre_sug='1000';
                $cap=545;
            }
        }

        //resistencia recomendada
        $query ="select * from int_baja_tension where calibre='".$calibre_sug."'";
        //    exit();
        $consulta = \DB::select($query);
        foreach ($consulta as $key) {
            $reactancia=$key->reactancia;
            $resistencia=$key->resistencia_AC;
        }

                

        //hallar la  regulacion del conductor
        if ($request->nro_fases==1 or $request->nro_fases==2) {
            $r1=2*$longitud_kil*$Cnominal;
        
            $r2=($resistencia/1)*0.8;
        
            $r3=($reactancia/1)*0.6;
        
            $regulacion=$r1*($r2+$r3)*100/$request->tension;
        }
   

        if ($request->nro_fases==3) {
            $raiz=sqrt(3);
            $r1=$raiz*$longitud_kil*$Cnominal;
        
            $r2=($resistencia/1)*0.8;
            $r3=($reactancia/1)*0.6;
        
            $regulacion=$r1*($r2+$r3)*100/$request->tension;
        }

        //funcion para calucular la proteccion ajustable de acerdo al la prteccion que se digite
    
        $ajustable="";

            if ($request->proteccion>=15 and $request->proteccion<20) {
                $ajustable="11-16";
             }
            if ($request->proteccion>=20 and $request->proteccion<25) {
                $ajustable="18-25";
            }
            if ($request->proteccion>=25 and $request->proteccion<32) {
                $ajustable="22-32";
            }
            if ($request->proteccion>=32 and $request->proteccion<40) {
                $ajustable="28-40";
            }
            if ($request->proteccion>=40 and $request->proteccion<50) {
                $ajustable="35-50";
            }
            if ($request->proteccion>=50 and $request->proteccion<63) {
                $ajustable="44-63";
            }
            if ($request->proteccion>=63 and $request->proteccion<80) {
                $ajustable="56-80";
            }
            if ($request->proteccion>=80 and $request->proteccion<100) {
                $ajustable="70-100";
            }
            if ($request->proteccion>=100 and $request->proteccion<125) {
                $ajustable="87-125";
            }
            if ($request->proteccion>=125 and $request->proteccion<160) {
                $ajustable="112-160";
            }
            if ($request->proteccion>=160 and $request->proteccion<200) {
                $ajustable="140-200";
            }
            if ($request->proteccion>=200 and $request->proteccion<250) {
                $ajustable="175-250";
            }
            if ($request->proteccion>=250 and $request->proteccion<320) {
                $ajustable="160-320";
            }
            if ($request->proteccion>=320 and $request->proteccion<400) {
                $ajustable="160-400";
            }
            if ($request->proteccion>=400 and $request->proteccion<500) {
                $ajustable="250-500";
            }
            if ($request->proteccion>=500 and $request->proteccion<630) {
                $ajustable="250-630";
            }
            if ($request->proteccion>=630 and $request->proteccion<800) {
                $ajustable="300-700";
            }
            if ($request->proteccion>=800 and $request->proteccion<1250) {
                $ajustable="400-1000";
            }
            if ($request->proteccion>=1250 and $request->proteccion<1500) {
                $ajustable="900-1400";
            }
            if ($request->proteccion>=1500 and $request->proteccion<2500) {
                $ajustable="1350-2100";
            }
            if ($request->proteccion>=2500) {
                $ajustable="1980-3080";
            }  

            
            
           

            /*$query ="select * from ajustable where fija='".$ajustable."'";
            //    exit();
            $consulta = \DB::select($query);
            foreach ($consulta as $key) {
                $proteccion=$key->ajustable;
            }
       */
    
       //seleccionar conductor
       $let="C";
       $T="AWG";
       $ref=" THHN/THWN-2 TC 600V";
       $contierra="";
       $calibredos="";

   if ($request->tipo_cable=="monopolar" or $request->tipo_cable=="Monopolar" or $request->tipo_cable=="MONOPOLAR") {
       $contierra="1";
            if ($request->proteccion>=15) {
                $calibredos="14";
            }
            if ($request->proteccion>=16 and $request->proteccion<20) {
                $calibredos="12";
            }
            if ($request->proteccion>=20 and $request->proteccion<25) {
                $calibredos="12";
            }
            if ($request->proteccion>=25 and $request->proteccion<63) {
                $calibredos="10";
            }
            if ($request->proteccion>=63 and $request->proteccion<125) {
                $calibredos="8";
            }
            if ($request->proteccion>=125 and $request->proteccion<225) {
                $calibredos="6";
            }
            if ($request->proteccion>=225 and $request->proteccion<320) {
                $calibredos="4";
            }
            if ($request->proteccion>=320 and $request->proteccion<500) {
                $calibredos="3";
            }
            if ($request->proteccion>=500 and $request->proteccion<630) {
                $calibredos="2";
            }
            if ($request->proteccion>=630 and $request->proteccion<1250) {
                $calibredos="1/0";
            }
            if ($request->proteccion>=1250 and $request->proteccion<1750) {
                $calibredos="4/0";
            }
            if ($request->proteccion>=1750 and $request->proteccion<2500) {
                $calibredos="250";
            }
            if ($request->proteccion>=2500) {
                $calibredos="400";
            }
            $cond_selec="1".$let." X ".$request->nro_fases."F"." N°".$calibre_sug.$T."+"."/n".
                        "1".$let." X "."1"." N°".$calibre_sug.$T ."+"."/n"
                        ."1".$let." X "."1"."T".$calibredos.$T.$ref;
   }

   if ($request->tipo_cable=="multiconductor" or $request->tipo_cable=="Multiconductor" or $request->tipo_cable=="MULTICONDUCTOR") {
       $cond_selec=$hilos."X".$calibre_sug.""."+"." ". "AWG ".$ref;
       $contierra="1";
       $calibredos=$request->calibre;
   }
   
   if ($request->tipo_cable=="VFD" or $request->tipo_cable=="Vfd" or $request->tipo_cable=="vfd") {
       $contierra="3";
       if ($request->calibre == "14" or $request->calibre == "12"){
        $calibredos = 18;
        }
        if ($request->calibre == "10" or $request->calibre == "8"){
        $calibredos = 14;
        }
        if ($request->calibre == "6" or $request->calibre == "4"){
        $calibredos = 12;
        }
        if ($request->calibre == "2" or $request->calibre == "1/0" or $request->calibre == "2/0"){
        $calibredos = 10;
        }
        if ($request->calibre == "4/0"){
        $calibredos = 8;
        }
       $query = "select * from cables_vfd where calibre='".$calibre_sug."'";
    //    exit();
       $consulta = \DB::select($query);
       foreach ($consulta as $cable) {
           $cond_selec=$cable->tipo;
         }
       }
   

       
       
       //neutros
       if ($request->neutro=="Si") {
        $conneutro=1;
        $calneutro=$calibre_sug;
    } else {
        $conneutro="No Aplica";
        $calneutro="No Aplica";
    }
       
 
     //insertar datos a la tabla memoria bajas
     $memoria = new Memoria_baja;
 
     $memoria->conductor=$request->conductor;
 
     $memoria->carga=$request->carga;
        
     $memoria->descripcion_carga=$request->descripcion;
 
     $memoria->longitud_km=$longitud_kil;

     $memoria->longitud_metros=$request->longitud_m;
 
     $memoria->potencia_hp=round($pothp,2);
 
     $memoria->potencia_kw=round($potkw,2);
 
     $memoria->potencia_kva=round($potkva,2);
 
     $memoria->nro_fases=$request->nro_fases;
 
     $memoria->nro_hilos=$hilos;
 
     $memoria->neutro=$request->neutro;
 
     $memoria->tipo_cab=$request->tipo_cable;
 
     $memoria->tension_nominal=$request->tension;
 
     $memoria->corriente_nominal=round($Cnominal,2);
 
     $memoria->corriente_asignada=round($Casignada,2);
 
     $memoria->factor_de_potencia=$request->factor_de_potencia;

     $memoria->calibre_conductor=$calibre_sug;

     $memoria->medio_de_instal="Tuberia/coraza";

     $memoria->tabla_2050="310-16";

     $memoria->ajustable=$ajustable;

     $memoria->proteccion_selec=$request->proteccion;

     $memoria->calibre_tierra=$calibredos;

     $memoria->capacidad_de_un_conductor=$cap;

     $memoria->nro_de_conductores_x_fase=1;

     $memoria->cantidad="No más de 3";

     $memoria->factor_de_ajuste_con=1;

     $memoria->rango_temperatura="26-30";

     $memoria->factor_de_ajuste_tem=1;

     $memoria->cap_tot_conduc=$cap;

     $memoria->reactancia=$reactancia;

     $memoria->resistencia=$resistencia;

     $memoria->regulacion=round($regulacion,2);
 
     $memoria->sen=$seno;

     $memoria->conductor_tierra=$contierra;

     $memoria->conductores_neutro = $conneutro;

     $memoria->calibre_conduc_neu = $calneutro;

     $memoria->conductor_selecc=$cond_selec;
 
     $memoria->tablero_id=$request->tablero_id;
 
     $memoria->project_id=$request->project;
 
     $memoria->save();
 
     $form = Session::flash('Modal_type', 'create');

     $temporal = $request->proteccion;
     
 
     return back();
 
    }

    public function update_baja(Request $request)
    {
     
        $memoria = Memoria_baja::find($request->id);

        if ( $request->calibre=="0") {
			$request->calibre=$memoria->calibre_conductor;
			}

        if ($request->medio=="0") {
            $request->medio=$memoria->medio_de_instal;
            }

        if ($request->cantCD=="0") {
            $request->cantCD=$memoria->cantidad;
            }

        if ($request->rango=="0") {
            $request->rango=$memoria->rango_temperatura;
            }
        if ($request->proteccion=="0") {
            $request->proteccion=$memoria->proteccion_selec;
            }

        if ($request->neutro=="0") {
            $request->neutro=$memoria->neutro;
            }
        if ($request->tipocable=="0") {
            $request->tipocable=$memoria->tipo_cab;
            }
            // dd($request->medio);
    
            //proteccion ajustable

            $ajustable="";

            if ($request->proteccion>=15 and $request->proteccion<20) {
                $ajustable="11-16";
            }
            if ($request->proteccion>=20 and $request->proteccion<25) {
                $ajustable="18-25";
            }
            if ($request->proteccion>=25 and $request->proteccion<32) {
                $ajustable="22-32";
            }
            if ($request->proteccion>=32 and $request->proteccion<40) {
                $ajustable="28-40";
            }
            if ($request->proteccion>=40 and $request->proteccion<50) {
                $ajustable="35-50";
            }
            if ($request->proteccion>=50 and $request->proteccion<63) {
                $ajustable="44-63";
            }
            if ($request->proteccion>=63 and $request->proteccion<80) {
                $ajustable="56-80";
            }
            if ($request->proteccion>=80 and $request->proteccion<100) {
                $ajustable="70-100";
            }
            if ($request->proteccion>=100 and $request->proteccion<125) {
                $ajustable="87-125";
            }
            if ($request->proteccion>=125 and $request->proteccion<160) {
                $ajustable="112-160";
            }
            if ($request->proteccion>=160 and $request->proteccion<200) {
                $ajustable="140-200";
            }
            if ($request->proteccion>=200 and $request->proteccion<250) {
                $ajustable="175-250";
            }
            if ($request->proteccion>=250 and $request->proteccion<320) {
                $ajustable="160-320";
            }
            if ($request->proteccion>=320 and $request->proteccion<400) {
                $ajustable="160-400";
            }
            if ($request->proteccion>=400 and $request->proteccion<500) {
                $ajustable="250-500";
            }
            if ($request->proteccion>=500 and $request->proteccion<630) {
                $ajustable="250-630";
            }
            if ($request->proteccion>=630 and $request->proteccion<800) {
                $ajustable="300-700";
            }
            if ($request->proteccion>=800 and $request->proteccion<1250) {
                $ajustable="400-1000";
            }
            if ($request->proteccion>=1250 and $request->proteccion<1500) {
                $ajustable="900-1400";
            }
            if ($request->proteccion>=1500 and $request->proteccion<2500) {
                $ajustable="1350-2100";
            }
            if ($request->proteccion>=2500) {
                $ajustable="1980-3080";
            }

        //}

            // se le asigna a el campo que se digita una variable de ajustable para que almacene el valor
            $memoria->ajustable =$ajustable;


            //$memoria->calibre_conductor = $calibre2;

            /*$query ="select * from ajustable where fija='".$ajustable."'";
            //    exit();
                        $consulta = \DB::select($query);
                        foreach ($consulta as $key) {
                            //$proteccion_selec=$key->fija;
                            $ajustable=$key->ajustable;
                        }        

           */


            //calcular la capacidad de un conductor
            if (isset($request->calibre)) {
              
                // dd($resistencia);
                if ($request->medio=="bandeja sin tapa" or $request->medio=="Bandeja sin tapa") {
                    $query = "select * from int_baja_tension where calibre='".$request->calibre."'";
                    $consulta = \DB::select($query);
                    
                    foreach ($consulta as $key) {
                        $cal_uno=$key->t310_t17;
                    }
                    $totcal1=$cal_uno*0.65;
                }
               
            
                if ($request->medio=="bandeja con tapa" or $request->medio=="Bandeja con tapa") {
                    $query = "select * from int_baja_tension where calibre='".$request->calibre."'";
                    $consulta = \DB::select($query);
                    

                    foreach ($consulta as $key) {
                        $cal_uno=$key->t310_t17;
                    }

                    $totcal1=$cal_uno*0.60;
                }


                if ($request->medio=="tuberia/coraza" or $request->medio=="Tuberia/coraza") {
                    $query = "select * from int_baja_tension where calibre='".$request->calibre."'";
                    $consulta = \DB::select($query);
                    $tabla="310-16";
                   
                    foreach ($consulta as $key) {
                        $totcal1=$key->t310_t16;
                    }
                }
                // dd($request->cantCD);
            }
            

            if ($request->medio=="bandeja sin tapa" or $request->medio=="Bandeja sin tapa") {
                $tabla="310-69 al 75%";
            }
    
            if ($request->medio=="bandeja con tapa" or $request->medio=="Bandeja con tapa") {
                $tabla="310-69 al 70%";
            }
    
            if ($request->medio=="tuberia/coraza" or $request->medio=="Tuberia/coraza") {
                $tabla="310-16";
            }


            //consultar la reactancia y la resistencia dependiendo el calibre elegido
            if (isset($request->calibre)) {
                $query = "select * from int_baja_tension where calibre='".$request->calibre."'";
                $consulta = \DB::select($query);
                foreach ($consulta as $key) {
                    $reactancia=$key->reactancia;
                    $resistencia=$key->resistencia_AC;
                }
            }

            //determinar el valor del ajuste dependiendo la cantidad que se halla elegido
            if ($request->cantCD=="No más de 3") {
                $Fajustecant=1.0;
                
            }
            if ($request->cantCD=="De 4 a 6") {
                $Fajustecant=0.8;
            }
            if ($request->cantCD=="De 7 a 9") {
                $Fajustecant=0.7;
            }
            if ($request->cantCD=="De 10 a 20") {
                $Fajustecant=0.5;
            }
            if ($request->cantCD=="De 21 a 30") {
                $Fajustecant=0.45;
            }
            if ($request->cantCD=="De 31 a 40") {
                $Fajustecant=0.4;
            }
            if ($request->cantCD=="Más de 40") {
                $Fajustecant=0.35;
            }

             //seleccionar el ajuste dependiendo el rango de temperatura seleccionado

             if ($request->rango=="21-25") {
                 $Fajustetemp=1.5;
             }
             if ($request->rango=="26-30") {
                 $Fajustetemp=1.0;
             }
             if ($request->rango=="31-35") {
                 $Fajustetemp=0.94;
             }
             if ($request->rango=="36-40") {
                 $Fajustetemp=0.88;
             }
             if ($request->rango=="41-45") {
                 $Fajustetemp=0.82;
             }
             if ($request->rango=="46-50") {
                 $Fajustetemp=0.75;
             }
             if ($request->rango=="51-55") {
                 $Fajustetemp=0.67;
             }
             if ($request->rango=="56-60") {
                 $Fajustetemp=0.58;
             }
             if ($request->rango=="61-70") {
                 $Fajustetemp=0.33;
             }

             $fajusc=@$Fajustecant;
             $fajust=@$Fajustetemp;
         
             $memoria->factor_de_ajuste_con = $fajusc;
             $memoria->factor_de_ajuste_tem = $fajust;

             $memoria->capacidad_de_un_conductor=$totcal1;

             $cap_tot=$memoria->capacidad_de_un_conductor*$request->NCFN*$memoria->factor_de_ajuste_con*$memoria->factor_de_ajuste_tem;


             $resis=@$resistencia;
             $reac=@$reactancia;
         
             $memoria->resistencia = $resis;
             $memoria->reactancia = $reac;


             if (isset($request->NCFN)) {
                if ($memoria->nro_fases==1 or $memoria->nro_fases==2) {

                    $r1=2*$memoria->longitud_km*$memoria->corriente_nominal;
                    
                    $r2=($memoria->resistencia/$request->NCFN)*$memoria->factor_de_potencia;
                    
                    $r3=($memoria->reactancia/$request->NCFN)*$memoria->sen;
                    
                    $regulacion=$r1*($r2+$r3)*100/$memoria->tension_nominal;
                }
               
        
                if ($memoria->nro_fases==3) {
                   
                       $raiz=sqrt(3);
                       $r1=$raiz*$memoria->longitud_km*$memoria->corriente_nominal;
                    
                       $r2=($memoria->resistencia/$request->NCFN)*$memoria->factor_de_potencia;
                       $r3=($memoria->reactancia/$request->NCFN)*$memoria->sen;
                    
                       $regulacion=$r1*($r2+$r3)*100/$memoria->tension_nominal;
                   }
            }

           

            if(@$regulacion<=3){
                $con2="Cumple";
            }else{
                $con2="No Cumple";
            }

            


            if (isset($request->calibre)) {
                if ($request->neutro=="Si") {
                    $conneutro=$request->NCFN;
                    $calneutro=$request->calibre;
                    $hilo=$memoria->nro_fases+2;
                } else {
                    $conneutro="No Aplica";
                    $calneutro="No Aplica";
                    $hilo=$memoria->nro_fases+1;
                }
            }
            
            $memoria->nro_hilos=$hilo;
            $memoria->nro_de_conductores_x_fase=$request->NCFN;
            //aqui se se le asigna a la variable numero de conductores por fase lo que digite en el imput de conductores por fase

            $let="C";
			$T="AWG";
            $ref=" THHN/THWN-2 TC 600V";
            $contierra="";
            $calibredos="";

       if (isset($request->calibre)){
		if ($request->tipocable=="monopolar" or $request->tipocable=="Monopolar" or $request->tipocable=="MONOPOLAR") {
            $contierra="1";
            if ($request->proteccion>=15) {
                $calibredos="14";
            }
            if ($request->proteccion>=16 and $request->proteccion<20) {
                $calibredos="12";
            }
            if ($request->proteccion>=20 and $request->proteccion<25) {
                $calibredos="12";
            }
            if ($request->proteccion>=25 and $request->proteccion<63) {
                $calibredos="10";
            }
            if ($request->proteccion>=63 and $request->proteccion<125) {
                $calibredos="8";
            }
            if ($request->proteccion>=125 and $request->proteccion<225) {
                $calibredos="6";
            }
            if ($request->proteccion>=225 and $request->proteccion<320) {
                $calibredos="4";
            }
            if ($request->proteccion>=320 and $request->proteccion<500) {
                $calibredos="3";
            }
            if ($request->proteccion>=500 and $request->proteccion<630) {
                $calibredos="2";
            }
            if ($request->proteccion>=630 and $request->proteccion<1250) {
                $calibredos="1/0";
            }
            if ($request->proteccion>=1250 and $request->proteccion<1750) {
                $calibredos="4/0";
            }
            if ($request->proteccion>=1750 and $request->proteccion<2500) {
                $calibredos="250";
            }
            if ($request->proteccion>=2500) {
                $calibredos="400";
            }
            $cond_selec=$memoria->nro_de_conductores_x_fase.$let." X ".$memoria->nro_fases."F"." N°".$request->calibre.$T."+".
            $memoria->nro_de_conductores_x_fase.$let." X "."1"." N°".$request->calibre.$T."+\n".
            "1".$let." X "."1"." T "." N°".$calibredos.$T."+\n".$ref;
        } 

		if ($request->tipocable=="multiconductor" or $request->tipocable=="Multiconductor" or $request->tipocable=="MULTICONDUCTOR") {
            $cond_selec=$memoria->nro_hilos."X".$request->calibre.""." AWG ".$ref;
            $contierra="1";
            $calibredos = $request->calibre;
        }
		
        if ($request->tipocable=="VFD" or $request->tipocable=="Vfd" or $request->tipocable=="vfd") {
            
            if ($request->calibre>=1 and $request->calibre<=500) {
                $query = "select * from cables_vfd where calibre='".$request->calibre."'";
                $contierra="3";
                if ($request->calibre == "14" or $request->calibre == "12"){
                    $calibredos = 18;
                }
                if ($request->calibre == "10" or $request->calibre == "8"){
                    $calibredos = 14;
                }
                if ($request->calibre == "6" or $request->calibre == "4"){
                    $calibredos = 12;
                }
                if ($request->calibre == "2" or $request->calibre == "1/0" or $request->calibre == "2/0"){
                    $calibredos = 10;
                }
                if ($request->calibre == "4/0"){
                    $calibredos = 8;
                }
                $consulta = \DB::select($query);
                foreach ($consulta as $cable) {
                    $cond_selec=$cable->tipo;
                }
            }
            }
        }

        //se tare de los datos dijitados en el calibre y se le agrega una variable que va a determinar elvalor del calibre tierra
        $memoria->calibre_tierra=$calibredos;
// dd($cond_selec);

        if(isset($request->proteccion)){

        if ($request->tipocable=="multiconductor" or $request->tipocable=="Multiconductor" or $request->tipocable=="MULTICONDUCTOR") {
            $query = "select * from tabla_250_95_ntc where intensidad=".$request->proteccion;
        
            $consulta = \DB::select($query);
            foreach ($consulta as $cable) {
                $calibre2=$cable->calibre;
            }
        }
       
    }
    // $capt=@$cap_tot;
    $memoria->cap_tot_conduc=$cap_tot;

    if($memoria->cap_tot_conduc>=$memoria->corriente_asignada){
        $con1="Cumple";
    }else{
        $con1="No cumple";
    }

    if($request->proteccion>=$memoria->corriente_asignada and $request->proteccion<=$memoria->cap_tot_conduc){
        $con3="Cumple";
    }else{
        $con3="No cumple";
    }



    if (isset($request->NCFN)) {
        $conductierra=$memoria->nro_de_conductores_x_fase=$contierra;
    }

    //@$calibredos=@$calibre2;
    @$conductor=@$cond_selec;
    $conduct=@$conductierra;
    
    
    @$reactan=@$reactancia;
    @$resisten=@$resistencia;
    
    $reg=round(@$regulacion,2);
    $conneu=@$conneutro;
    $calneu=@$calneutro;
    $conuno=@$con1;
    $condos=@$con2;
    $contres=@$con3;


    echo "#$tabla#$totcal1#$fajusc#$fajust#$cap_tot#$conuno#$reac#$resis#$reg#$condos#$conneu#$calneu#$conductor#$conduct#$calibredos#$contres#$hilo#$ajustable#$request->proteccion#$request->NCFN";
    
    $memoria->calibre_conductor=$request->calibre;
    $memoria->medio_de_instal=$request->medio;
    $memoria->tabla_2050=$tabla;
    
    
    $memoria->cantidad=$request->cantCD;
    $memoria->factor_de_ajuste_con=$fajusc;
    $memoria->rango_temperatura=$request->rango;
    $memoria->factor_de_ajuste_tem=$fajust;
    $memoria->tipo_cab=$request->tipocable;
    $memoria->reactancia=$reac;
    $memoria->resistencia=$resis;
    $memoria->regulacion=$reg;
    $memoria->conductores_neutro=$conneutro;
    $memoria->calibre_conduc_neu=$calneutro;
    $memoria->conductor_tierra=$conduct=$contierra;
    $memoria->ajustable=$ajustable;
    $memoria->proteccion_selec=$request->proteccion;
    $memoria->calibre_tierra=$calibredos;
    $memoria->conductor_selecc=$cond_selec;
    $memoria->nro_hilos=$hilo;
    $memoria->nro_de_conductores_x_fase=$request->NCFN;
    $memoria->neutro=$request->neutro;
    $memoria->save();
      
    }

    public function file_excel($id)
    
    {
         
        $sheet = \PhpOffice\PhpSpreadsheet\IOFactory::load(Storage_path('plantillas/baja.xlsx'));
      //Seleccionamos la hoja
        $sheet->setActiveSheetIndex(0);

        //Obtenemos sus datos
        $activeSheet = $sheet->getActiveSheet();

        $con=14;

        $query= "select * from tablero_bajas where project_id=".$id;
        $tableros = \DB::select($query);

        foreach($tableros as $tablero){
            //combinar las celdas para insertar el tablero
            $activeSheet->mergeCells("A$con:AJ$con");

            //agregar el tablero
            $activeSheet->setCellValue("A$con", $tablero->name."  ".$tablero->tension);

            //darle un tamaño especifico a cada fila en el excel
            $activeSheet->getRowDimension($con)->setRowHeight(30);
            $con++;

            //consulta para traer las memorias correspondiente a cada tablero
            $query= "select * from memoria_bajas where tablero_id=".$tablero->id;
            $memorias = \DB::select($query);

            foreach($memorias as $memoria){
                
					$activeSheet->setCellValue("A$con", $memoria->conductor)
					->setCellValue("B$con", $memoria->carga)
					->setCellValue("C$con", $memoria->descripcion_carga)
					->setCellValue("D$con", $memoria->factor_de_potencia)
					->setCellValue("E$con", $memoria->potencia_hp)
					->setCellValue("F$con", $memoria->potencia_kw)
					->setCellValue("G$con", $memoria->potencia_kva)
					->setCellValue("H$con", $memoria->nro_fases)
					->setCellValue("I$con", $memoria->tension_nominal)
					->setCellValue("J$con", $memoria->corriente_nominal)
					->setCellValue("K$con", $memoria->corriente_asignada)
					->setCellValue("L$con", $memoria->calibre_conductor)
				    ->setCellValue("M$con", $memoria->medio_de_instal)
					->setCellValue("N$con", $memoria->tabla_2050)
					->setCellValue("O$con", $memoria->capacidad_de_un_conductor)
					->setCellValue("P$con", $memoria->nro_de_conductores_x_fase)
					->setCellValue("Q$con", $memoria->cantidad)
					->setCellValue("R$con", $memoria->factor_de_ajuste_con)
					->setCellValue("S$con", $memoria->rango_temperatura)
					->setCellValue("T$con", $memoria->factor_de_ajuste_tem)
					->setCellValue("U$con", $memoria->cap_tot_conduc)
					->setCellValue("V$con", ($memoria->cap_tot_conduc>=$memoria->corriente_asignada)?'Cumple':'No cumple')	
					->setCellValue("W$con", $memoria->longitud_km)			
					->setCellValue("X$con", $memoria->reactancia)
					->setCellValue("Y$con", $memoria->resistencia)
					->setCellValue("Z$con", $memoria->factor_de_potencia)
					->setCellValue("AA$con", $memoria->sen)
					->setCellValue("AB$con", $memoria->regulacion)
					->setCellValue("AC$con", ($memoria->regulacion<=5)?'Cumple':'No cumple')
					->setCellValue("AD$con", $memoria->conductores_neutro)
					->setCellValue("AE$con", $memoria->calibre_conduc_neu)
					->setCellValue("AF$con", $memoria->conductor_selecc)
					->setCellValue("AG$con", $memoria->proteccion_selec)            
                    ->setCellValue("AH$con", $memoria->ajustable)
					->setCellValue("AI$con", ($memoria->proteccion_selec>=$memoria->corriente_nominal && $memoria->proteccion_selec<=$memoria->cap_tot_conduc && $memoria->proteccion_selec<=$memoria->cap_tot_conduc)?'Cumple':'No cumple')
                    ->setCellValue("AJ$con", $memoria->conductor_tierra)
                    ->setCellValue("AK$con", $memoria->calibre_tierra);
                    $activeSheet->getRowDimension($con)->setRowHeight(20);
                    $con++;
                    
            }

            // for ($i='A'; $i !=  $activeSheet->getHighestColumn();  $i++) { 
            //     $styleArray = array(
            //         'borders' => array(
            //             'outline' => array(
            //                 'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THICK,
            //                 'color' => array('argb' => 'FFFF0000'),
            //             ),
            //         ),
            //     );
            //     $activeSheet ->getStyle($i)->applyFromArray($styleArray);
            // }

            
        }

        $cantidad=$activeSheet->getHighestRow();

        for ($i=14; $i <=$cantidad ; $i++) {
            $styleArray = array(
                'borders' => array(
                    'outline' => array(
                        'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                        'color' => array('argb' => '000000'),
                    ),
                ),
            );

            $activeSheet ->getStyle('A'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('B'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('C'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('D'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('E'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('F'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('G'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('H'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('I'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('J'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('K'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('L'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('M'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('N'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('O'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('P'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('Q'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('R'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('S'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('T'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('U'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('V'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('W'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('X'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('Y'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('Z'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('AA'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('AB'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('AC'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('AD'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('AE'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('AF'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('AG'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('AH'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('AI'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('AJ'.$i)->applyFromArray($styleArray);
            $activeSheet ->getStyle('AK'.$i)->applyFromArray($styleArray);
            

        }

         //Creamos el writer
        $writer = new \PhpOffice\PhpSpreadsheet\Writer\Xlsx($sheet);
        
        //guardamos el archivo en la carpeta public/plantillas
        $writer->save(public_path('plantillas/baja.xlsx'));


        return response()->download(public_path('plantillas/baja.xlsx'));
    }

    public function save_doc(Request $request)
    {
        // dd($request->CodInterno);
        $templateProcessor= new TemplateProcessor(Storage_path('plantillas/plantilla_baja.docx'));
        $fecha=strftime("%d/%m/%Y");
        $año=date("Y");
// dd($fecha);
        $templateProcessor->setValue('nombre_pro',$request->NombreEmp);
        $templateProcessor->setValue('NOMBRE_PRO',$request->NombreEmp);
        $templateProcessor->setValue('codigo_int',$request->CodInterno);
        $templateProcessor->setValue('CODIGO_INT',$request->CodInterno);
        $templateProcessor->setValue('codigo_ext',$request->CodExterno);
        $templateProcessor->setValue('nombre_ver',$request->NombVerifi);
        $templateProcessor->setValue('matricula_ver',$request->MatriculaVerifi);
        $templateProcessor->setValue('nombre_apr',$request->NombAprobo);
        $templateProcessor->setValue('matricula_apr',$request->MatriculaAprobo);
        $templateProcessor->setValue('nombre_emp',$request->empresa);
        $templateProcessor->setValue('introduccion',$request->TxtAreaintro);
        $templateProcessor->setValue('alcance',$request->TxtAreAlcance);
        $templateProcessor->setValue('year',$año);
        $templateProcessor->setValue('date',$fecha);
        $templateProcessor->setValue('nombre_elab',auth()->user()->name);
         $templateProcessor->setValue('mat_elab',auth()->user()->matricula);
         // $templateProcessor->setImg('img',array('src'=>$img, 'swh'=> '350','size'=>array(100,100) ));
         // $templateProcessor->setImg('img2',array('src'=>$img, 'swh'=> '350','size'=>array(100,100) ));
         
         $sql="SELECT * FROM revisiones WHERE idproject=".$request->id." and memoria=1";
         $revisiones = \DB::select($sql);

         
         
         $letra=64;
         $contador=1;
         foreach($revisiones as $revision){
         // while ($row=mysqli_fetch_array($dato)) {
            // dd($revision->fecha);
         	if (isset($revision->descripcion) and isset($revision->fecha)) {
         		if ($contador==1){
         		$templateProcessor->setValue('rev'.$contador,"O");
         		$templateProcessor->setValue('date'.$contador,$revision->fecha);
         		$templateProcessor->setValue('descripción'.$contador,$revision->descripcion);
         	}else{
         		$templateProcessor->setValue('rev'.$contador,chr($letra));
         		$templateProcessor->setValue('date'.$contador,$revision->fecha);
         		$templateProcessor->setValue('descripción'.$contador,$revision->descripcion);
         
         	}
             
         }
         
        //  
         $letra++;
         $contador++;
         }
         for ($i=$contador; $i <=6 ; $i++) { 
         	$templateProcessor->setValue('rev'.$i,'');
         		$templateProcessor->setValue('date'.$i,'');
         		$templateProcessor->setValue('descripción'.$i,'');
        //  
         }
        //  
        if($contador==1){
        $templateProcessor->setValue('rev','O');
        }else{
         $templateProcessor->setValue('rev',chr($letra-1));
        }

        
        $templateProcessor->saveAs(public_path('plantillas/documento.docx'));
        return response()->download(public_path('plantillas/documento.docx'));
        
       }
        

       public function import_low_file(Request $request)
       {
           $query= "select * from tablero_bajas where id=".$request->tablero_id;
           $voltaje = \DB::select($query);

           foreach ($voltaje as $tension) {
               $tension_nominal=$tension->tension;
           }

           //   dd($request->id);

           //obtenemos el campo file definido en el formulario
           $file = $request->file('file');

       
           //obtenemos el nombre del archivo
           $nombre = $file->getClientOriginalName();

           //    dd($nombre);
         
           \Storage::disk('local')->put($nombre, \File::get($file));

           $sheet = \PhpOffice\PhpSpreadsheet\IOFactory::load(public_path('storage/'.$nombre));

           $sheet->setActiveSheetIndex(0);

           $cantidad=$sheet->setActiveSheetIndex(0)->getHighestRow();

           for ($i=2; $i <=$cantidad ; $i++) {
               $tag_carga=$sheet->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
               $tag_conductor=$sheet->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
               $descripcion=$sheet->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
               $longitud=$sheet->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
               $potencia=$sheet->getActiveSheet()->getCell('E'.$i)->getCalculatedValue();
               $tipo=$sheet->getActiveSheet()->getCell('F'.$i)->getCalculatedValue();
               $fases=$sheet->getActiveSheet()->getCell('G'.$i)->getCalculatedValue();
               $factor=$sheet->getActiveSheet()->getCell('H'.$i)->getCalculatedValue();
               $tipocable=$sheet->getActiveSheet()->getCell('I'.$i)->getCalculatedValue();
               $neutro=$sheet->getActiveSheet()->getCell('J'.$i)->getCalculatedValue();


               //Calcular los valores de las potencia cuando el tipo de potencia digitada es hp
               if ($tipo=="HP" or $tipo=="Hp" or $tipo=="hp") {
                   $pothp=$potencia;

                   $potkw=$potencia*0.746;

                   $potkva=$potkw/$request->factor_de_potencia;
               }
               // dd($request->tension);
               //Calcular los valores de las potencia cuando el tipo de potencia digitada es kw
               if ($tipo=="KW" or $tipo=="Kw" or $tipo=="kw") {
                   $pothp=$potencia/0.746;

                   $potkw=$potencia;

                   $potkva=$potkw/$request->factor_de_potencia;
               }

               //Calcular los valores de las potencia cuando el tipo de potencia digitada es kva
               if ($tipo=="KVA" or $tipo=="Kva" or $tipo=="kva") {
                   $potkw=$potencia*$request->factor_de_potencia;

                   $pothp=$potkw/0.746;

                   $potkva=$potencia;
               }

               //formula para calcular el numero de hilos que se utilizaran
               if ($neutro=="si" or $neutro=="Si" or $neutro=="SI") {
                   $hilos=$fases+2;
               } else {
                   $hilos=$fases+1;
               }
               //formula para determinar la corriente nominal del conductor dependiendo el numero de fases
               if ($fases==1 or $fases==2) {
                   $Cnominal=$potkva*1000/$tension_nominal;
               }
               if ($fases==3) {
                   $raiz=sqrt(3);
                   $Cnominal=($potkva*1000)/($raiz*$tension_nominal);
               }

               //formula para calcular la corriente asignada del conductor
               $Casignada=$Cnominal*1.25;

               //formula para hallar el sena del conductor
               $acos= acos($factor);
               $seno= sin($acos);

               //pasar longitud en metros a kilomentros
               $longitud_kil=$longitud/1000;

               //recomendar calibre  cuando el tipo de cable es vfd
               if ($request->tipo_cable=="VFD" or $request->tipo_cable=="Vfd" or $request->tipo_cable=="vfd") {
                   if ($Casignada<20) {
                       $calibre_sug='12';
                       $cap=25;
                   }
 
                   if ($Casignada>=20 and $Casignada<25) {
                       $calibre_sug='12';
                       $cap=25;
                   }
                   if ($Casignada>=25 and $Casignada<35) {
                       $calibre_sug='10';
                       $cap=35;
                   }
                   if ($Casignada>=35 and $Casignada<50) {
                       $calibre_sug='8';
                       $cap=50;
                   }
                   if ($Casignada>=50 and $Casignada<65) {
                       $calibre_sug='6';
                       $cap=65;
                   }
                   if ($Casignada>=65 and $Casignada<85) {
                       $calibre_sug='4';
                       $cap=85;
                   }
                   if ($Casignada>=85 and $Casignada<115) {
                       $calibre_sug='2';
                       $cap=115;
                   }
                   if ($Casignada>=115 and $Casignada<150) {
                       $calibre_sug='1/0';
                       $cap=150;
                   }
                   if ($Casignada>=150 and $Casignada<175) {
                       $calibre_sug='2/0';
                       $cap=175;
                   }
                   if ($Casignada>=175 and $Casignada<200) {
                       $calibre_sug='3/0';
                       $cap=200;
                   }
                   if ($Casignada>=200 and $Casignada<230) {
                       $calibre_sug='4/0';
                       $cap=230;
                   }
                   if ($Casignada>=230 and $Casignada<255) {
                       $calibre_sug='250';
                       $cap=255;
                   }
                   if ($Casignada>=255 and $Casignada<310) {
                       $calibre_sug='350';
                       $cap=310;
                   }
        
                   if ($Casignada>=310) {
                       $calibre_sug='500';
                       $cap=380;
                   }
                   //recomendar el calibre cuando el tipo de cable es multiconductor o monopolar
               } else {
                   if ($Casignada<20) {
                       $calibre_sug='12';
                       $cap=25;
                   }

                   if ($Casignada>=20 and $Casignada<25) {
                       $calibre_sug='12';
                       $cap=25;
                   }
                   if ($Casignada>=25 and $Casignada<35) {
                       $calibre_sug='10';
                       $cap=35;
                   }
                   if ($Casignada>=35 and $Casignada<50) {
                       $calibre_sug='8';
                       $cap=50;
                   }
                   if ($Casignada>=50 and $Casignada<65) {
                       $calibre_sug='6';
                       $cap=65;
                   }
                   if ($Casignada>=65 and $Casignada<85) {
                       $calibre_sug='4';
                       $cap=85;
                   }
                   if ($Casignada>=85 and $Casignada<115) {
                       $calibre_sug='2';
                       $cap=115;
                   }
                   if ($Casignada>=115 and $Casignada<150) {
                       $calibre_sug='1/0';
                       $cap=150;
                   }
                   if ($Casignada>=150 and $Casignada<175) {
                       $calibre_sug='2/0';
                       $cap=175;
                   }
                   if ($Casignada>=175 and $Casignada<200) {
                       $calibre_sug='3/0';
                       $cap=200;
                   }
                   if ($Casignada>=200 and $Casignada<230) {
                       $calibre_sug='4/0';
                       $cap=230;
                   }
                   if ($Casignada>=230 and $Casignada<255) {
                       $calibre_sug='250';
                       $cap=255;
                   }
                   if ($Casignada>=255 and $Casignada<310) {
                       $calibre_sug='350';
                       $cap=310;
                   }
                   if ($Casignada>=310 and $Casignada<335) {
                       $calibre_sug='400';
                       $cap=335;
                   }
                   if ($Casignada>=335 and $Casignada<380) {
                       $calibre_sug='500';
                       $cap=380;
                   }
                   if ($Casignada>=380 and $Casignada<475) {
                       $calibre_sug='750';
                       $cap=475;
                   }
                   if ($Casignada>=475 and $Casignada<545) {
                       $calibre_sug='1000';
                       $cap=545;
                   }
                   if ($Casignada>=545) {
                       $calibre_sug='1000';
                       $cap=545;
                   }
               }

               $query ="select * from int_baja_tension where calibre='".$calibre_sug."'";
               //    exit();
               $consulta = \DB::select($query);
               foreach ($consulta as $key) {
                   $reactancia=$key->reactancia;
                   $resistencia=$key->resistencia_AC;
               }
   
                   
   
               //hallar la  regulacion del conductor
               if ($fases==1 or $fases==2) {
                   $r1=2*$longitud_kil*$Cnominal;
           
                   $r2=($resistencia/1)*0.8;
           
                   $r3=($reactancia/1)*0.6;
           
                   $regulacion=$r1*($r2+$r3)*100/$tension_nominal;
               }
      
   
               if ($fases==3) {
                   $raiz=sqrt(3);
                   $r1=$raiz*$longitud_kil*$Cnominal;
           
                   $r2=($resistencia/1)*0.8;
                   $r3=($reactancia/1)*0.6;
           
                   $regulacion=$r1*($r2+$r3)*100/$tension_nominal;
               }

               $ajustable="";

            if ($request->proteccion>=15 and $request->proteccion<20) {
                $ajustable="11-16";
             }
            if ($request->proteccion>=20 and $request->proteccion<25) {
                $ajustable="18-25";
            }
            if ($request->proteccion>=25 and $request->proteccion<32) {
                $ajustable="22-32";
            }
            if ($request->proteccion>=32 and $request->proteccion<40) {
                $ajustable="28-40";
            }
            if ($request->proteccion>=40 and $request->proteccion<50) {
                $ajustable="35-50";
            }
            if ($request->proteccion>=50 and $request->proteccion<63) {
                $ajustable="44-63";
            }
            if ($request->proteccion>=63 and $request->proteccion<80) {
                $ajustable="56-80";
            }
            if ($request->proteccion>=80 and $request->proteccion<100) {
                $ajustable="70-100";
            }
            if ($request->proteccion>=100 and $request->proteccion<125) {
                $ajustable="87-125";
            }
            if ($request->proteccion>=125 and $request->proteccion<160) {
                $ajustable="112-160";
            }
            if ($request->proteccion>=160 and $request->proteccion<200) {
                $ajustable="140-200";
            }
            if ($request->proteccion>=200 and $request->proteccion<250) {
                $ajustable="175-250";
            }
            if ($request->proteccion>=250 and $request->proteccion<320) {
                $ajustable="160-320";
            }
            if ($request->proteccion>=320 and $request->proteccion<400) {
                $ajustable="160-400";
            }
            if ($request->proteccion>=400 and $request->proteccion<500) {
                $ajustable="250-500";
            }
            if ($request->proteccion>=500 and $request->proteccion<630) {
                $ajustable="250-630";
            }
            if ($request->proteccion>=630 and $request->proteccion<800) {
                $ajustable="300-700";
            }
            if ($request->proteccion>=800 and $request->proteccion<1250) {
                $ajustable="400-1000";
            }
            if ($request->proteccion>=1250 and $request->proteccion<1500) {
                $ajustable="900-1400";
            }
            if ($request->proteccion>=1500 and $request->proteccion<2500) {
                $ajustable="1350-2100";
            }
            if ($request->proteccion>=2500) {
                $ajustable="1980-3080";
            }
               //   echo "reg:".$regulacion."fases".$fases;
               //   exit();
   
               //seleccionar conductor
               $let="C";
               $T="AWG";
               $ref=" THHN/THWN-2 TC 600V";
               $contierra="";
               $calibredos = "";

          
               if ($tipocable=="monopolar" or $tipocable=="Monopolar" or $tipocable=="MONOPOLAR") {
                   $contierra="1";
                if ($request->proteccion>=15) {
                    $calibredos="14";
                }
                if ($request->proteccion>=16 and $request->proteccion<20) {
                    $calibredos="12";
                }
                if ($request->proteccion>=20 and $request->proteccion<25) {
                    $calibredos="12";
                }
                if ($request->proteccion>=25 and $request->proteccion<63) {
                    $calibredos="10";
                }
                if ($request->proteccion>=63 and $request->proteccion<125) {
                    $calibredos="8";
                }
                if ($request->proteccion>=125 and $request->proteccion<225) {
                    $calibredos="6";
                }
                if ($request->proteccion>=225 and $request->proteccion<320) {
                    $calibredos="4";
                }
                if ($request->proteccion>=320 and $request->proteccion<500) {
                    $calibredos="3";
                }
                if ($request->proteccion>=500 and $request->proteccion<630) {
                    $calibredos="2";
                }
                if ($request->proteccion>=630 and $request->proteccion<1250) {
                    $calibredos="1/0";
                }
                if ($request->proteccion>=1250 and $request->proteccion<1750) {
                    $calibredos="4/0";
                }
                if ($request->proteccion>=1750 and $request->proteccion<2500) {
                    $calibredos="250";
                }
                if ($request->proteccion>=2500) {
                    $calibredos="400";
                }

                $cond_selec=$memoria->nro_de_conductores_x_fase.$let." X ".$memoria->nro_fases."F"." N°".$request->calibre.$T."+"."/n".
                $memoria->nro_de_conductores_x_fase.$let." X "."1"." N°".$request->calibre.$T."+"."/n".
                "1".$let." X "."1"." T "." N°".$calibredos.$T."+"."/n".
                $ref;
               }
   
               if ($tipocable=="multiconductor" or $tipocable=="Multiconductor" or $tipocable=="MULTICONDUCTOR") {
                   $cond_selec=$hilos."X"." "." AWG ".$ref;
                   $contierra="1";
                   $calibredos=$calibre_sug;
               }
      
               if ($tipocable=="VFD" or $tipocable=="Vfd" or $tipocable=="vfd") {
                   $query = "select * from cables_vfd where calibre='".$calibre_sug."'";
                   $contierra="3";
                    if ($request->calibre == "14" or $request->calibre == "12"){
                    $calibredos = 18;
                    }
                    if ($request->calibre == "10" or $request->calibre == "8"){
                    $calibredos = 14;
                    }
                    if ($request->calibre == "6" or $request->calibre == "4"){
                    $calibredos = 12;
                    }
                    if ($request->calibre == "2" or $request->calibre == "1/0" or $request->calibre == "2/0"){
                    $calibredos = 10;
                    }
                    if ($request->calibre == "4/0"){
                    $calibredos = 8;
                    }
                   //    exit();
                   $consulta = \DB::select($query);
                   foreach ($consulta as $cable) {
                       $cond_selec=$cable->tipo;
                   }
               }
  
               //neutros
               if ($neutro=="Si" or $neutro=="si" or $neutro=="SI") {
                   $conneutro=1;
                   $calneutro=$calibre_sug;
               } else {
                   $conneutro="No Aplica";
                   $calneutro="No Aplica";
               }
          
       

               // dd($request->tension);

               $memoria = new Memoria_baja;
 
               $memoria->conductor=$tag_conductor;
 
               $memoria->carga=$tag_carga;
        
               $memoria->descripcion_carga=$descripcion;
 
               $memoria->longitud_km=$longitud_kil;

               $memoria->longitud_metros=$longitud;
 
               $memoria->potencia_hp=round($pothp, 2);
 
               $memoria->potencia_kw=round($potkw, 2);
 
               $memoria->potencia_kva=round($potkva, 2);
 
               $memoria->nro_fases=$fases;
 
               $memoria->nro_hilos=$hilos;
 
               $memoria->neutro=$neutro;
 
               $memoria->tipo_cab=$tipocable;
 
               $memoria->tension_nominal=$tension_nominal;
 
               $memoria->corriente_nominal=round($Cnominal, 2);
 
               $memoria->corriente_asignada=round($Casignada, 2);
 
               $memoria->factor_de_potencia=$factor;
 
               $memoria->sen=$seno;

               $memoria->ajustable=$ajustable;

               $memoria->proteccion_selec=$request->proteccion;

               $memoria->calibre_tierra=$calibredos;
            
               $memoria->calibre_conductor=$calibre_sug;

               $memoria->medio_de_instal="Tuberia/coraza";

               $memoria->tabla_2050="310-16";

               $memoria->capacidad_de_un_conductor=$cap;

               $memoria->nro_de_conductores_x_fase=1;

               $memoria->cantidad="No más de 3";

               $memoria->factor_de_ajuste_con=1;

               $memoria->rango_temperatura="26-30";

               $memoria->factor_de_ajuste_tem=1;

               $memoria->cap_tot_conduc=$cap;

               $memoria->reactancia=$reactancia;

               $memoria->resistencia=$resistencia;

               $memoria->regulacion=round($regulacion, 2);

               $memoria->conductor_selecc=$cond_selec;

               $memoria->conductor_tierra=$contierra;               

               $memoria->conductores_neutro = $conneutro;

               $memoria->calibre_conduc_neu = $calneutro;
 
               $memoria->tablero_id=$request->tablero_id;
 
               $memoria->project_id=$request->id;
 
               $memoria->save();
           }
       

        return back();
       }

       public function save(Request $request)
       {
           $sql="INSERT INTO revisiones(idproject,descripcion,fecha,memoria) VALUES(".$request->id.",'".$request->descripcion."','".$request->fecha."',1)";
           $voltaje = \DB::select($sql);
   
           return back();
       }

       public function deletef(Request $request)
       
            {

            $memoria_baja = Memoria_baja::find($request->id);

            if($memoria_baja){
                $memoria_baja->delete();
            }

            return back();       
            }
           
      }
        