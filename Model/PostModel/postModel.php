<?php

include_once "../../../Model/Conexion/dbconnection.php";


    function PublicarNoticia($titulo,$noticia,$usuario,$categoria)
    {
        $conexion = abrirConexion();
        $sentencia = "CALL PublicarNoticia('$titulo','$noticia','$usuario','$categoria')";
        $respuesta = $conexion -> query($sentencia);
        cerrarConexion($conexion);
        return $respuesta;
    }
    
    function obtenerCategoriasBD()
    {
        $conexion = abrirConexion();
        $query = "CALL obtenerCategorias()";
        $resultado = $conexion -> query($query);
        cerrarConexion($conexion);
        return $resultado;
        
    }

    function ObtenerNoticia()
    {
        $conexion = abrirConexion();
        $sentencia = "CALL ObtenerNoticia()";
        $respuesta = $conexion -> query($sentencia);
        cerrarConexion($conexion);
        return $respuesta;
    }


    function ObtenerInformacionComunidad()
{
    $conexion = abrirConexion();
    $sentencia = "CALL ObtenerInformacionComunidad()";
    $respuesta = $conexion->query($sentencia);
    cerrarConexion($conexion);
    return $respuesta;
}

?>