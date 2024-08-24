<?php include_once __DIR__ . "/../../Model/Autenticacion/registroModel.php";
include_once __DIR__ . "/../../Controller/Comunidad/comunidadController.php";

if (isset($_POST['obtenerProvincias']))
    $resultado = obtenerProvincias(); 


if (isset($_POST['btnRegistrar'])) {

    $cedula = $_POST['cedula'];
    $nombre = $_POST['nombre'];
    $apellidos = $_POST['apellidos'];
    $correo = $_POST['correo'];
    $genero = $_POST['genero'];
    $provincia = $_POST['nombreProvincia'];
    $canton = $_POST['nombreCanton'];
    $distrito = $_POST['nombreDistrito'];
    $contrasennia = $_POST['contrasennia'];

    $icono = '/Community-Alert/View/User/Perfil/Images/default.jpg'; 

    $resultadoCedula = obtenerCedula($cedula);
    $resultadoRegistro;
    $distrito;

    if ($resultadoCedula->num_rows > 0) {

        $_POST['mensaje'] = "El usuario ya se encuentra registrado";
        return;
    } else {

        $resultadoDistrito = obtenerIdDistrito($provincia, $canton, $distrito);

        if ($resultadoDistrito->num_rows > 0) {

            $datos = mysqli_fetch_array($resultadoDistrito);
            $distrito = $datos['id_distrito'];
            $resultadoRegistro = registrarUsuario($cedula, $nombre, $apellidos, $correo, $genero, $contrasennia, $distrito, $icono);

        }
    }

    if ($resultadoRegistro) {

        $resultadoIdUsuario = obtenerIdUsuario($cedula);
        $datosUsuario = mysqli_fetch_array($resultadoIdUsuario);
        $idUsuario = $datosUsuario['id_usuario'];
        seguirComunidad($idUsuario, $distrito);

        header("Location: ../../View/Autenticacion/login.php");

        $_POST['mensaje'] = "Usuario fue registrado con éxito";
    } else {
        $_POST['mensaje'] = "Error al registrar el usuario";
    }
}

function ConsultarIdGenero()
{
    $respuesta = ConsultarIdGeneroBD();

    if($respuesta -> num_rows > 0)
    {

        echo '<option value="" selected disabled>Seleccione una opción</option>';

        while ($row = mysqli_fetch_array($respuesta)) 
        { 
            echo "<option value=" . $row["id_genero"] . ">" . $row["nombre_genero"] . "</option>";
        }
    }
}