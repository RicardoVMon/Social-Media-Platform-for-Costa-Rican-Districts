<?php

function abrirConexion()
{
    return mysqli_connect("127.0.0.1:3309", "root", "", "communityalert");
}

function cerrarConexion($conexion)
{
    mysqli_close($conexion);
}