<?php include_once __DIR__ . "/../../Model/PostModel/postModel.php";

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

//para publicar la noticia
if (isset($_POST["btnPublicarNoticia"])) {
    $titulo = $_POST["titulo"];
    $noticia = $_POST["noticia"];
    $usuario = $_SESSION['idUsuario'];
    $categoria = $_POST["categoria"];

    $respuesta = PublicarNoticia($titulo, $noticia, $usuario, $categoria);

    if ($respuesta === true) {
        $idNoticia = obtenerIdNoticiaSegunContenido($titulo, $noticia, $usuario, $categoria);
        header("location: ../../../View/User/Post/noticiaCreada.php?q=" . $_GET['q'] . "&r=" . $idNoticia);
    } else {
        $_POST["msj"] = "Error! La noticia no se publicado correctamente.";
    }
}

//drop_down categorias
function obtenerCategorias()
{
    $resultado = obtenerCategoriasBD();

    echo '<option value="" selected disabled>Seleccione una categoría</option>';

    if ($resultado->num_rows > 0) {
        while ($row = mysqli_fetch_array($resultado)) {
            echo '<option value="' . $row['id_categoria_publicacion'] . '">' . $row['nombre_categoria_publicacion'] . '</option>';
        }
    } else {
        echo '<option value="">No hay categorias registradas</option>';
    }
}


//Se visualiza la noticia despues de crearla
function VisualizarNoticia($idNoticia)
{
    $respuesta = ObtenerNoticia($idNoticia);

    if ($respuesta->num_rows > 0) {
        return mysqli_fetch_array($respuesta);
    }
}

function obtenerIdNoticiaSegunContenido($titulo, $contenido, $usuario, $categoria)
{
    $respuesta = obtenerNoticiaIdSegunContenidoBD($titulo, $contenido, $usuario, $categoria);

    if ($respuesta->num_rows > 0) {
        $row = mysqli_fetch_array($respuesta);
        $id_publicacion = $row['id_publicacion'];
        return $id_publicacion;
    }
}

function VisualizarInformacionComunidad($id_distrito)
{

    $respuestaSeguidoresFecha = obtenerSeguidoresYFecha($id_distrito);
    $respuestaProvinciaCanton = obtenerNombreProvinciaCanton($id_distrito);

    if ($respuestaSeguidoresFecha->num_rows > 0 && $respuestaProvinciaCanton->num_rows > 0) {

        $rowSeguidoresFecha = mysqli_fetch_array($respuestaSeguidoresFecha);
        $rowProvinciaCanton = mysqli_fetch_array($respuestaProvinciaCanton);

        echo '<div class="row">
                <div class="col-md-6">
                    <h4 class="fw-bold mb-0">' . $rowSeguidoresFecha['fecha'] . '</h4>
                    <p>Fecha de hoy</p>
                </div>
                <div class="col-md-6">
                    <h4 class="fw-bold mb-0">' . $rowSeguidoresFecha['seguidores'] . '</h4>
                    <p>Número de Seguidores</p>
                </div>
              </div>
            <div class="row">
                <div class="col-md-6">
                    <h4 class="fw-bold mb-0">' . $rowProvinciaCanton['nombre_provincia'] . '</h4>
                    <p>Provincia</p>
                </div>
                <div class="col-md-6">
                    <h4 class="fw-bold mb-0">' . $rowProvinciaCanton['nombre_canton'] . '</h4>
                    <p>Canton</p>
                </div>
            </div>';
    }
}
