<?php include_once '../../Model/Admin/comunidadModelAdmin.php';

// File path temporal para mi computadora, el path relativo no me reconoce el archivo. - Daniel.
$filePath = realpath('/Applications/XAMPP/xamppfiles/htdocs/Proyecto/Model/Admin/comunidadModelAdmin.php');
include_once $filePath;

if (isset($_POST['btnModificarComunidad'])) {

    $id = $_POST['id'];
    $descripcion = $_POST['descripcion'];
    $banner = $_POST['banner'];
    $icono = $_POST['icono'];
    
    $resultadoActualizar = ActualizarComunidadBD($id, $descripcion, $banner, $icono);

    if ($resultadoActualizar) {

        header("Location: ../../View/Admin/Comunidad/modificarComunidad.php?id=". $id);
    }
}

// Para recibir la lista de comunidades
function ObtenerComunidades()
{
    $respuesta = ObtenerComunidadesBD();

    if ($respuesta->num_rows > 0) {
        while ($row = mysqli_fetch_array($respuesta)) {
            echo '<th>' . $row["nombre_provincia"] . '</th>';
            echo '<td>' . $row["nombre_canton"] . '</td>';
            echo '<td>' . $row["nombre_distrito"] . '</td>';
            echo '<td>' . $row["cantidadUsuarios"] . '</td>';
            echo '<td>
                <form method="get" action="modificarComunidad.php" style="display:inline;">
                    <input type="hidden" name="id" value="' . $row["id_distrito"] . '">
                    <button type="submit" class="btn btn-primary w-100">Modificar</button>
                </form>
            </td>';
            echo '</tr>';
        }
    }
}

function ObtenerComunidad($id)
{
    $resultado = ObtenerComunidadBD($id);

    return $resultado->fetch_assoc();
}