
//    <script src="https://code.jquery.com/jquery-3.3.1.min.js"integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="crossorigin="anonymous"></script>

    function mostrar() {
        var form=document.getElementById('none');
        form.style.display='';
        
    }
    function mostrar2(param) {
        var tr = document.getElementsByClassName('tr');
        for (index = 1; index <= tr.length; index++) {
           if(index==param){
            var form=document.getElementById(param);
            form.style.display='';
           }else{
            var form=document.getElementById(index);
            form.style.display='none';
           }
           var form=document.getElementById('none');
        form.style.display='none';
            
        }
       
    }

    //variables que se enviaran al respectivo documento que se encargara de realizar las actualizaciones con la base de datos 
		function cargar(id){
           
            // var x=document.getElementById('medio'+id).disabled = false;
			//variables para calibre
            var calibre = document.getElementById('calibre'+id).value;

            var ajustable = document.getElementById('ajustable'+id).value;
            // alert(calibre);
			// //variables para medio de instalacion
			var medio = document.getElementById('medio'+id).value;
			//variables para numero de conductorespor fase
			var NCFN = document.getElementById('NCFN'+id).value;
			//variables de cantidad de conductores portadores de corriente por un ducto 
            var cantCD = document.getElementById('cantCD'+id).value;
			//variables para rango de temperatura utilizado
			var rango = document.getElementById('rango'+id).value;
			//variables para la proteccion seleccionada
            var proteccion = document.getElementById('proteccion'+id).value;
            //variable para neutro
            var neutro = document.getElementById('neutro'+id).value;
            //traer variable del html en el select tipo de cable requerido 
            var tipocable = document.getElementById('tipocable'+id).value;
            
            //token de seguridad
            // alert(calibre); alert(medio); alert(NCF); alert(cantCD); alert(rango); alert(proteccion);
            var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
      
            //esta funcion de ajax permite enviar las variables al documento actualizar haciendo uso del metodo POST
         
			$.ajax({
     		type: 'POST',
     		url: $("#url_actualizarbaja").text(),
             data: {
                _token: CSRF_TOKEN, //aquí considera el token csrf
                calibre:calibre, 
                medio:medio, 
                NCFN:NCFN, 
                cantCD:cantCD, 
                rango:rango, 
                proteccion:proteccion, 
                neutro:neutro,
                tipocable:tipocable,
                id:id,
                ajustable:ajustable
              },


    //  		//funcion para retornar los resultados y mostrarlo en cada td
     		success: function(resultado) {
     		$('#tabla_ntc_2050_utilizar'+id).html(resultado.split("#")[1]);
       		$('#capacidad_de_un_conductor'+id).html(resultado.split("#")[2]);
       		$('#factor_de_ajuste_con'+id).html(resultado.split("#")[3]);
            $('#factor_de_ajuste_temp'+id).html(resultado.split("#")[4]);
            $('#cap_tot_conduc_x_fase'+id).html(resultado.split("#")[5]);
            $('#con1'+id).html(resultado.split("#")[6]);
       		$('#reactan'+id).html(resultado.split("#")[7]);
       		$('#resisten'+id).html(resultado.split("#")[8]);
       		$('#regulacion'+id).html(resultado.split("#")[9]+"%");
            $('#con2'+id).html(resultado.split("#")[10]);
       		$('#conductores_neutro'+id).html(resultado.split("#")[11]);
            $('#calibre_conduc_neu'+id).html(resultado.split("#")[12]);
            $('#conductor_selecc'+id).html(resultado.split("#")[13]);
       		$('#conductores_tierra'+id).html(resultado.split("#")[14]);
       		$('#calibre_tierra'+id).html(resultado.split("#")[15]);
            $('#con3'+id).html(resultado.split("#")[16]);
            $('#nro_hilos'+id).html(resultado.split("#")[17]);
            $('#ajustable'+id).html(resultado.split("#")[18]);
            $('#valor'+id).html(resultado.split("#")[19]);
            $('#NCFN'+id).html(resultado.split("#")[20]);


     	},
     		
    });
}

window.onload=function(){
    var pos=window.name || 0;
    window.scrollTo(0,pos);
    }
    window.onunload=function(){
    window.name=self.pageYOffset || (document.documentElement.scrollTop+document.body.scrollTop);
    }

