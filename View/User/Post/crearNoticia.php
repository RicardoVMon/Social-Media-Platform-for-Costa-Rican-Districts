<?php include_once __DIR__ . '/../Layout/layoutHome.php';
include_once __DIR__ . '/../../../Controller/PostController/postController.php';
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
                    <div class="mb-3 row">
                        <div class="col-8">
                            <form action="" method="post">
                                <div class="row">
                                    <div class="col-7 mb-0 pr-0 mr-0">
                                        <h1 class="p-0 m-0 display-3"> <b>Crear publicación</b> </h1>
                                    </div>
                                    <div class="col-3 pl-0 pt-4 ml-0 d-flex flex-column justify-content-center">
                                        <select name="categoria" id="categoria" class="custom-select" required>
                                            <?php obtenerCategorias(); ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <input type="text" id="titulo" name="titulo" placeholder="Título" class="h2 border w-75 p-3 mt-3 rounded" required></input>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <textarea id="noticia" name="noticia" placeholder="Contenido de publicación..." class="h3 border w-100 p-3 mt-3 rounded" spellcheck="false" style="height: 30vh" required></textarea>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-end">
                                    <div class="col-4 px-0 mx-0">
                                        <button type="submit" id="btnPublicarNoticia" name="btnPublicarNoticia" class="btn btn-primary btn-lg w-100">Publicar</button>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-header">
                                    <div class="text-center" style="font-size: 1.5vw;">
                                        <i class="fa-solid fa-home"></i>
                                        <?php echo $_SESSION['nombreDistrito']; ?>
                                    </div>
                                </div>

                                <div class="card-body pb-0">
                                    <?php VisualizarInformacionComunidad($_GET['q']); ?>
                                </div>

                                <!-- links home, comunidad -->
                                <div class="card-footer">
                                    <div class="row">
                                        <div class="col-12">
                                            <a href="../Home/home.php" class="text-white">
                                                <div class="card bg-primary">
                                                    <div class="card-body">Inicio</div>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="col-12">
                                            <a href="../Comunidad/comunidad.php" class="text-white">
                                                <div class="card bg-primary">
                                                    <div class="card-body">Mi Comunidad</div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
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
</body>

</html>