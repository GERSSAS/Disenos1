<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\tablero_media;
use App\Memoria_media;
use PhpOffice\PhpWord\TemplateProcessor;
use PhpOffice\PhpWord\PhpWord;

class ControllerMedia extends Controller
{
    //funcion para guardar los tableros de media tension
    public function save_mediun_table(Request $request)
    {
        $tablero = new tablero_media;
 
        $tablero->name=$request->name;
 
        $tablero->tension=$request->tension;
 
        $tablero->project_id=$request->project_id;
 
        $tablero->save();

        return back();
    }

    //funcion para realizar los calculos de entrada de memorias de media tensión y guardar en la base de datos
    public function save_mediun_memories(Request $request)
    {
        //instanciar al modelo memoria media
        $memoria = new Memoria_media;

        //raiz de 3
        $raiz=sqrt(3);

        //calcular la corriente nominal
        $corriente_nominal=($request->potencia*1000)/($raiz*$request->tension);
        //calcular corriente asignada
        $corriente_asignada=$corriente_nominal*1.25;

        //trae las memoria pertenecientes a cada tablero 
        $sql="select * from calibre_min_media where tension=".$request->tension;
        $consulta = \DB::select($sql);

        foreach($consulta as $calibre){
            $calibre_min=$calibre->calibre;
        }
       
        //hallar el acos del factor de potencia utilizado
        $acos= sin(acos($request->cos));
      

        
        //guardar los calculos de la memoria ingresada
        $memoria->tag_conductor=$request->tag_conductor;
        $memoria->tag=$request->tag;
        $memoria->tablero=$request->tablero;
        $memoria->longitud=$request->longitud;
        $memoria->potencia=$request->potencia;
        $memoria->fases=$request->fases;
        $memoria->tension=$request->tension;
        $memoria->calibre_min=$calibre_min;
        $memoria->corriente_nominal=round($corriente_nominal,3);
        $memoria->corriente_asignada=round($corriente_asignada,3);
        $memoria->cos=$request->cos;
        $memoria->sen=$acos;
        $memoria->tablero_id=$request->tablero_id;
        $memoria->project_id=$request->project;

        $memoria->save();

        return back();
    }
    //funcion para generar el documento de excel para la tabla de media tensión 
    public function file_excel_media($id)
    {
        $sheet = \PhpOffice\PhpSpreadsheet\IOFactory::load(Storage_path('plantillas/media.xlsx'));
        //Seleccionamos la hoja
          $sheet->setActiveSheetIndex(0);
  
          //Obtenemos sus datos
          $activeSheet = $sheet->getActiveSheet();
        //variable para menejar las posiciones en el excel
          $con=11;
        //consulta para traer los tableros de media tension
          $query= "select * from tablero_media where project_id=".$id;
        $tableros = \DB::select($query);

        foreach($tableros as $tablero){
            //combinar las celdas para insertar el tablero
            $activeSheet->mergeCells("A$con:Z$con");

            //agregar el tablero
            $activeSheet->setCellValue("A$con", $tablero->name."  ".$tablero->tension);

            //darle un tamaño especifico a cada fila en el excel
            $activeSheet->getRowDimension($con)->setRowHeight(25);
            $con++;

             //consulta para traer las memorias correspondiente a cada tablero
             $query= "select * from memoria_media where tablero_id=".$tablero->id;
             $memorias = \DB::select($query);

             foreach($memorias as $memoria){

                    //asignar los datos y las posiciones donde se ubicaran
					$activeSheet->setCellValue("A$con",$memoria->tag_conductor)
					->setCellValue("B$con",$memoria->tag)
					->setCellValue("C$con",$memoria->tablero)
					->setCellValue("D$con",$memoria->longitud)
					->setCellValue("E$con",$memoria->potencia)
					->setCellValue("F$con",$memoria->fases)
					->setCellValue("G$con",$memoria->tension)
					->setCellValue("H$con",$memoria->calibre_min)
					->setCellValue("I$con",$memoria->corriente_nominal)
					->setCellValue("J$con",$memoria->corriente_asignada)
					->setCellValue("K$con",$memoria->calibre)
					->setCellValue("L$con",$memoria->m_instal)
				    ->setCellValue("M$con",$memoria->tabla)
					->setCellValue("N$con",$memoria->cap_uno)
					->setCellValue("O$con",$memoria->nro_con_fase)
					->setCellValue("P$con",$memoria->cap_tot_con)
					->setCellValue("Q$con", ($memoria->cap_tot_con>=$memoria->corriente_asignada)?'Cumple':'No cumple')
					->setCellValue("R$con",$memoria->aislamiento)
					->setCellValue("S$con", ($memoria->aislamiento=="Si")?'Aislamiento 100%':'Aislamiento 133%')
					->setCellValue("T$con",$memoria->reactancia)
					->setCellValue("U$con",$memoria->resistencia)
					->setCellValue("V$con",$memoria->cos)
					->setCellValue("W$con",$memoria->sen)
					->setCellValue("X$con",$memoria->regulacion)
					->setCellValue("Y$con", ($memoria->regulacion<=3)?'Cumple':'No cumple')
					->setCellValue("Z$con",$memoria->cond_selec);
                $con++;
             }

        }

        $cantidad=$activeSheet->getHighestRow();

        for ($i=11; $i <=$cantidad ; $i++) {
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
            
            

        }

          //Creamos el writer
          $writer = new \PhpOffice\PhpSpreadsheet\Writer\Xlsx($sheet);
        
          //guardamos el archivo en la carpeta public/plantillas
          $writer->save(public_path('plantillas/media.xlsx'));
  
          //buscamos en la carpeta public el documento ya editado que se guardo y lo retornamos como descarga
          return response()->download(public_path('plantillas/media.xlsx'));
    }

