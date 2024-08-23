<?php include_once __DIR__ . "/../../Model/Comunidad/comunidadModel.php";

function obtenerInformacionComunidad($idComunidad)
{
    $respuesta = obtenerInformacionComunidadBD($idComunidad);
    if ($respuesta->num_rows > 0) {
        return mysqli_fetch_array($respuesta);
    }
}

function obtenerPosts($idComunidad)
{

    $respuesta = obtenerPostsBD($idComunidad);

    if ($respuesta->num_rows > 0) {
        while ($row = mysqli_fetch_array($respuesta)) {

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
                            <a href="../../../View/User/Post/noticiaCreada.php?q=' .  $idComunidad . '&r=' . $row['id_publicacion'] . '" class="card-title mb-0" style="font-size: 2vw;">' . $row['titulo'] . '</a>
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
                        <a href="#" class="btn btn-primary mr-2">
                            <i class="fa-regular fa-heart"></i> 128
                        </a>
                        <a href="../../../View/User/Post/noticiaCreada.php?q=' .  $idComunidad . '&r=' . $row['id_publicacion'] . '" class="btn btn-secondary">
                            <i class="fa fa-comment"></i> Comentar
                        </a>
                    </div>
                </div>
            </div>';
        }
    } else {

        if ($_GET['q'] == $_SESSION['idDistrito']) {
            echo '<div class="col-md-12 mt-5 px-0">
            <div class="">
                <div class="">
                <h1 class="text-center">Aún no hay publicaciones en tu comunidad,<br><a href="../Post/crearNoticia.php?q=' . $_GET['q'] . '"> <u>crea una</u></a> para empezar! </h1>
                <div style="display: flex; justify-content: center;">
                        <iframe src="https://giphy.com/embed/R15WrVMPBakLK" width="240" height="147" style="pointer-events: none;" frameBorder="0" class="giphy-embed" allowFullScreen></iframe>
                </div>
                </div>
            </div>
            </div>';
        } else {
            echo '<div class="col-md-12 mt-5 px-0">
            <div class="">
                <div class="">
                <h1 class="text-center">Aún no hay publicaciones en esta comunidad, <br> <a href="../Comunidad/explorarProvincias.php"> <u>explora otras</u></a> para empezar! </h1>
                <div style="display: flex; justify-content: center;">
                        <iframe src="https://giphy.com/embed/ZSghhrWswydCE" width="240" height="147" style="pointer-events: none;" frameBorder="0" class="giphy-embed" allowFullScreen></iframe>
                </div>
                </div>
            </div>
            </div>';
        }
    }
}

