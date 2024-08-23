<?php include_once __DIR__ . '/../Layout/layoutHome.php';
include_once __DIR__ . '/../../../Controller/Comunidad/comunidadController.php';

if (session_status() === PHP_SESSION_NONE) {
    session_start();
} ?>

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
                            <h2 class="pb-1">Bienvenido, <?php echo $_SESSION['primerNombre']; ?>!</h2>
                            <h5 class="op-7 mb-4">Estas son algunas de las noticias que te perdiste mientras no estabas!</h5>
                        </div>
                        <div class="row mb-4">
                            <div class="col-md-12">
                                <img class="rounded-top" src="https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG" width="100%" height="100px" style="object-fit: cover;">
                            </div>
                        </div>
                    </div>
                    <!-- Inicio de sección de contenido -->
                    <div class="row">
                        <!-- Columna de Posts -->
                        <div class="col-md-8">
                            <!-- Post 1 -->
                            <?php obtenerPostsComunidadesSeguidas($_SESSION['idUsuario']); ?>
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
                                    <!-- Noticia 1 -->
                                    <a href="#" class="col-md-12 px-0 d-flex mb-4">
                                        <div class="avatar">
                                            <img src="../../assets/img/logoproduct.svg" alt="..." class="avatar-img rounded-circle">
                                        </div>
                                        <div class="flex-1 pt-1 ml-2">
                                            <h4 class="fw-bold mb-0">Noticia 1</h4>
                                            <small class="text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur, quas.</small>
                                        </div>
                                    </a>
                                    <!-- Noticia 2 -->
                                    <a href="#" class="col-md-12 px-0 d-flex mb-4">
                                        <div class="avatar">
                                            <img src="../../assets/img/logoproduct.svg" alt="..." class="avatar-img rounded-circle">
                                        </div>
                                        <div class="flex-1 pt-1 ml-2">
                                            <h4 class="fw-bold mb-0">Noticia 2</h4>
                                            <small class="text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur, quas.</small>
                                        </div>
                                    </a>
                                    <!-- Noticia 3 -->
                                    <a href="#" class="col-md-12 px-0 d-flex mb-4">
                                        <div class="avatar">
                                            <img src="../../assets/img/logoproduct.svg" alt="..." class="avatar-img rounded-circle">
                                        </div>
                                        <div class="flex-1 pt-1 ml-2">
                                            <h4 class="fw-bold mb-0">Noticia 3</h4>
                                            <small class="text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur, quas.</small>
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