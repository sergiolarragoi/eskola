function esconder() {
    $('#ikasleNombresTodos').hide();
    $('#zonaIkasle').hide();
    $('#zonaConsulta').hide();
}
function funcionKontsultaIkasleak() {
    $.ajax({
        type: 'POST',
        dstaType: 'json',
        url: '../controlador/controlador_consulta_ikasleak.php',
        success: function (datos) {
//            alert(datos);
            datos = JSON.parse(datos);    //lo convertimos a objeto.
            var tabla = "<table>";
            tabla += "<th class='id'>Id</th>";
            tabla += "<th class='nombre'>Nombre</th>";
            tabla += "<th class='nombre'>Edad</th>";
            tabla += "<th class='numerico'>Curso</th>";
            for (i in datos) {
                tabla += "<tr>";
                tabla += "<td class='nombre'>" + datos[i].id + "</td>";
                tabla += "<td class='nombre'>" + datos[i].Nombre + "</td>";
                tabla += "<td class='numerico'>" + datos[i].Edad + "</td>";
                tabla += "<td class='numerico'>" + datos[i].Curso + "</td>";
                tabla += "</tr>";
            }
            ;
            tabla += "</table>";
//            alert(tabla);
            $('#zonaConsulta').append(tabla).hide().fadeIn('slow');
        },
        error: function (xhr) {
            alert("An error occured: " + xhr.status + " " + xhr.statusText);
        }
    });
}
function funcionIkasleBerria() {

    var nombre = $('#ikasleNombre').val();
    var edad = $('#ikasleEdad').val();
    var curso = $('#ikasleCurso').val();
    var datosEnviar = {"nombre": nombre, "edad": edad, "curso": curso};
    datosEnviar = JSON.stringify(datosEnviar);
//    alert(datosEnviar);
    $.ajax({
        type: 'GET',
        dstaType: 'json',
        url: "../controlador/controlador_insertar_ikasle.php",
        data: {"datosEnviados": datosEnviar},

        success: function (datos) {
            alert("Se ha insertado con exito");
            alert(datos);
        },
        error: function (xhr) {
            alert("An error occured: " + xhr.status + " " + xhr.statusText);
        }
    });
    esconder();
}

