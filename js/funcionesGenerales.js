var opcion = "";
$(document).ready(function () {

    $('#zonaIkasle').hide();
    $('#zonaConsulta').hide();
    
//    escoder();

//GESTION DE CONSULTA

    $('#kontsultaIkasleak').click(function () {
        alert("hola");
//        esconder();
        $('#zonaConsulta').show();
        funcionKontsultaIkasleak();
        return false;
    });
    $('#ikasleAldatu').click(function () {
        esconder();
        $('#zonaIkasle').show();
        $('#ikasleNombresTodos').show();
        $('.valores').attr("disabled", false);
        CargarComboIkasleak();
        opcion = "ikasleGuardarAldatu";
        return false;
    });





});
