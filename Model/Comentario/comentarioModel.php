<?php include_once __DIR__ . '/../Conexion/dbconnection.php';

function publicarComentario($contenido, $idPublicacion, $idUsuario)
{
    $conexion = abrirConexion();
    $query = "CALL publicarComentario('$contenido', '$idPublicacion', '$idUsuario')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}

function obtenerComentariosBD($idPublicacion)
{
    $conexion = abrirConexion();
    $query = "CALL obtenerComentarios('$idPublicacion')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}

function obtenerComentariosUsuarioBD($idUsuario)
{
    $conexion = abrirConexion();
    $query = "CALL obtenerComentariosUsuario('$idUsuario')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}