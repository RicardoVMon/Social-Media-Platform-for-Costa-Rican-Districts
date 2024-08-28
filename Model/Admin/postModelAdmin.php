<?php include_once __DIR__ . '/../Conexion/dbconnection.php';


function ObtenerPublicacionesBD()
{
    $conexion = abrirConexion();
    $procedimiento = "CALL ObtenerPublicacionesAdmin()";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;
}

function ObtenerPublicacionBD($id)
{
    $conexion = abrirConexion();
    $procedimiento = "CALL ObtenerPublicacionAdmin('$id')";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;
}

function ObtenerComentariosPublicacionBD($id)
{
    $conexion = abrirConexion();
    $procedimiento = "CALL ObtenerComentariosPublicacionAdmin('$id')";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;
}

function ObtenerComunidadPostAdminBD($id)
{
    $conexion = abrirConexion();
    $procedimiento = "CALL ObtenerComunidadPostAdmin('$id')";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;
}

function ObtenerUsuariosComunidadAdminBD($id)
{
    $conexion = abrirConexion();
    $procedimiento = "CALL ObtenerUsuariosComunidadAdmin('$id')";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;
}

function ObtenerLikesPostAdminBD($id)
{
    $conexion = abrirConexion();
    $procedimiento = "CALL ObtenerLikesPostAdmin('$id')";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;
}

function EliminarPublicacionBD($id)
{
    $conexion = abrirConexion();
    $procedimiento = "CALL EliminarPublicacionAdmin('$id')";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;
}

function EliminarComentarioBD($id)
{
    $conexion = abrirConexion();
    $procedimiento = "CALL EliminarComentarioPublicacionAdmin('$id')";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;
}
