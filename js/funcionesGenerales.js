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
        cargarComboIkasleak();
        return false;
    });
    $('#ikasleNombresTodos').change(function () {

        var MiId = $('#ikasleNombresTodos').val();
        var MiNombre = $('#ikasleNombresTodos option:selected').html();
        var MiEdad = $('#ikasleNombresTodos option:selected').attr('data-edad');
        var MiCurso = $('#ikasleNombresTodos option:selected').attr('data-curso');
        $('#ikasleId').val(MiId);
        $('#ikasleNombre').val(MiNombre);
        $('#ikasleEdad').val(MiEdad);
        $('#ikasleCurso').val(MiCurso);
    });





});
