<?php include_once '../../Model/Admin/userModelAdmin.php';

// File path temporal para mi computadora, el path relativo no me reconoce el archivo. - Daniel.
$filePath = realpath('/Applications/XAMPP/xamppfiles/htdocs/Proyecto/Model/Admin/userModelAdmin.php');
include_once $filePath;

// Para recibir la lista de usuarios
function ObtenerUsuarios()
{
    $respuesta = ObtenerUsuariosBD();

    if ($respuesta->num_rows > 0) {
        while ($row = mysqli_fetch_array($respuesta)) {
            echo '<tr>';
            echo '<th>' . $row["estado"] . '</th>';
            echo '<th>' . $row["cedula"] . '</th>';
            echo '<td>' . $row["nombre_usuario"] . '</td>';
            echo '<td>' . $row["nombre_distrito"] . '</td>';
            echo '<td>' . $row["cantidadPosts"] . '</td>';
            echo '<td>' . $row["cantidadComentarios"] . '</td>';
            echo '<td>
                <form method="post" action="" style="display:inline;">
                    <input type="hidden" name="idUsuario" value="' . $row["id_usuario"] . '">
                    <button type="submit" name="btnCambiarEstado" class="btn btn-primary mr-2">Cambiar Estado</button>
                </form>
                <button class="btn btn-secondary">Ver Perfil</button>
              </td>';
            echo '</tr>';
        }
    }
}

// Para cambiar el estado
if (isset($_POST['btnCambiarEstado'])) {
    $id = $_POST['idUsuario'];

    CambiarEstadoUsuarioBD($id);
}
