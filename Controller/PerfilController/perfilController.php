<?php include_once __DIR__ . '/../../Model/Perfil/perfilModel.php';
include_once __DIR__ . '/../../View/User/Layout/layoutHome.php';
include_once __DIR__ . "/../../Model/Autenticacion/registroModel.php";
include_once __DIR__ . "/../../Controller/Comunidad/comunidadController.php";

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

function ConsultarUsuario($IdUsuario)
{
    $respuesta = ConsultarUsuarioBD($IdUsuario);
    if ($respuesta->num_rows > 0) {
        return mysqli_fetch_array($respuesta);
    }
}

function ConsultarIdDistrito($id_distrito)
{
    $respuesta = ConsultarIdDistritoBD();

    if ($respuesta->num_rows > 0) {
        while ($row = mysqli_fetch_array($respuesta)) {
            if ($id_distrito == $row["id_distrito"]) {
                echo "<option selected value=" . $row["id_distrito"] . ">" . $row["nombre_distrito"] . "</option>";
            } else {
                echo "<option value=" . $row["id_distrito"] . ">" . $row["nombre_distrito"] . "</option>";
            }
        }
    }
}

function ConsultarIdGenero($id_genero)
{
    $respuesta = ConsultarIdGeneroBD();

    if ($respuesta->num_rows > 0) {
        echo '<option value="" selected disabled>Seleccione una opción</option>';
        while ($row = mysqli_fetch_array($respuesta)) {
            if ($id_genero == $row["id_genero"]) {
                echo "<option selected value=" . $row["id_genero"] . ">" . $row["nombre_genero"] . "</option>";
            } else {
                echo "<option value=" . $row["id_genero"] . ">" . $row["nombre_genero"] . "</option>";
            }
        }
    }
}

if (isset($_POST["btnEditarPerfil"])) {

    $IdUsuario = $_POST["txtIdUsuario"];
    $Cedula = $_POST["txtCedula"];
    $NombreUsuario = $_POST["txtNombreUsuario"];
    $Email = $_POST["txtEmail"];
    $Genero = $_POST["selectGenero"];
    $Descripcion = $_POST["description"];

    //$Icono = "";
    $Icono = $_SESSION['iconoUsuario'];
    if($_FILES["txtIcono"]["name"] != "")
    {
        $Icono = '/Community-Alert/View/User/Perfil/Images/' . $_FILES["txtIcono"]["name"];
        $origen = $_FILES["txtIcono"]["tmp_name"];
        $destino = $_SERVER['DOCUMENT_ROOT'] . '/Community-Alert/View/User/Perfil/Images/' . $_FILES["txtIcono"]["name"];
        copy($origen, $destino);
    }

    $respuesta = EditarPerfilBD($IdUsuario, $Cedula, $NombreUsuario, $Email, $Genero, $Descripcion, $Icono);

    if ($respuesta == true) {
        $_SESSION["nombreUsuario"] = $_POST["txtNombreUsuario"];
        $_SESSION['iconoUsuario'] = $Icono;
        $_SESSION['email'] = $_POST["txtEmail"];

        header("location: ../../../View/User/Perfil/perfil.php" . "?s=" . $IdUsuario . "&t=posts");
    } else {
        $_POST["msj"] = "No se ha podido actualizar la información de su perfil.";
    }
}

function ConsultarUsuarioPosts($IdUsuario)
{
    return ConsultarUsuarioPostsBD($IdUsuario);
}

function ConsultarUsuarioComentarios($IdUsuario)
{
    return ConsultarUsuarioComentariosBD($IdUsuario);
}

function ObtenerPostsUsuario($IdUsuario)
{
    $respuesta = ObtenerPostsUsuarioBD($IdUsuario);

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
                            <span class="ml-1"><b>' . $row['nombre_usuario'] . '</b></span>
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
                        <a href="#" class="btn btn-secondary">
                            <i class="fa fa-comment"></i> Comentar
                        </a>
                    </div>
                </div>
            </div>';
        }
    } else {
        echo '<div class="col-md-12 px-0">
            <div class="card">
                <div class="card-body">
                <h1 class="text-center">Oh no! Este perfil aún no tiene publicaciones</h1>
                <div style="display: flex; justify-content: center;">
                        <iframe src="https://giphy.com/embed/ui4VjMUBGXhwgdwUnK" width="240" height="147" style="pointer-events: none;" frameBorder="0" class="giphy-embed" allowFullScreen></iframe>
                </div>
                </div>
            </div>
            </div>';
    }
}