    //funcion para actualizar los  datos restantes de las memorias que llegan por medio de ajax
    public function update_media(Request $request)
    {

        //consulta a la memoria que se van a actualizar datos
        $memoria = Memoria_media::find($request->id);

    //    dd($memoria);

        //estas condiciones verifican que los campos vengan vacios, y si estan vacios le asigna los valores que se encuentran en la base de datos
        if($request->calibre=="0"){
            $request->calibre = $memoria->calibre;
        }

        if($request->medio=="0"){
            $request->medio = $memoria->m_instal;
        }
        if($request->aislamiento=="0"){
            $request->aislamiento = $memoria->aislamiento;
        }


       //consulta para hallar la resistencia y la reactancia dependiendo el tipo de calibre ingresado
        if (isset($request->calibre)) {
            $query = "select * from catalogo_media where calibre='".$request->calibre."'";
            $consulta = \DB::select($query);

            foreach ($consulta as $consul) {
                $reactancia = $consul->reactancia;
                $resistencia = $consul->resistencia_AC;
            }
        }

        //calculos solo para medios de instalacion bandejas sin tapa
        if (isset($request->calibre)) {
            if ($request->medio=="bandeja sin tapa" and $memoria->tension>=2001 and $memoria->tension<=5000) {
                $query = "SELECT * FROM `310-69_media` WHERE calibre='".$request->calibre."'";
                // dd($query);
                $consulta = \DB::select($query);
                foreach ($consulta as $total) {
                    $tot = $total->t2001_5000;
                }

                $cap_uno=$tot*0.75;
            }


            if ($request->medio=="bandeja sin tapa" and $memoria->tension>=5001 and $memoria->tension<=15000) {
                $query = "SELECT * FROM `310-69_media` WHERE calibre='".$request->calibre."'";
                $consulta = \DB::select($query);
                foreach ($consulta as $total) {
                    $tot = $total->t5001_15000;
                }
    
                $cap_uno=$tot*0.75;
            }


            if ($request->medio=="bandeja sin tapa" and $memoria->tension>=15001 and $memoria->tension<=35000) {
                $query = "SELECT * FROM `310-69_media` WHERE calibre='".$request->calibre."'";
                $consulta = \DB::select($query);
                foreach ($consulta as $total) {
                    $tot = $total->t15001_35000;
                }
        
                $cap_uno=$tot*0.75;
            }

            //calculos solo para medios de instalacion bandejas con tapa
            if ($request->medio=="bandeja con tapa" and $memoria->tension>=2001 and $memoria->tension<=5000) {
                $query = "SELECT * FROM `310-69_media` WHERE calibre='".$request->calibre."'";
                $consulta = \DB::select($query);
                foreach ($consulta as $total) {
                    $tot = $total->t2001_5000;
                }

                $cap_uno=$tot*0.70;
            }


            if ($request->medio=="bandeja con tapa" and $memoria->tension>=5001 and $memoria->tension<=15000) {
                $query = "SELECT * FROM `310-69_media` WHERE calibre='".$request->calibre."'";
                $consulta = \DB::select($query);
                foreach ($consulta as $total) {
                    $tot = $total->t5001_15000;
                }
  
                $cap_uno=$tot*0.70;
            }


            if ($request->medio=="bandeja con tapa" and $memoria->tension>=15001 and $memoria->tension<=35000) {
                $query = "SELECT * FROM `310-69_media` WHERE calibre='".$request->calibre."'";
                $consulta = \DB::select($query);
                foreach ($consulta as $total) {
                    $tot = $total->t15001_35000;
                }
        
                $cap_uno=$tot*0.70;
            }

            //para 1 ducto subterraneo
            if ($request->medio=="1 ducto subterraneo" and $memoria->tension>=2001 and $memoria->tension<=5000) {
                $query = "SELECT * FROM 1_ducto_media WHERE calibre='".$request->calibre."'";
                $consulta = \DB::select($query);
                foreach ($consulta as $total) {
                    $cap_uno = $total->t2001_5000;
                }
            }

            if ($request->medio=="1 ducto subterraneo" and $memoria->tension>=5001 and $memoria->tension<=35000) {
                $query = "SELECT * FROM 1_ducto_media WHERE calibre='".$request->calibre."'";
                $consulta = \DB::select($query);
                foreach ($consulta as $total) {
                    $cap_uno = $total->t5001_35000;
                }
            }

            //para 3 ductos subterraneos
            if ($request->medio=="3 ductos subterraneos" and $memoria->tension>=2001 and $memoria->tension<=5000) {
                $query = "SELECT * FROM 3_ductos_media WHERE calibre='".$request->calibre."'";
                $consulta = \DB::select($query);
                foreach ($consulta as $total) {
                    $cap_uno = $total->t2001_5000;
                }
            }

            if ($request->medio=="3 ductos subterraneos" and $memoria->tension>=5001 and $memoria->tension<=35000) {
                $query = "SELECT * FROM 3_ductos_media WHERE calibre='".$request->calibre."'";
                $consulta = \DB::select($query);
                foreach ($consulta as $total) {
                    $cap_uno = $total->t5001_35000;
                }
            }

            //para 6 ductos
            if ($request->medio=="6 ductos subterraneos" and $memoria->tension>=2001 and $memoria->tension<=5000) {
                $query = "SELECT * FROM 3_ductos_media WHERE calibre=".$request->calibre;
                $consulta = \DB::select($query);
                foreach ($consulta as $total) {
                    $cap_uno = $total->t2001_5000;
                }
            }

            if ($request->medio=="6 ductos subterraneos" and $memoria->tension>=5001 and $memoria->tension<=35000) {
                $query = "SELECT * FROM 6_ductos_media WHERE calibre=".$request->calibre;
                $consulta = \DB::select($query);
                foreach ($consulta as $total) {
                    $cap_uno = $total->t5001_35000;
                }
            }
        }
        
            //calcular la capacidad total de conductores por fase
            @$captot=$memoria->cap_uno*$request->NCF;

            //cumple la condicion que la capacidad total de conductores debe de ser mayor o igual a la corriente asignada 
            if ($captot>=$memoria->corriente_asignada) {
            	$con1="Cumple";
            }else{
            	$con1="No cumple";
            }

            //condicion que determina el asilamiento que se utilizara en cada uno de los conductores
            if ($request->aislamiento=="Si") {
                $con2="Aislamiento 100%";
            }
            if ($request->aislamiento=="No") {
                $con2="Aislamiento 133%";
            }

            //condiciones para determinar la tabla que se va a utilizar en cada una de las cargas
            if ($request->medio=="bandeja sin tapa") {
                $tabla="310-69 al 75%";
            }
    
            if ($request->medio=="bandeja con tapa") {
                $tabla="310-69 al 70%";
            }
    
            if ($request->medio=="1 ducto subterraneo") {
                $tabla="310-77 un circuito";
            }
    
            if ($request->medio=="3 ductos subterraneos") {
                $tabla="310-77 tres circuitos";
            }
    
            if ($request->medio=="6 ductos subterraneos") {
                $tabla="310-77 seis circuitos";
            }

            //aqui se calcula la regulacion d los conductores
            if ($memoria->nro_con_fase!=0) {
                $raiz=sqrt(3);
                $r1=$raiz*$memoria->longitud*$memoria->corriente_nominal;
            
                $r2=($memoria->resistencia/$request->NCF)*$memoria->cos;
                $r3=($memoria->reactancia/$request->NCF)*$memoria->sen;
            
                $regulacion=$r1*($r2+$r3)*100/$memoria->tension;
            }
               if ($memoria->regulacion<=3) {
                $con3="Cumple";
                 }else{
                $con3="No cumple";
            }

            //consulta que se encarga de traer de la base de datos el calibre  minimo utlizado dependiento la tension nominal
            $query = "SELECT * FROM calibre_min_media WHERE tension=".$memoria->tension;
            $consulta = \DB::select($query);
            foreach($consulta as $max){
                $tension_max=$max->tension_maxima;
            }
        
            //aqui se determina el tipo de conductor selecccionado
            $let="C";
			$T="AWG";
			$ref=" THHN/THWN-2 TC 600V";
            $conductor_s=$request->NCF.$let." X ".$memoria->fases."F"." N°".$request->calibre.$T.$ref;
            
            $reg=round(@$regulacion,4);
            $tab=@$tabla;
            $cap=@$cap_uno;
            $capto=@$captot;
            $conuno=@$con1;
            $condos=@$con2;
            $reactan=@$reactancia;
            $resis=@$resistencia;
            $contres=@$con3;

            
			echo "#$tab#$cap#$capto#$conuno#$condos#$reactan#$resis#$reg#$contres#$conductor_s";

            $memoria->calibre = $request->calibre;
            $memoria->m_instal = $request->medio;
            $memoria->tabla = $tab;
            $memoria->cap_uno = $cap;
            $memoria->nro_con_fase = $request->NCF;
            $memoria->cap_tot_con = $capto;
            $memoria->aislamiento = $request->aislamiento;
            $memoria->reactancia = $reactan;
            $memoria->resistencia = $resis;
            $memoria->regulacion = $reg;
            $memoria->cond_selec = $conductor_s;

            $memoria->save();


            
        }

