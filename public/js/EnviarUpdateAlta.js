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

function cargar(id){

    var calibre = document.getElementById('calibre'+id).value;

    var medio = document.getElementById('medio'+id).value;

    var NCF = document.getElementById('NCF'+id).value;

    var cantidad = document.getElementById('cantidad'+id).value;

    var temperatura = document.getElementById('temperatura'+id).value;

    var proteccion = document.getElementById('proteccion'+id).value;

    var tipo = document.getElementById('tipo'+id).value;

    // alert(calibre); alert(medio); alert(NCF); alert(cantidad); alert(temperatura); alert(proteccion); alert(tipo); 

    var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');

    $.ajax({
        type: 'POST',
     		url: $("#url_actualizaralta").text(),
             data: {
                _token: CSRF_TOKEN, //aquí considera el token csrf
                calibre:calibre, 
                medio:medio, 
                NCF:NCF,
                cantidad:cantidad,
                temperatura:temperatura,
                proteccion:proteccion,
                tipo:tipo,
                id:id
             },
             success: function(resultado) {
                $('#tabla'+id).html(resultado.split("#")[1]);
                $('#capacidad_de_un_conductor'+id).html(resultado.split("#")[2]);
                $('#cap_tot_conduc_x_fase'+id).html(resultado.split("#")[3]);
                $('#factor_de_ajuste_con'+id).html(resultado.split("#")[4]);
                $('#factor_de_ajuste_tem'+id).html(resultado.split("#")[5]);
                $('#con1'+id).html(resultado.split("#")[6]);
                $('#resistencia'+id).html(resultado.split("#")[7]);
                $('#regulacion'+id).html(resultado.split("#")[8]+"%");
                $('#con2'+id).html(resultado.split("#")[9]);
                $('#conductor_selecc'+id).html(resultado.split("#")[10]);
                $('#con3'+id).html(resultado.split("#")[11]);	
                $('#calibre_min'+id).html(resultado.split("#")[12]);
             },
            });
}