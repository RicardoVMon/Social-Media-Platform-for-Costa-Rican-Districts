<?php include_once __DIR__ . '/../Conexion/dbconnection.php';


function ConsultarUsuarioBD($IdUsuario)
{
    $conexion = abrirConexion();
    $sentencia = "CALL ConsultarUsuario('$IdUsuario')";
    $respuesta = $conexion->query($sentencia);
    cerrarConexion($conexion);
    return $respuesta;
}

function EditarPerfilBD($IdUsuario, $Cedula, $NombreUsuario, $Email, $Genero, $Descripcion, $Icono)
{
    $conexion = abrirConexion();
    $sentencia = "CALL EditarPerfil('$IdUsuario','$Cedula','$NombreUsuario','$Email','$Genero','$Descripcion','$Icono')";
    $respuesta = $conexion->query($sentencia);
    cerrarConexion($conexion);
    return $respuesta;
}

function ConsultarIdDistritoBD()
{
    $conexion = abrirConexion();
    $sentencia = "CALL ConsultarIdDistrito()";
    $respuesta = $conexion->query($sentencia);
    cerrarConexion($conexion);
    return $respuesta;
}

function ConsultarUsuarioPostsBD($IdUsuario)
{
    $conexion = abrirConexion();
    $sentencia = "CALL ConsultarUsuarioPosts('$IdUsuario')";
    $respuesta = $conexion->query($sentencia);
    //$res = $respuesta->fetch_row();
    cerrarConexion($conexion);
    return $respuesta;
}

function ConsultarUsuarioComentariosBD($IdUsuario)
{
    $conexion = abrirConexion();
    $sentencia = "CALL ConsultarUsuarioComentarios('$IdUsuario')";
    $respuesta = $conexion->query($sentencia);
    //$res = $respuesta->fetch_row();
    cerrarConexion($conexion);
    return $respuesta;
}

function ObtenerPostsUsuarioBD($IdUsuario)
{
    $conexion = abrirConexion();
    $sentencia = "CALL obtenerPostsUsuario('$IdUsuario')";
    $respuesta = $conexion->query($sentencia);
    cerrarConexion($conexion);
    return $respuesta;
}
