$(document).ready(function () {

    esconder();

//GESTION DE CONSULTA

    $('#kontsultaIkasleak').click(function () {
        esconder();
        $('#zonaConsulta').show();
        funcionKontsultaIkasleak();
        return false;
    });
    $('#ikasleBerria').click(function () {
        esconder();
        $('#zonaIkasle').show();
        $('#ikasleGuardar').click(function () {
            funcionIkasleBerria();
        });
        return false;
    });
    $('#ikasleAldatu').click(function () {
        esconder();
        $('#zonaIkasle').show();
        $('#ikasleNombresTodos').show();
        return false;
    });





});
