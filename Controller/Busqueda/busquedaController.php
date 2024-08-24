<?php include_once __DIR__ . "/../../Model/Busqueda/busquedaModel.php";
include_once __DIR__ . '/../../Controller/Comunidad/comunidadController.php';

if (isset($_POST['btnBuscar'])) {
    $busqueda = $_POST['busqueda'];
    header("Location: ../../../View/User/Busqueda/resultados.php?b=".$busqueda."&c=posts");
}

function resultadoBusquedaPosts($busqueda)
{
    $respuesta = resultadoBusquedaPostsBD($busqueda);

    if ($respuesta->num_rows > 0) {

        while ($row = mysqli_fetch_array($respuesta)) {

            $cantidad_likes = obtenerLikesPost($row['id_publicacion']);
            $existencia_like = estadoLikeUsuario($_SESSION['idUsuario'], $row['id_publicacion']);

            echo '
            <div class="col-md-12 px-0">
                <div class="card">
                    <div class="card-header pb-1">
                        <div class="d-flex">
                            <img src="' . $row['icono'] . '" class="rounded-circle" style="height: 1vw; width: 1vw; object-fit: cover;">
                            <a href="../../../View/User/Perfil/perfil.php?s=' . $row['id_usuario'] . '&t=posts" class="ml-1"><b>' . $row['nombre_usuario'] . '</b></a>
                            <span class="ml-1">' . $row['fecha'] . '</span>
                        </div>
                        <div class="card-head-row">
                            <a href="../../../View/User/Post/noticiaCreada.php?q=' . $row['id_distrito'] . '&r=' .  $row['id_publicacion'] . '" class="card-title mb-0" style="font-size: 2vw;">' . $row['titulo'] . '</a>
                            <div class="card-tools">
                                <a href="#" class="btn btn-warning btn-round btn-sm mr-2">
                                    <span class="btn-label">
                                        <i class="fa-solid fa-circle-exclamation"></i>
                                    </span>
                                    ' . $row['nombre_categoria_publicacion'] . '
                                </a>
                                <a href="../../../View/User/Comunidad/comunidad.php?q=' . $row['id_distrito'] . '" class="btn btn-info btn-round btn-sm mr-2 ">
                                    <span class="btn-label">
                                        <i class="fa-solid fa-house"></i>
                                        ' . $row['nombre_distrito'] . '
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <p class="mb-0">
                            ' . $row['contenido'] . '
                        </p>
                    </div>
                    <div class="card-footer">
                        <a href="#" id="btn-like" name="btn-like" class="btn btn-primary mr-2" onclick="cambiarValorLike(event,' . $row['id_publicacion'] . ', ' . $_SESSION['idUsuario'] . ');">
                            <i id="icono-like-' . $row['id_publicacion'] . '" name="icono-like-' . $row['id_publicacion'] . '" class="' . ($existencia_like == 1 ? 'fa-solid' : 'fa-regular') . ' fa-heart"></i> 
                            <span id="cantidad-likes-' . $row['id_publicacion'] . '" id="cantidad-likes-' . $row['id_publicacion'] . '">' . $cantidad_likes . '</span>
                        </a>
                        <a href="../../../View/User/Post/noticiaCreada.php?q=' . $row['id_distrito'] . '&r=' . $row['id_publicacion'] . '" class="btn btn-secondary">
                            <i class="fa fa-comment"></i> Comentar
                        </a>
                    </div>
                </div>
            </div>';
        }
    } else {
        echo '<div class="col-md-12 mt-5 px-0">
            <div class="">
                <div class="">
                <h1 class="text-center">No se han encontrado posts en esta búsqueda, <br> <a href="../../../View/User/Busqueda/resultados.php?b=' . $_GET['b'] . '&c=comunidades"> <u>prueba buscando comunidades!</u></a></h1>
                <div style="display: flex; justify-content: center;">
                        <iframe src="https://giphy.com/embed/ISOckXUybVfQ4" width="240" height="147" style="pointer-events: none;" frameBorder="0" class="giphy-embed" allowFullScreen></iframe>
                </div>
                </div>
            </div>
            </div>';
    }
}

function resultadoBusquedaComunidades ($busqueda) {
    
    $respuesta = resultadoBusquedaComunidadesBD($busqueda);
    
    if ($respuesta->num_rows > 0) {

        while ($row = mysqli_fetch_array($respuesta)) {

            echo '
            <div class="col-12">
                <div class="card">
                    <div class="card-header p-1">
                        <div class="d-flex">
                            <img class="rounded-top" src="' . $row['banner'] . '" width="100%" height="50px" style="object-fit: cover;">
                        </div>
                    </div>
                    <div class="card-body pt-3">
                        <a href="../Comunidad/comunidad.php?q='. $row['id_distrito'] . '" style="text-decoration: none; color: inherit;">
                            <div class="d-flex justify-content-between">
                                <div class="container w-75 pl-0 pr-0 ml-0 mr-0">
                                    <h1 class="h1 mb-0">' . $row['nombre_distrito'] . '</h1>
                                    <div class="display-5">' . $row['descripcion'] . '</div>
                                </div>
                            </div>
                            <div class="row justify-content-start mr-3 mt-2">
                                <div class="col-1">
                                    <i class="fa fa-users"></i>
                                    <span> '. $row['nombre_provincia'] . '</span>
                                </div>
                                <div class="col-1">
                                    <i class="fa-solid fa-star"></i>
                                    <span> '. $row['nombre_canton'] . '</span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>';
        }
    } else {
        echo '<div class="col-md-12 mt-5 px-0">
            <div class="">
                <div class="">
                <h1 class="text-center">No se han encontrado comunidades en esta búsqueda, <br> <a href="../../../View/User/Busqueda/resultados.php?b=' . $_GET['b'] . '&c=posts"> <u>prueba buscando posts!</u></a></h1>
                <div style="display: flex; justify-content: center;">
                        <iframe src="https://giphy.com/embed/ISOckXUybVfQ4" width="240" height="147" style="pointer-events: none;" frameBorder="0" class="giphy-embed" allowFullScreen></iframe>
                </div>
                </div>
            </div>
            </div>';
    }
}