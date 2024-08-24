<?php include_once __DIR__ . "/../Conexion/dbconnection.php";

function resultadoBusquedaPostsBD($busqueda)
{
    $conexion = abrirConexion();
    $query = "CALL resultadoBusquedaPosts('$busqueda')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}

function resultadoBusquedaComunidadesBD($busqueda)
{
    $conexion = abrirConexion();
    $query = "CALL resultadoBusquedaComunidades('$busqueda')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
}