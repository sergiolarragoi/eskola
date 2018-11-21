//function funcionKontsultaIkasleak() {
//    $ajax({
//        type: 'GET',
//        dataType: 'json',
//        url: '../controlador/controlador_consulta_ikasleak.php',
//        success: function (datos) {
//            var tabla = "<table>";
//            tabla += "<th class='id'>Id</th>\n\
// <th class='nombre'>Noombre</th><th class='nombre'>Edad</th>";
//        }
//
//    });
//}



function funcionKontsultaIkasleak() {
    alert("hola2");
    $('#zonaConsulta').html(' ');
    $.ajax({
        type: 'POST',
        dstaType: 'json',
        url: "../controlador/controlador_consulta_ikasleak.php",
        success: function (datos) {
            alert(datos);
            var tabla = "<table>";
            tabla += "<th class='id'>Registro</th>\n\
               <th class='nombre'>Nombre</th><th class='nombre'>Edad</th>\n\
               <th class='numerico'>Curso</th><th class='nombre'>Opciones</th>";
            midato = JSON.parse(datos);

            $.each(midato, function (i, dato) {
                tabla += "<tr>";
                tabla += "<td class='id'>" + dato.id + "</td>";
                tabla += "<td class='numerico'>" + dato.Nombre + "</td>";
                tabla += "<td class='numerico'>" + dato.Edad + "</td>";
                tabla += "<td class='numerico'>" + dato.Curso + "</td>";
                tabla += "<td class='nombre'><input type='button' value='editar' class='editar' data-id='" + dato.id + "'>";
                tabla += "<input type='button' value='borrar' class='borrar' data-id='" + dato.id + "'></td>";
                tabla += "</tr>";
            });
            tabla += "</table>";
            alert(tabla);
            $('#zonaConsulta').append(tabla).hide().fadeIn('slow');
            return false;
        },
        error: function (xhr) {
            alert("An error occured: " + xhr.status + " " + xhr.statusText);
        }
    });
}

