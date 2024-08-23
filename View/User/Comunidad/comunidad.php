<?php include_once __DIR__ . '/../Layout/layoutHome.php';
include_once __DIR__ . '/../../../Controller/Comunidad/comunidadController.php';

$datosComunidad = obtenerInformacionComunidad($_GET['q']);
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
                        <div class="mt-2 mb-4">
                            <img src="<?php echo $datosComunidad['banner']; ?>" width="100%" height="150px" style="object-fit: cover;">

                            <div class="d-flex justify-content-between px-4 mt-3">
                                <div class="d-flex justify-content-start">
                                    <div class="d-flex flex-column justify-content-center">
                                        <img src="<?php echo $datosComunidad['icono']; ?>" style="height: 10vw; width: 10vw; object-fit: cover; margin-top: -6vw;" class="rounded-circle img-fluid">
                                    </div>
                                    <div class="mx-3 d-flex flex-column justify-content-start">
                                        <h1 class="font-weight-bold display-4 mb-0">
                                            <?php echo $datosComunidad['nombre_distrito']; ?>
                                        </h1>
                                        <h6 class="mb-0">
                                            <?php echo $datosComunidad['descripcion']; ?>
                                        </h6>
                                    </div>
                                </div>
                                <div class="d-flex align-items-middle">
                                    <?php
                                    opcionesComunidad();
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Inicio de seccion de contenido -->
                    <div class="row">
                        <!-- Columna de Posts -->
                        <div class="col-md-8">

                            <!-- Sección de Posts -->
                            <?php obtenerPosts($_GET['q']); ?>

                        </div>
                        <!-- Columna de Noticias -->
                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title text-center" style="font-size: 1.5vw;">
                                        <i class="fa-solid fa-newspaper"></i>
                                        Noticias

                                    </div>
                                </div>
                                <div class="card-body pb-0">
                                    <!-- Noticia -->
                                    <a href="#" class="col-md-12 px-0 d-flex mb-4">
                                        <div class="avatar">
                                            <img src="assets/img/logoproduct.svg" alt="..." class="avatar-img rounded-circle">
                                        </div>
                                        <div class="flex-1 pt-1 ml-2">
                                            <h4 class="fw-bold mb-0">Noticia 1</h4>
                                            <small class="text-muted">Lorem ipsum dolor sit amet consectetur adipisicing
                                                elit. Pariatur, quas.</small>
                                        </div>
                                    </a>
                                    <a href="#" class="col-md-12 px-0 d-flex mb-4">
                                        <div class="avatar">
                                            <img src="assets/img/logoproduct.svg" alt="..." class="avatar-img rounded-circle">
                                        </div>
                                        <div class="flex-1 pt-1 ml-2">
                                            <h4 class="fw-bold mb-0">Noticia 2</h4>
                                            <small class="text-muted">Lorem ipsum dolor sit amet consectetur adipisicing
                                                elit. Pariatur, quas.</small>
                                        </div>
                                    </a>
                                    <a href="#" class="col-md-12 px-0 d-flex mb-4">
                                        <div class="avatar">
                                            <img src="assets/img/logoproduct.svg" alt="..." class="avatar-img rounded-circle">
                                        </div>
                                        <div class="flex-1 pt-1 ml-2">
                                            <h4 class="fw-bold mb-0">Noticia 3</h4>
                                            <small class="text-muted">Lorem ipsum dolor sit amet consectetur adipisicing
                                                elit. Pariatur, quas.</small>
                                        </div>
                                    </a>
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
    </div>

    <?php scripts(); ?>

</body>

</html>