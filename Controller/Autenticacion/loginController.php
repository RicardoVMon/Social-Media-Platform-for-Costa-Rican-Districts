<?php include_once __DIR__ . '/../../Model/Autenticacion/loginModel.php';
include_once __DIR__ . '/../../Model/PostModel/postModel.php';
include_once __DIR__ . '../recuperacionEmail.php';

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

if (isset($_POST['btnLogin'])) {

    $cedula = $_POST['cedula'];
    $contrasennia = $_POST['contrasennia'];

    $resultadoLogin = loginUsuario($cedula, $contrasennia);

    if ($resultadoLogin->num_rows > 0) {

        $datos = mysqli_fetch_array($resultadoLogin);

        $_SESSION['idUsuario'] = $datos['id_usuario'];
        $_SESSION['nombreUsuario'] = capitalizarNombre($datos['nombre_usuario']);
        $_SESSION['primerNombre'] = obtenerPrimerNombre($datos['nombre_usuario']);
        $_SESSION['email'] = $datos['email'];
        $_SESSION['descripcion'] = $datos['descripcion'];
        $_SESSION['icono'] = $datos['icono'];
        $_SESSION['fechaIngreso'] = $datos['fecha_ingreso'];
        $_SESSION['idDistrito'] = $datos['id_distrito'];
        $_SESSION['nombreDistrito'] = $datos['nombre_distrito'];
        obtenerProvinciaCanton();
        $_SESSION['rolUsuario'] = $datos['id_role'];
        $_SESSION['iconoUsuario'] = $datos['icono'];
        $_SESSION['estado'] = $datos['estado'];

        if ($_SESSION['rolUsuario'] == 1 && $_SESSION['estado'] == 1) {
            if ($datos['passwordTemporal'] == 1) {
                header("Location: ../../View/Autenticacion/actualizarContra.php");
            } else {
                header("Location: ../../View/Admin/Dashboard/dashboard.php");
            }
        } else {
            if ($datos['passwordTemporal'] == 1) {
                header("Location: ../../View/Autenticacion/actualizarContra.php");
            } elseif ($_SESSION['estado'] == 0) {
                $_POST['mensaje'] = "Usuario o contraseña incorrectos";
            } else {
                header("Location: ../../View/User/Home/home.php");
            }
        }
    } else {

        $_POST['mensaje'] = "Usuario o contraseña incorrectos";
    }
}

if (isset($_POST["btnCerrarSesion"])) {
    session_destroy();
    header("Location: ../../View/Autenticacion/login.php");
}


function capitalizarNombre($nombre)
{
    return ucwords(strtolower($nombre));
}

function obtenerPrimerNombre($nombreCompleto)
{
    $nombre = explode(" ", $nombreCompleto);
    $primerNombre = capitalizarNombre($nombre[0]);
    return $primerNombre;
}

function obtenerProvinciaCanton()
{
    $provinciaCanton = obtenerNombreProvinciaCanton($_SESSION['idDistrito']);
    $datos = mysqli_fetch_array($provinciaCanton);
    $_SESSION['nombreProvincia'] = $datos['nombre_provincia'];
    $_SESSION['nombreCanton'] = $datos['nombre_canton'];
}
//recuperar contraseña

if (isset($_POST["btnRecuperarAcceso"])) {
    $cedula = $_POST["cedula"];
    $respuesta = ConsultarUsuarioCedula($cedula);

    if ($respuesta->num_rows > 0) {
        $datos = mysqli_fetch_array($respuesta);
        $codigo = GenerarCodigo();
        $resp = ActualizarPasswordTemporal($datos["id_usuario"], $codigo, true);

        if ($resp == true) {
            $contenido = "<html><body>
                Estimado(a) <br/><br/>
                Se ha generado el siguiente código de seguridad: <b>" . $codigo . "</b><br/>
                Le recomendamos realizar el cambio de contraseña una vez que ingrese a Community Alert, como medida de seguridad. <br/><br/>
                Muchas gracias.
                </body></html>";

            $_SESSION["cambioContraseña"] = 1;
            EnviarCorreo('Acceso al Sistema', $contenido, $datos["email"]);
            header("Location: ../../View/Autenticacion/login.php");
        } else {
            $_POST["mensaje"] = "No se ha podido enviar su código de seguridad correctamente.";
        }
    } else {
        $_POST["mensaje"] = "Su información no se ha validado correctamente, verifique la cédula digitada.";
    }
}

if (isset($_POST["btnActualizarContrasennia"])) {

    $contrasennia = $_POST["password"];
    $confirmarContrasennia = $_POST["newPassword"];

    if ($contrasennia == $confirmarContrasennia) {
        $respuesta = ActualizarPasswordTemporal($_SESSION["idUsuario"], $contrasennia, false);

        if ($respuesta == true) {
            $_SESSION["cambioContraseña"] = 0;
            header("Location: ../../View/User/Home/home.php");
        } else {
            $_POST["mensaje"] = "No se ha podido actualizar su contraseña correctamente.";
        }
    } else {
        $_POST["mensaje"] = "Las contraseñas no coinciden, por favor verifique.";
    }
}
