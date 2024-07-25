<?php
include_once "../../Model/Comunidad/comunidadModel.php";

function obtenerInformacion($idComunidad) {

    $comunidad = obtenerInformacionBD($idComunidad);
    
    return $comunidad;
}

function obtenerPosts($idComunidad) {

    $posts = obtenerPostsBD($idComunidad);
    /* Aca iteramos para obtener la info */
    return $posts;
}