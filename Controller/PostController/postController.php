<?php
include_once "../../../Model/PostModel/postModel.php";

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

//para publicar la noticia
    if (isset($_POST["btnPublicarNoticia"])) {
        $titulo = $_POST["titulo"];
        $noticia = $_POST["noticia"];
        $usuario = $_SESSION['idUsuario'];
        $categoria = $_POST["categoria"];
        
    //fecha, id categoria (inventar) id persona
        $respuesta = PublicarNoticia($titulo, $noticia, $usuario, $categoria);
    
       if ($respuesta === true) {
            header("location: ../View/User/Post/noticiaCreada.php");
        } else {
            $_POST["msj"] = "Error! La noticia no se publicado correctamente.";
        }
    }

    //drop_down categorias

    
function obtenerCategorias()
{
    $resultado = obtenerCategoriasBD();

    echo '<option value="" selected>Seleccione...</option>';

    if ($resultado->num_rows > 0) {
        while ($row = mysqli_fetch_array($resultado)) {
            echo '<option value="' . $row['id_categoria_publicacion'] . '">' . $row['nombre_categoria_publicacion'] . '</option>';
        }
    } else {
        echo '<option value="">No hay categorias registradas</option>';
    }
}

   /*
//Se visualiza la noticia despues de crearla
    function VisualizarNoticia()
    {
        $respuesta = ObtenerNoticia();
    
        if($respuesta->num_rows > 0) {
            while ($row = mysqli_fetch_array($respuesta)) {
                echo "<h4>" . $row["Titulo"] . "</h4>";
                echo "<p>Por: " . $row["id_usuario"] . " en " . $row["fecha"] . "</p>";
                echo "<p>" . $row["Contenido"] . "</p>";
                echo "</div>";
            }
        }
    }
    */
    ?>