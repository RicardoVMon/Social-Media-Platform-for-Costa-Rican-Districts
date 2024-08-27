<?php include_once __DIR__ . '/../../Model/Admin/userModelAdmin.php';

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
                    <button type="submit" name="btnCambiarEstado" class="btn btn-danger mr-2">Cambiar Estado</button>
                </form>
                <form method="get" action="usuario.php" style="display:inline;">
                    <input type="hidden" name="idUsuario" value="' . $row["id_usuario"] . '">
                    <button type="submit" class="btn btn-primary mr-2">Ver Perfil</button>
                </form>
              </td>';
            echo '</tr>';
        }
    }
}

function ObtenerDatosUsuario($id)
{
    $resultado = ObtenerDatosUsuarioBD($id);
    
    return mysqli_fetch_array($resultado);
}

// Para cambiar el estado
if (isset($_POST['btnCambiarEstado'])) {
    $id = $_POST['idUsuario'];

    CambiarEstadoUsuarioBD($id);
}

// Para ver el perfil de algún usuario
if (isset($_POST['btnCambiarEstado'])) {

}