        public function import_mediun_file(Request $request)
        {
            $query= "select * from tablero_media where id=".$request->tablero_id;
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

        // dd($cantidad);

        for ($i=2; $i <=$cantidad ; $i++) {

            $TAG_Conductor=$sheet->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();
            $TAG=$sheet->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();
            $tablero=$sheet->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();
            $longitud=$sheet->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();
            $potencia=$sheet->getActiveSheet()->getCell('E'.$i)->getCalculatedValue();
            $fases=$sheet->getActiveSheet()->getCell('F'.$i)->getCalculatedValue();
            $F_pot=$sheet->getActiveSheet()->getCell('G'.$i)->getCalculatedValue();

            $raiz=sqrt(3);

            //calcular la corriente nominal
            $corriente_nominal=($potencia*1000)/($raiz*$tension_nominal);
            //calcular corriente asignada
            $corriente_asignada=$corriente_nominal*1.25;
    
            //trae las memoria pertenecientes a cada tablero 
            $sql="select * from calibre_min_media where tension=".$tension_nominal;
            $consulta = \DB::select($sql);
    
            foreach($consulta as $calibre){
                $calibre_min=$calibre->calibre;
            }
    
            $acos= acos($request->F_pot);
            $sen= sin($acos);

            

            $memoria = new Memoria_media;
            
            $memoria->tag_conductor=$TAG_Conductor;
            $memoria->tag=$TAG;
            $memoria->tablero=$tablero;
            $memoria->longitud=$longitud;
            $memoria->potencia=$potencia;
            $memoria->fases=$fases;
            $memoria->tension=$tension_nominal;
            $memoria->calibre_min=$calibre_min;
            $memoria->corriente_nominal=round($corriente_nominal,3);
            $memoria->corriente_asignada=round($corriente_asignada,3);
            $memoria->cos=$F_pot;
            $memoria->sen=$sen;
            $memoria->tablero_id=$request->tablero_id;
            $memoria->project_id=$request->id;
    
            $memoria->save();
    
            

        }
        return back();

        }

