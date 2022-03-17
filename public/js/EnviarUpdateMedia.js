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

    var aislamiento = document.getElementById('aisl'+id).value;

    var NCF = document.getElementById('NCF'+id).value;

    var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
    $.ajax({
        type: 'POST',
     		url: $("#url_actualizarmedia").text(),
             data: {
                _token: CSRF_TOKEN, //aquí considera el token csrf
                calibre:calibre, 
                medio:medio, 
                NCF:NCF,
                id:id,
                aislamiento:aislamiento
              },
              success: function(resultado) {
                
                $('#tabla'+id).html(resultado.split("#")[1]);
                $('#cap_uno'+id).html(resultado.split("#")[2]);
                $('#cap_tot'+id).html(resultado.split("#")[3]);
                $('#con1'+id).html(resultado.split("#")[4]);
                $('#con2'+id).html(resultado.split("#")[5]);
                $('#reactancia'+id).html(resultado.split("#")[6]);
                $('#resistencia'+id).html(resultado.split("#")[7]);
                $('#regulacion'+id).html(resultado.split("#")[8]+"%");
                $('#con3'+id).html(resultado.split("#")[9]);
                $('#conductor_selec'+id).html(resultado.split("#")[10]);

              },
        });

}


