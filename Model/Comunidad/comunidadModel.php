<?php
include_once "../../../Model/Conexion/dbconnection.php";

function obtenerInformacionComunidadBD($idComunidad) {
    
    $conexion = abrirConexion();
    $query = "CALL obtenerInformacionComunidad('$idComunidad')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;

}

function obtenerPostsBD($idComunidad) {
    
    $conexion = abrirConexion();
    $query = "CALL obtenerPostsComunidad('$idComunidad')";
    $resultado = $conexion->query($query);
    cerrarConexion($conexion);
    return $resultado;
    
}

