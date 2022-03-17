<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;
use Illuminate\Http\File;
use PhpOffice\PhpWord\TemplateProcessor;
use PhpOffice\PhpWord\PhpWord;
use App\Memoria_alta;
use App\Tablero_alta;

class ControllerAlta extends Controller

{

    //funcion para guardar los tableros
    public function save_high_table(Request $request)
    {
        $tablero = new Tablero_alta;
 
        $tablero->name=$request->name;
 
        $tablero->tension=$request->tension;
 
        $tablero->project_id=$request->project_id;
 
        $tablero->save();

        return back();
    }

    //funcion para guardar realizar los calculos y guardar la entradads iniciales de las memorias 
    public function save_high_memories(Request $request)
    {
    

        $memoria = new Memoria_alta;

        //calcular las potencia de alta tension dependiendo el tipo que se halla elegido
        if ($request->pot=="hp" or $request->pot=="Hp" or $request->pot=="HP"){
            $hp=$request->potencia;
            $kva=$request->potencia*0.746;
        }
        if ($request->pot=="kva" or $request->pot=="Kva" or $request->pot=="KVA") {
            $kva=$request->potencia;
            $hp=$request->potencia/0.746;
        }

        //calcular la corriente nominal y corriente asignada 
        $nominal=$kva*1000/$request->tension;
        $asignada=$nominal*$request->k;


        //asignar donde se aplica el factor de carga que se ha elegido.
        if ($request->k==1) {
            $aplica="Para primario y secundario de transformadores, siempre que se utilice la potencia total del transformador seleccionado y no la potencia calculada";
        }
        if ($request->k==1.15) {
            $aplica="Salida Generadores (según NTC 2050 art. 445-5)";
        }
        if ($request->k==1.25) {
            $aplica="Tomacorrientes, luminarias y motores (siempre y cuando la protección no sea fusible)";
        }
        if ($request->k==1.65) {
            $aplica="Motores con protección fusible";
        }
        // dd($aplica);

        $memoria->tag_cable = $request->tag_cable;
        
        $memoria->tag_carga = $request->tag_carga;

        $memoria->descripcion = $request->desc;

        $memoria->hp = $hp;

        $memoria->kva_kw = $kva;

        $memoria->tension = $request->tension;

        $memoria->corriente_nominal = $nominal;

        $memoria->valor_k = $request->k;

        $memoria->donde_aplica = $aplica;

        $memoria->corriente_asignada = $asignada;

        $memoria->longitud = $request->longitud;

        $memoria->tablero_id=$request->tablero_id;

        $memoria->project_id=$request->project;

        $memoria->save();

        return back();
        
    }

    //funcion para generear el archivo de excel
    public function file_excel_alta($id)
    {
        $sheet = \PhpOffice\PhpSpreadsheet\IOFactory::load(Storage_path('plantillas/dc.xlsx'));
        //Seleccionamos la hoja
          $sheet->setActiveSheetIndex(0);
  
          //Obtenemos sus datos
          $activeSheet = $sheet->getActiveSheet();
        //variable para menejar las posiciones en el excel
          $con=6;

          $query= "select * from tablero_altas where project_id=".$id;
        $tableros = \DB::select($query);

        foreach($tableros as $tablero){
            //combinar las celdas para insertar el tablero
            $activeSheet->mergeCells("A$con:AD$con");

            //agregar el tablero
            $activeSheet->setCellValue("A$con", $tablero->name."  ".$tablero->tension);

            //darle un tamaño especifico a cada fila en el excel
            $activeSheet->getRowDimension($con)->setRowHeight(30);
            $con++;

             //consulta para traer las memorias correspondiente a cada tablero
             $query= "select * from memoria_altas where tablero_id=".$tablero->id;
             $memorias = \DB::select($query);

             foreach($memorias as $memoria){

                
					$activeSheet->setCellValue("A$con", $memoria->tag_cable)
					->setCellValue("B$con", $memoria->tag_carga)
					->setCellValue("C$con", $memoria->descripcion)
					->setCellValue("D$con", $memoria->hp)
					->setCellValue("E$con", $memoria->kva_kw)
					->setCellValue("F$con", $memoria->tension)
					->setCellValue("G$con", $memoria->corriente_nominal)
					->setCellValue("H$con", $memoria->valor_k)
					->setCellValue("I$con", $memoria->donde_aplica)
					->setCellValue("J$con", $memoria->corriente_asignada)
					->setCellValue("K$con", $memoria->calibre)
					->setCellValue("L$con", $memoria->m_instal)
				    ->setCellValue("M$con", $memoria->tabla_2050)
					->setCellValue("N$con", $memoria->capacidad_de_un_conductor)
					->setCellValue("O$con", $memoria->nro_con_fases)
					->setCellValue("P$con", $memoria->cantidad)
					->setCellValue("Q$con", $memoria->ajuste_cant)
					->setCellValue("R$con", $memoria->temperatura)
					->setCellValue("S$con", $memoria->ajuste_temp)
					->setCellValue("T$con", $memoria->cap_tot_conduc)
					->setCellValue("U$con", "")
					->setCellValue("V$con", $memoria->longitud)	
					->setCellValue("W$con", $memoria->resistencia)			
					->setCellValue("X$con", $memoria->regulacion)
					->setCellValue("Y$con", "")
					->setCellValue("Z$con", $memoria->proteccion)
					->setCellValue("AA$con", "")
					->setCellValue("AB$con", $memoria->calibre_min)
					->setCellValue("AC$con", $memoria->tipo_conductor)
                    ->setCellValue("AD$con", $memoria->conductor_selec);
                    
                    $activeSheet->getRowDimension($con)->setRowHeight(30);
                    $con++;
                    
             }

        }

        $cantidad=$activeSheet->getHighestRow();

        for ($i=6; $i <=$cantidad ; $i++) {
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
            

        }

          //Creamos el writer
          $writer = new \PhpOffice\PhpSpreadsheet\Writer\Xlsx($sheet);
        
          //guardamos el archivo en la carpeta public/plantillas
          $writer->save(public_path('plantillas/alta.xlsx'));
  
  
          return response()->download(public_path('plantillas/alta.xlsx'));
    }

