<?php include_once __DIR__ . '/../Layout/layoutHome.php';
include_once __DIR__ . '/../../../Controller/PerfilController/perfilController.php';

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

$datos = ConsultarUsuario($_GET['s']);

?>

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
                            <h1 class="font-weight-bold display-4 mb-0">Editar Perfil</h1>
                        </div>
                    </div>

                    <!-- Inicio de seccion de contenido -->
                    <div class="row">

                        <div class="col-6">
                            <div class="card">
                                <div class="card-header pb-0">
                                    <div class="h1">Vista del Perfil Actual</div>
                                </div>
                                <div class="card-body">
                                    <div class="mt-2 mb-4">
                                        <div class="d-flex justify-content-between px-4 mt-3">
                                            <div class="d-flex justify-content-start">
                                                <div class="d-flex flex-column justify-content-center">
                                                    <img src="<?php echo $datos['icono']; ?>" style="height: 7vw; width: 7vw; object-fit: cover;" class="rounded-circle img-fluid">
                                                </div>
                                                <div class="mx-3 d-flex flex-column justify-content-center">
                                                    <h1 class="font-weight-bold mb-0">
                                                        <?php echo $_SESSION['nombreUsuario']; ?>
                                                    </h1>
                                                    <h6 class="mb-0">
                                                        <?php echo $datos["descripcion"]; ?>
                                                    </h6>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mb-3 mt-3">
                                            <div class="col-md-12 d-flex justify-content-start">
                                                <a href="perfil.php" class="btn btn-primary btn-round btn-sm mr-2" style="width: 150px">
                                                    Posts
                                                </a>
                                                <a href="perfilComentarios.php" class="btn btn-primary btn-round btn-sm mr-2" style="width: 150px">
                                                    Comentarios
                                                </a>
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
                                    <div class="h1">Editar Perfil</div>
                                </div>
                                <div class="card-body">

                                    <?php
                                    if (isset($_POST["msj"])) {
                                        echo '<div class="alert alert-info TextoCentrado">' . $_POST["msj"] . '</div>';
                                    }
                                    ?>

                                    <form action="" method="post" enctype="multipart/form-data">
                                        <input id="txtIdUsuario" name="txtIdUsuario" type="hidden" value="<?php echo $datos["id_usuario"]; ?>">

                                        <label for="txtCedula">Identificación</label>
                                        <div class="input-group mb-3">
                                            <input id="txtCedula" name="txtCedula" type="text" class="form-control" placeholder="Cedula" readonly value="<?php echo $datos["cedula"]; ?>">
                                            <div class="input-group-append">
                                                <div class="input-group-text">
                                                    <span class="fas fa-user"></span>
                                                </div>
                                            </div>
                                        </div>

                                        <label for="txtNombreUsuario">Nombre</label>
                                        <div class="input-group mb-3">
                                            <input id="txtNombreUsuario" name="txtNombreUsuario" type="text" class="form-control" placeholder="Nombre" readonly value="<?php echo $datos["nombre_usuario"]; ?>">
                                            <div class="input-group-append">
                                                <div class="input-group-text">
                                                    <span class="fas fa-user"></span>
                                                </div>
                                            </div>
                                        </div>

                                        <label for="txtEmail">Correo Electrónico</label>
                                        <div class="input-group mb-3">
                                            <input type="email" id="txtEmail" name="txtEmail" class="form-control" placeholder="Correo Electrónico" required value="<?php echo $datos["email"]; ?>">
                                            <div class="input-group-append">
                                                <div class="input-group-text">
                                                    <span class="fas fa-envelope"></span>
                                                </div>
                                            </div>
                                        </div>

                                        <label for="selectGenero">Género</label>
                                        <div class="input-group mb-3">
                                            <select id="selectGenero" name="selectGenero" class="form-control" required>
                                                <?php ConsultarIdGenero($datos["id_genero"]); ?>
                                            </select>
                                        </div>

                                        <label for="description">Descripción</label>
                                        <div class="form-group">
                                            <textarea class="form-control mb-1" id="description" name="description" rows="3" placeholder="Descripción"><?php echo $datos["descripcion"]; ?></textarea>
                                        </div>

                                        <Label>Imagen Actual</Label>
                                        <div class="input-group input-group-outline mb-3">
                                            <img width='200' height='150' src="<?php echo $datos['icono'] ?>"></img>
                                        </div>

                                        <Label>Imagen</Label>
                                        <div class="input-group input-group-outline mb-3">
                                            <input id="txtIcono" name="txtIcono" type="file" class="form-control"
                                                placeholder="Icono" value="" accept="image/png, image/jpg, image/jpeg">
                                            <div class="input-group-append">
                                                <div class="input-group-text">
                                                    <span class="fas fa-camera"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group mt-0">
                                            <div class="row">
                                                <div class="col-9"></div>
                                                <div class="col-lg-3 col-md-6 col-sm-6">
                                                    <button type="submit" id="btnEditarPerfil" name="btnEditarPerfil" class="btn btn-primary btn-block">Procesar</button>
                                                </div>
                                            </div>
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