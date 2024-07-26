<?php include_once "../Conexion/dbconnection.php";

// File path temporal para mi computadora, el path relativo no me reconoce el archivo. - Daniel.
$filePath = realpath('/Applications/XAMPP/xamppfiles/htdocs/Proyecto/Model/Conexion/dbconnection.php');
include_once $filePath;

function ObtenerComunidadesBD()
{
    $conexion = abrirConexion();
    $procedimiento = "CALL ObtenerComunidadesAdmin()";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;
} 

function ObtenerComunidadBD($id)
{
    $conexion = abrirConexion();
    $procedimiento = "CALL ObtenerComunidadAdmin('$id')";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;   
}

function ActualizarComunidadBD($id, $descripcion, $banner, $icono)
{
    $conexion = abrirConexion();
    $procedimiento = "CALL ActualizarComunidadAdmin('$id', '$descripcion', '$banner', '$icono')";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;
}
