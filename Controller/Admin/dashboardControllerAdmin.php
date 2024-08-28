<?php include_once __DIR__ . '/../../Model/Admin/dashboardModelAdmin.php';

function ObtenerDatosDashboard()
{
    $resultado = ObtenerDatosDashboardBD();

    return mysqli_fetch_array($resultado);
}

function ObtenerUsuariosDashboard()
{
    $resultado = ObtenerUsuariosDashboardBD();

    if ($resultado->num_rows > 0) {
        while ($row = mysqli_fetch_array($resultado)) {
            echo '<tr>';
            echo '<th>' . $row["cedula"] . '</th>';
            echo '<th>' . $row["nombre_usuario"] . '</th>';
            echo '<td>' . $row["nombre_distrito"] . '</td>';
            echo '</tr>';
        }
    }
}


