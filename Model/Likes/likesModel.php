<?php include_once __DIR__ . "/../Conexion/dbconnection.php";

function obtenerLikesPostBD($idPost)
{
    $conexion = abrirConexion();
    $query = "CALL obtenerLikesPost('$idPost')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}

function estadoLikeUsuarioBD($idUsuario, $idPost)
{
    $conexion = abrirConexion();
    $query = "CALL estadoLikeUsuario('$idUsuario', '$idPost')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}

function cambiarEstadoLikeBD($idUsuario, $idPost)
{
    $conexion = abrirConexion();
    $query = "CALL cambiarEstadoLike('$idUsuario', '$idPost')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}