    //funcion para generar el documento de word q
    public function save_doc_alta(Request $request)
    {
         // dd($request->CodInterno);
         $templateProcessor= new TemplateProcessor(Storage_path('plantillas/plantilla_alta.docx'));
         $fecha=strftime("%d/%m/%Y");
         $año=date("Y");
 
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
         
         $sql="SELECT * FROM revisiones WHERE idproject=".$request->id." and memoria=2";
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
         $templateProcessor->saveAs(public_path('plantillas/documento_alta.docx'));
         return response()->download(public_path('plantillas/documento_alta.docx'));
    }


//funcion para importar datos de entrada a la tabla de alta tension
    public function import_high_file(Request $request)
    {
        $query= "select * from tablero_altas where id=".$request->tablero_id;
        $voltaje = \DB::select($query);

        foreach($voltaje as $tension){
            $tension_nominal=$tension->tension;
        }

    //   dd($request->id);

           //obtenemos el campo file definido en el formulario
           $file = $request->file('file');

       
           //obtenemos el nombre del archivo
           $nombre = $file->getClientOriginalName();

        //    dd($nombre);
         
        \Storage::disk('local')->put($nombre,  \File::get($file));

        $sheet = \PhpOffice\PhpSpreadsheet\IOFactory::load(public_path('storage/'.$nombre));

        $sheet->setActiveSheetIndex(0);

        $cantidad=$sheet->setActiveSheetIndex(0)->getHighestRow();

        for ($i=2; $i <=$cantidad ; $i++) {

            $tag_cable=$sheet->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
            $tag=$sheet->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
            $descripcion=$sheet->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
            $potencia=$sheet->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
            $tipo=$sheet->getActiveSheet()->getCell('E'.$i)->getCalculatedValue();
            $valor=$sheet->getActiveSheet()->getCell('F'.$i)->getCalculatedValue();
            $longitud=$sheet->getActiveSheet()->getCell('G'.$i)->getCalculatedValue();

            

            //calcular las potencia de alta tension dependiendo el tipo que se halla elegido
            if ($tipo=="hp" or $tipo=="Hp" or $tipo=="HP"){
                $hp=$potencia;
                $kva=$potencia*0.746;
            }
            if ($tipo=="kva" or $tipo=="Kva" or $tipo=="KVA") {
                $kva=$potencia;
                $hp=$potencia/0.746;
            }
    
            //calcular la corriente nominal y corriente asignada 
            $nominal=$kva*1000/$tension_nominal;
            $asignada=$nominal*$valor;
    
    
            //asignar donde se aplica el factor de carga que se ha elegido.
            if ($valor==1) {
                $aplica="Para primario y secundario de transformadores, siempre que se utilice la potencia total del transformador seleccionado y no la potencia calculada";
            }
            if ($valor==1.15) {
                $aplica="Salida Generadores (según NTC 2050 art. 445-5)";
            }
            if ($valor==1.25) {
                $aplica="Tomacorrientes, luminarias y motores (siempre y cuando la protección no sea fusible)";
            }
            if ($valor==1.65) {
                $aplica="Motores con protección fusible";
            }
            // dd($aplica);
    
            $memoria = new Memoria_alta;

            $memoria->tag_cable = $tag_cable;
            
            $memoria->tag_carga = $tag;
    
            $memoria->descripcion = $descripcion;
    
            $memoria->hp = $hp;
    
            $memoria->kva_kw = $kva;
    
            $memoria->tension = $tension_nominal;
    
            $memoria->corriente_nominal = $nominal;
    
            $memoria->valor_k = $valor;
    
            $memoria->donde_aplica = $aplica;
    
            $memoria->corriente_asignada = $asignada;
    
            $memoria->longitud = $longitud;
    
            $memoria->tablero_id=$request->tablero_id;
    
            $memoria->project_id=$request->id;
    
            $memoria->save();

        }

        return back();
    }
//funcion para actualizar la tabla a tiempo real 
    public function update_alta(Request $request)
    {

        $memoria = Memoria_alta::find($request->id);

        // dd($memoria);

        //asignar valores a lo request si estos traen el valor de 
        if($request->calibre=="0"){
            $request->calibre = $memoria->calibre;
        }

        if($request->medio=="0"){
            $request->medio = $memoria->m_instal;
        }


        if($request->cantidad=="0"){
            $request->cantidad = $memoria->cantidad;
        }

        if($request->temperatura=="0"){
            $request->temperatura = $memoria->temperatura;
        }

        if($request->proteccion=="0"){
            $request->proteccion = $memoria->proteccion;
        }

        if($request->tipo=="0"){
            $request->tipo = $memoria->tipo_conductor;
        }


        //calcular el medio de instalacion y la capacidad total de un conductor
        if (isset($request->calibre)) {
            if ($request->medio=="bandeja sin tapa") {
                $query = "select * from int_baja_tension where calibre='".$request->calibre."'";
                $consulta = \DB::select($query);
                $tabla="310-17 65%";

                foreach ($consulta as $key) {
                    $cal_uno=$key->t310_t17;
                }

                $totcal1=$cal_uno*0.65;
            }
   

            if ($request->medio=="bandeja con tapa") {
                $query = "select * from int_baja_tension where calibre='".$request->calibre."'";
                $consulta = \DB::select($query);
                $tabla="310-17 60%";
    
                foreach ($consulta as $key) {
                    $cal_uno=$key->t310_t17;
                }

                $totcal1=$cal_uno*0.60;
            }


            if ($request->medio=="tuberia/coraza") {
                $query = "select * from int_baja_tension where calibre='".$request->calibre."'";
                $consulta = \DB::select($query);
                $tabla="310-16";

                foreach ($consulta as $key) {
                    $totcal1=$key->t310_t16;
                }
            }
        }

        //asignar el ajuste a la temperatura  
        if ($request->temperatura=="21-25") {
			$Fajustetemp=1.5;
		}
		if ($request->temperatura=="26-30") {
			$Fajustetemp=1.0;
		}
		if ($request->temperatura=="31-35") {
			$Fajustetemp=0.94;
		}
		if ($request->temperatura=="36-40") {
			$Fajustetemp=0.88;
		}
		if ($request->temperatura=="41-45") {
			$Fajustetemp=0.82;
		}
		if ($request->temperatura=="46-50") {
			$Fajustetemp=0.75;
		}
		if ($request->temperatura=="51-55") {
			$Fajustetemp=0.67;
		}
		if ($request->temperatura=="56-60") {
			$Fajustetemp=0.58;
		}
		if ($request->temperatura=="61-70") {
			$Fajustetemp=0.33;
        }
        

        //asignar el ajuste a la cantidad de conductores portadores de corriente
        if ($request->medio=="bandeja sin tapa"){
			$Fajustecant=1.0;
		}
		 if ($request->medio=="bandeja con tapa"){
		 	$Fajustecant=1.0;
		}
		 if ($request->medio=="tuberia/coraza"){
		 	
		 
		if ($request->cantidad=="No mas de 3") {
			$Fajustecant=1.0;
			
		}
		if ($request->cantidad=="De 4 a 6") {
			$Fajustecant=0.8;
		}
		if ($request->cantidad=="De 7 a 9") {
			$Fajustecant=0.7;
		}
		if ($request->cantidad=="De 10 a 20") {
			$Fajustecant=0.5;
		}
		if ($request->cantidad=="De 21 a 30") {
			$Fajustecant=0.45;
		}
		if ($request->cantidad=="De 31 a 40") {
			$Fajustecant=0.4;
		}
		if ($request->cantidad=="Mas de 40") {
			$Fajustecant=0.35;
		}
    }

    $fajusc=@$Fajustecant;
    $fajust=@$Fajustetemp;

    $memoria->ajuste_cant = $fajusc;
    $memoria->ajuste_temp = $fajust;
    
    //formula para hallar la capacidad total de conductores por fase 
    $captotxfase=$memoria->capacidad_de_un_conductor*$request->NCF*$memoria->ajuste_cant*$memoria->ajuste_temp;

    //consulta que trae como resultado la resistencia en DC que se va a utilizar dependiendo el calibre 
    if (isset($request->calibre)) {
        $query = "select * from int_baja_tension where calibre='".$request->calibre."'";
        $consulta = \DB::select($query);
        foreach ($consulta as $key) {
            $resistencia=$key->resistencia_DC;
        }
    }
        //formula para calcular la regulacion del conductor seleccionado
        if (isset($request->NCF)) {
            $regulacion=2*$memoria->longitud*$memoria->corriente_nominal*($memoria->resistencia/$request->NCF)/$memoria->tension;
        
            //condicion la regulacion debe de ser menor o igual a 5
            
        }
        if ($memoria->regulacion<=5) {
            $con2="Cumple";
        } else {
            $con2="No cumple";
        }
       

        //formular el conductor seleccionado que se va a utilizar
        if ($request->tipo=="monopolar" or $request->tipo=="Monopolar" or $request->tipo=="MONOPOLAR") {
			$conductor="2C  N°".$request->calibre." "."AWG THHN-THWN/2 90°C";
        }
        
        if ($request->tipo=="multiconductor" or $request->tipo=="Multiconductor" or $request->tipo=="MULTICONDUCTOR") {
			$conductor="2 X ".$request->calibre." "."AWG THHN-THWN/2 90°C";
        }
        
        //consulta para traer el calibre minimo de conductor de tierra
        if (isset($request->proteccion)) {
            $query = "select * from tabla_250_95_ntc where intensidad=".$request->proteccion;

            // dd($query);
            $consulta = \DB::select($query);
            foreach ($consulta as $key) {
                $calibre2=$key->calibre;
            }
        }

        //condicion para determinar si la capacidad total de de conductores es mayor o igual a corriente asignada
        if ($captotxfase>=$memoria->corriente_asignada) {
			$con1="Cumple";
		}else{
			$con1="No Cumple";
        }
        
        //condicion para la proteccion
        if ($request->proteccion>=$memoria->corriente_nominal and $request->proteccion<=$memoria->cap_tot_conduc) {
			$con3="Cumple";
		}else{
			$con3="No Cumple";
        }
        // dd($calibre2);
        $tab=@$tabla;
        $tot=@$totcal1;
        $captot=@$captotxfase;
        $resis=@$resistencia;
        $regula=@$regulacion;
        $conduc=@$conductor;
        $calibredos=@$calibre2;

        //echo que me permite retornar las variables al script como un arreglo tipo split
        echo "#$tab#$tot#$captot#$fajusc#$fajust#$con1#$resis#$regula#$con2#$conduc#$con3#$calibredos";

        $memoria->calibre = $request->calibre;
        $memoria->m_instal = $request->medio;
        $memoria->tabla_2050 = $tab;
        $memoria->capacidad_de_un_conductor = $tot;
        $memoria->nro_con_fases = $request->NCF;
        $memoria->cantidad = $request->cantidad;
       
        $memoria->temperatura = $request->temperatura;
        
        $memoria->cap_tot_conduc = $captot;
        $memoria->resistencia = $resis;
        $memoria->regulacion = $regula;
        $memoria->proteccion = $request->proteccion;
        $memoria->calibre_min =$calibredos;
        $memoria->tipo_conductor = $request->tipo;
        $memoria->conductor_selec = $conduc;

        $memoria->save();
    }

    //funcion que me permite guardar las revisiones en la base de datos
    public function save(Request $request)
    {
        $sql="INSERT INTO revisiones(idproject,descripcion,fecha,memoria) VALUES(".$request->id.",'".$request->descripcion."','".$request->fecha."',2)";
        $voltaje = \DB::select($sql);

        return back();
    }
}
