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
function ActualizarContrasenna($Consecutivo, $Contrasenna, $EsTemporal)
    {
        $conexion = abrirConexion();
        $sentencia = "CALL ActualizarContrasenna('$Consecutivo', '$Contrasenna', '$EsTemporal')";
        $respuesta = $conexion -> query($sentencia);
        cerrarConexion($conexion);
        return $respuesta;
    }

    function ConsultarUsuariosBD($ConsecutivoLogueado)
    {
        $conexion = abrirConexion();
        $sentencia = "CALL ConsultarUsuarios('$ConsecutivoLogueado')";
        $respuesta = $conexion -> query($sentencia);
        cerrarConexion($conexion);
        return $respuesta;
    }

    function CambiarEstadoUsuario($Consecutivo)
    {
        $conexion = abrirConexion();
        $sentencia = "CALL CambiarEstadoUsuario('$Consecutivo')";
        $respuesta = $conexion -> query($sentencia);
        cerrarConexion($conexion);
        return $respuesta;
    }

    function ConsultarUsuarioBD($Consecutivo)
    {
        $conexion = abrirConexion();
        $sentencia = "CALL ConsultarUsuario('$Consecutivo')";
        $respuesta = $conexion -> query($sentencia);
        cerrarConexion($conexion);
        return $respuesta;
    }

    function ActualizarUsuario($Consecutivo,$Identificacion,$pNombre,$Correo,$IdRol)
    {
        $conexion = abrirConexion();
        $sentencia = "CALL ActualizarUsuario('$Consecutivo','$Identificacion','$pNombre','$Correo','$IdRol')";
        $respuesta = $conexion -> query($sentencia);
        cerrarConexion($conexion);
        return $respuesta;
    }

?>