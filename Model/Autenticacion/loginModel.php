<?php include_once __DIR__ . '/../Conexion/dbconnection.php';


function loginUsuario($cedula, $contrasennia)
{
    $conexion = abrirConexion();
    $query = "CALL loginUsuario('$cedula', '$contrasennia')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}
//recuperar contraseña

function ConsultarUsuarioCedula($cedula)
{
    $conexion = abrirConexion();
    $query = "CALL ConsultarUsuarioCedula('$cedula')";
    $respuesta = $conexion -> query($query);
    cerrarConexion($conexion);
    return $respuesta;
}

function ActualizarPasswordTemporal($idUsuario, $contrasennia)
    {
        $conexion = abrirConexion();
        $query = "CALL ActualizarPasswordTemporal('$idUsuario', '$contrasennia')";
        $respuesta = $conexion -> query($query);
        cerrarConexion($conexion);
        return $respuesta;
    }

?>