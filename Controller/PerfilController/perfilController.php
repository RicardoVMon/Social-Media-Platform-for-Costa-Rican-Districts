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
    $Icono = "000"; //$_POST["txtIcono"];

    $provincia = $_POST['nombreProvincia'];
    $canton = $_POST['nombreCanton'];
    $distrito = $_POST['nombreDistrito'];

    $resultadoDistrito = obtenerIdDistrito($provincia, $canton, $distrito);
    $datos = mysqli_fetch_array($resultadoDistrito);
    $IdDistrito = $datos['id_distrito'];

    if ($_SESSION['idDistrito'] != $IdDistrito) {
        cambioDeDistrito($IdDistrito);
    }

    $respuesta = EditarPerfilBD($IdUsuario, $Cedula, $NombreUsuario, $Email, $Genero, $Descripcion, $Icono, $IdDistrito);

    if ($respuesta == true) {
        $_SESSION["nombreUsuario"] = $_POST["txtNombreUsuario"];
        $_SESSION["idDistrito"] = $IdDistrito;
        $_SESSION["nombreDistrito"] = $distrito;
        $_SESSION["nombreCanton"] = $canton;
        $_SESSION["nombreProvincia"] = $provincia;

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
                        <a href="#" class="btn btn-primary mr-2">
                            <i class="fa fa-thumbs-up"></i> Me gusta
                        </a>
                        <a href="#" class="btn btn-secondary">
                            <i class="fa fa-comment"></i> Comentar
                        </a>
                    </div>
                </div>
            </div>';
        }
    }
}
