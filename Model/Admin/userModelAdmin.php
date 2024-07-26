<?php include_once "../Conexion/dbconnection.php";

// File path temporal para mi computadora, el path relativo no me reconoce el archivo. - Daniel.
$filePath = realpath('/Applications/XAMPP/xamppfiles/htdocs/Proyecto/Model/Conexion/dbconnection.php');
include_once $filePath;

function ObtenerUsuariosBD()
{
    $conexion = abrirConexion();
    $procedimiento = "CALL ObtenerUsuariosAdmin()";
    $respuesta = $conexion->query($procedimiento);
    cerrarConexion($conexion);
    return $respuesta;
} 