function obtenerPostsComunidadesSeguidas($idUsuario)
{
    /* Cambiar para que traiga el id de la comunidad */
    $respuesta = obtenerPostsComunidadesSeguidasBD($idUsuario);

    if ($respuesta->num_rows > 0) {

        while ($row = mysqli_fetch_array($respuesta)) {

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
                        <a href="#" class="btn btn-primary mr-2">
                            <i class="fa-regular fa-heart"></i> 131
                        </a>
                        <a href="../../../View/User/Post/noticiaCreada.php?q=' . $row['id_distrito'] . '&r=' .  $row['id_publicacion'] . '" class="btn btn-secondary">
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
                <h1 class="text-center">Aún no hay publicaciones en tus comunidades, <br> <a href="../Comunidad/explorarProvincias.php"> <u>explora otras</u></a> para empezar! </h1>
                <div style="display: flex; justify-content: center;">
                        <iframe src="https://giphy.com/embed/ISOckXUybVfQ4" width="240" height="147" style="pointer-events: none;" frameBorder="0" class="giphy-embed" allowFullScreen></iframe>
                </div>
                </div>
            </div>
            </div>';
    }
}

function opcionesComunidad()
{
    if ($_GET['q'] == $_SESSION['idDistrito']) {
        echo '<div class="d-flex flex-column justify-content-center mr-3">
                    <a href="../Post/crearNoticia.php?q=' . $_GET['q'] . '" class="btn btn-primary btn-round" style="font-size: 1vw;">
                        <i class="fa-solid fa-plus mx-1"></i>
                        Crear Publicación
                    </a>
                </div>
            <div class="d-flex flex-column justify-content-center mr-3">
                <div class="btn btn-success btn-round" style="font-size: 1vw;">
                    <i class="fa-solid fa-check mx-1"></i>
                    Tu comunidad
                </div>
            </div>';
    } else {
        if (obtenerComunidadesSeguidas($_SESSION['idUsuario'], $_GET['q'])) {
            echo '                                        
                <form action="" method="POST" class="d-flex flex-column justify-content-center">
                    <div>
                        <input type="hidden" name="idUsuario" value="' . $_SESSION['idUsuario'] . '">
                        <input type="hidden" name="idComunidad" value="' . $_GET['q'] . '">
                        <button type="submit" class="btn btn-success btn-round" style="font-size: 1vw;" id="btnDejarSeguir" name="btnDejarSeguir">
                            <i class="fa-solid fa-check mr-1"></i>
                            Seguido
                        </button>
                    </div>
                </form>';
        } else {
            echo '                                        
                <form action="" method="POST" class="d-flex flex-column justify-content-center">
                    <input type="hidden" name="idUsuario" value="' . $_SESSION['idUsuario'] . '">
                    <input type="hidden" name="idComunidad" value="' . $_GET['q'] . '">
                    <div>
                        <button type="submit" class="btn btn-primary btn-round" style="font-size: 1vw;" id="btnSeguir" name="btnSeguir">
                            <i class="fa-solid fa-plus mx-1"></i>
                            Seguir
                        </button>
                    </div>
                </form>';
        }
    }
}

function seguirComunidad($idUsuario, $idComunidad)
{
    $resultado = seguirComunidadBD($idUsuario, $idComunidad);
    return $resultado;
}

function dejarDeSeguirComunidad($idUsuario, $idComunidad)
{
    $resultado = dejarDeSeguirComunidadBD($idUsuario, $idComunidad);
    return $resultado;
}

function cambioDeDistrito($idDistrito)
{
    $sigueComunidad = obtenerComunidadesSeguidas($_SESSION['idUsuario'], $idDistrito);
    if (!$sigueComunidad) {
        seguirComunidad($_SESSION['idUsuario'], $idDistrito);
    }
}

function obtenerComunidadesSeguidas($idUsuario, $idComunidad)
{
    $respuesta = obtenerComunidadesSeguidasBD($idUsuario, $idComunidad);
    if ($respuesta->num_rows > 0) {
        return $respuesta;
    }
}

function obtenerListaComunidadesSeguidas($idUsuario)
{
    $respuesta = obtenerListaComunidadesSeguidasBD($idUsuario);
    
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
                        <a href="comunidad.php?q='. $row['id_distrito'] . '" style="text-decoration: none; color: inherit;">
                            <div class="d-flex justify-content-between">
                                <div class="container w-75 pl-0 pr-0 ml-0 mr-0">
                                    <h1 class="h1 mb-0">' . $row['nombre_distrito'] . '</h1>
                                    <div class="display-5">' . $row['descripcion'] . '</div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>';
        }
    }
}

if (isset($_POST['btnSeguir'])) {
    $idUsuario = $_POST['idUsuario'];
    $idComunidad = $_POST['idComunidad'];
    $resultado = seguirComunidad($idUsuario, $idComunidad);
    if ($resultado) {
        header("Location: comunidad.php?q=" . $idComunidad);
    }
}

if (isset($_POST['btnDejarSeguir'])) {
    $idUsuario = $_POST['idUsuario'];
    $idComunidad = $_POST['idComunidad'];
    $resultado = dejarDeSeguirComunidad($idUsuario, $idComunidad);
    if ($resultado) {
        header("Location: comunidad.php?q=" . $idComunidad);
    }
}
