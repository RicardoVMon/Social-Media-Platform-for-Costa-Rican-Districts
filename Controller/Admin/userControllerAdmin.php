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
            echo '<th>' . $row["cedula"] . '</th>';
            echo '<td>' . $row["nombre_usuario"] . '</td>';
            echo '<td>' . $row["nombre_distrito"] . '</td>';
            echo '<td>' . $row["cantidadPosts"] . '</td>';
            echo '<td>' . $row["cantidadComentarios"] . '</td>';
            echo '<td>
                <button class="btn btn-primary mr-2">Cambiar Estado</button>
                <button class="btn btn-secondary">Ver Perfil</button>
            </td>';
            echo '</tr>';
        }
    }
}
