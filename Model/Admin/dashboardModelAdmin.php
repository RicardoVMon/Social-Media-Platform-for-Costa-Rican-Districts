<?php include_once __DIR__ . '/../Conexion/dbconnection.php';

function ObtenerDatosDashboardBD()
{
    $conexion = abrirConexion();
    $procedimiento = "CALL ObtenerDatosDashboardAdmin()";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;
}

function ObtenerUsuariosDashboardBD()
{
    $conexion = abrirConexion();
    $procedimiento = "CALL ObtenerUsuariosDashboardAdmin()";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;
}