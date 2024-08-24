<?php include_once __DIR__ . '/../Layout/layoutHome.php'; 
include_once __DIR__ . '/../../../Controller/Busqueda/busquedaController.php';?>

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
                            <span class="display-4">Resultado de búsqueda: <?php echo $_GET['b']?></span>
                            <span class="display-5 pl-2">Selecciona alguna de tus comunidades para visitarlas!</span>
                        </div>
                        <div class="mb-4 ml-2 row">
                            <a href="../../../View/User/Busqueda/resultados.php?b=<?php echo $_GET['b']; ?>&c=posts" class="col-1 btn btn-primary mr-3">Posts</a>
                            <a href="../../../View/User/Busqueda/resultados.php?b=<?php echo $_GET['b']; ?>&c=comunidades" class="btn btn-primary">Comunidades</a>
                        </div>
                    </div>

                    <!-- Inicio de seccion de contenido -->
                    <div class="row">
                        <?php 
                            if ($_GET['c'] == 'posts') {
                                resultadoBusquedaPosts($_GET['b']);
                            } else {
                                resultadoBusquedaComunidades($_GET['b']);
                            }
                        ?>
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