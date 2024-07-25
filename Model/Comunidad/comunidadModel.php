<?php
include_once "../../Model/Conexion/dbconnection.php";

function obtenerInformacionBD($idComunidad) {
    
    $conexion = abrirConexion();
    
    
    
    cerrarConexion($conexion);
    
    /* return $informacion; */
}

function obtenerPostsBD($idComunidad) {
    
    $conexion = abrirConexion();
    
    
    cerrarConexion($conexion);
    
}