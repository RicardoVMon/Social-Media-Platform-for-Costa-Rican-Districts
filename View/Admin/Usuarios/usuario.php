<?php include_once __DIR__ . '/../Layout/layoutAdmin.php';
include_once __DIR__ . '/../../../Controller/Admin/userControllerAdmin.php';

if (isset($_GET['idUsuario'])) {
    $id = $_GET['idUsuario'];
}

$datosUsuario = ObtenerDatosUsuario($id); ?>


<!DOCTYPE html>
<html lang="en">
<?php head(); ?>

<body data-background-color="light">

    <div class="wrapper">
        <!-- Nav Bar -->
        <?php mostrarNavBar(); ?>

        <!-- Sidebar -->
        <?php mostrarSideBar(); ?>

        <!-- Contenido -->
        <div class="main-panel">
            <div class="content">
                <div class="page-inner">
                    <div class="page-inner-top">
                        <div class="mb-4 d-flex flex-column">
                            <h1 class="font-weight-bold display-4 mb-0">Perfil</h1>
                        </div>
                    </div>

                    <!-- Inicio de seccion de contenido -->
                    <div class="row">

                        <div class="col-6">
                            <div class="card">
                                <div class="card-header pb-0">
                                    <div class="h1">Vista del Perfil</div>
                                </div>
                                <div class="card-body">
                                    <div class="mt-2 mb-4">
                                        <div class="d-flex justify-content-between px-4 mt-3">
                                            <div class="d-flex justify-content-start">
                                                <div class="d-flex flex-column justify-content-center">
                                                    <img src="<?php echo $datosUsuario['icono']; ?>" style="height: 7vw; width: 7vw; object-fit: cover;" class="rounded-circle img-fluid">
                                                </div>
                                                <div class="mx-3 d-flex flex-column justify-content-center">
                                                    <h1 class="font-weight-bold mb-0">
                                                        <?php echo $datosUsuario['nombre_usuario']; ?>
                                                    </h1>
                                                    <h6 class="mb-0">
                                                        <?php echo $datosUsuario['descripcion']; ?>
                                                    </h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-6">
                            <!-- Formulario para editar perfil -->
                            <div class="card">
                                <div class="card-header pb-0">
                                    <div class="h1">Datos</div>
                                </div>
                                <div class="card-body">

                                    <?php
                                    if (isset($_POST["msj"])) {
                                        echo '<div class="alert alert-info TextoCentrado">' . $_POST["msj"] . '</div>';
                                    }
                                    ?>

                                    <form action="" method="post" enctype="multipart/form-data">

                                        <label for="txtCedula">Identificación</label>
                                        <div class="input-group mb-3">
                                            <input id="txtCedula" name="txtCedula" type="text" class="form-control" placeholder="Cedula" readonly value="<?php echo $datosUsuario['cedula']; ?>">
                                            <div class="input-group-append">
                                                <div class="input-group-text">
                                                    <span class="fas fa-user"></span>
                                                </div>
                                            </div>
                                        </div>

                                        <label for="txtNombreUsuario">Nombre</label>
                                        <div class="input-group mb-3">
                                            <input id="txtNombreUsuario" name="txtNombreUsuario" type="text" class="form-control" placeholder="Nombre" readonly value="<?php echo $datosUsuario['nombre_usuario']; ?>">
                                            <div class="input-group-append">
                                                <div class="input-group-text">
                                                    <span class="fas fa-user"></span>
                                                </div>
                                            </div>
                                        </div>

                                        <label for="txtEmail">Correo Electrónico</label>
                                        <div class="input-group mb-3">
                                            <input id="txtEmail" name="txtEmail" type="text" class="form-control" placeholder="Email" readonly value="<?php echo $datosUsuario['email']; ?>">
                                            <div class="input-group-append">
                                                <div class="input-group-text">
                                                    <span class="fas fa-user"></span>
                                                </div>
                                            </div>
                                        </div>

                                        <label for="selectGenero">Género</label>
                                        <div class="input-group mb-3">
                                            <input id="txtGenero" name="txtGenero" type="text" class="form-control" placeholder="Genero" readonly value="<?php echo $datosUsuario['nombre_genero']; ?>">
                                            <div class="input-group-append">
                                                <div class="input-group-text">
                                                    <span class="fas fa-user"></span>
                                                </div>
                                            </div>
                                        </div>

                                        <label for="description">Descripción</label>
                                        <div class="form-group">
                                            <textarea class="form-control mb-1" id="description" name="description" rows="3" placeholder="Descripción" readonly><?php echo $datosUsuario['descripcion']; ?></textarea>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer">
                <div class="container-fluid">
                    <nav class="pull-left">
                        <ul class="nav">
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    Sobre Nosotros
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    Soporte
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    Licencias
                                </a>
                            </li>
                        </ul>
                    </nav>
                    <div class="copyright ml-auto">
                        2024, Umbrella
                    </div>
                </div>
            </footer>
        </div>
    </div>

    <?php scripts(); ?>
    <script src="../../assets/js/provincias.js"></script>
    <script src="../../assets/js/cantones.js"></script>
    <script src="../../assets/js/distritos.js"></script>
    <script src="../../assets/js/nombre.js"></script>
    <script src="../../assets/js/editarPerfil.js"></script>
    <script>
        Dropzone.options.myGreatDropzone = {
            autoProcessQueue: false,
            paramName: "file",
            maxFilesize: 2,
            clickable: "#dropZone" // the ID of our parent wrapper div
        };
    </script>
    <script>
        $(document).ready(function() {
            $('#userTable').DataTable();
            obtenerProvincias();
        });
    </script>

</body>


</html>