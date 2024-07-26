<?php include_once '../../Model/Admin/postModelAdmin.php';

// File path temporal para mi computadora, el path relativo no me reconoce el archivo. - Daniel.
$filePath = realpath('/Applications/XAMPP/xamppfiles/htdocs/Proyecto/Model/Admin/postModelAdmin.php');
include_once $filePath;


// Para recibir la lista de publicaciones
function ObtenerPublicaciones()
{
    $respuesta = ObtenerPublicacionesBD();

    if ($respuesta->num_rows > 0) {
        while ($row = mysqli_fetch_array($respuesta)) {
            echo '<th>' . $row["titulo"] . '</th>';
            echo '<td>' . $row["contenido"] . '</td>';
            echo '<td>' . $row["cantidadComentarios"] . '</td>';
            echo '<td>
                <button class="btn btn-primary mr-2">Ver Completo</button>
                <form method="post" action="" style="display:inline;">
                    <input type="hidden" name="idPublicacion" value="' . $row["id_publicacion"] . '">
                    <button type="submit" name="btnEliminarPost" class="btn btn-danger">Eliminar</button>
                </form>
            </td>';
            echo '</tr>';
        }
    }
}

// Para eliminar una publicacion
if (isset($_POST['btnEliminarPost'])) {
    $id = $_POST['idPublicacion'];
    EliminarPublicacionBD($id);
}