        public function save_doc_media(Request $request)
        {
            // dd($request->CodInterno);
        $templateProcessor= new TemplateProcessor(Storage_path('plantillas/plantilla_media.docx'));
        $fecha=strftime("%d/%m/%Y");
        $año=date("Y");
// dd($request->TxtAreaIntro);
        $templateProcessor->setValue('nombre_pro',$request->NombreEmp);
        $templateProcessor->setValue('NOMBRE_PRO',$request->NombreEmp);
        $templateProcessor->setValue('codigo_int',$request->CodInterno);
        $templateProcessor->setValue('CODIGO_INT',$request->CodInterno);
        $templateProcessor->setValue('codigo_ext',$request->CodExterno);
        $templateProcessor->setValue('nombre_ver',$request->NombVerifi);
        $templateProcessor->setValue('matricula_ver',$request->MatriculaVerifi);
        $templateProcessor->setValue('nombre_apr',$request->NombAprobo);
        $templateProcessor->setValue('matricula_apr',$request->MatriculaAprobo);
        $templateProcessor->setValue('nombre_emp',$request->NombreEmp);
        $templateProcessor->setValue('NOMBRE_EMP',$request->NombreEmp);
        $templateProcessor->setValue('introduccion',$request->TxtAreaIntro);
        $templateProcessor->setValue('year',$año);
        $templateProcessor->setValue('date',$fecha);
        $templateProcessor->setValue('nombre_elab',auth()->user()->name);
         $templateProcessor->setValue('mat_elab',auth()->user()->matricula);
         // $templateProcessor->setImg('img',array('src'=>$img, 'swh'=> '350','size'=>array(100,100) ));
         // $templateProcessor->setImg('img2',array('src'=>$img, 'swh'=> '350','size'=>array(100,100) ));
         
         $sql="SELECT * FROM revisiones WHERE idproject=".$request->id." and memoria=3";
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
    }
    

