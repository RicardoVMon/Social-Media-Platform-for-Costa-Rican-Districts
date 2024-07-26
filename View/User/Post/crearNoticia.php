<?php

include_once '../Layout/layoutHome.php';
include_once '../../../Controller/PostController/postController.php';
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
                        <h1 style="color:#214dc5; font-size: 2.5em; font-weight: bold; text-shadow: 1px 1px 2px rgba(0,0,0,0.1); padding: 3px 0; margin-bottom: 20px; display: flex; align-items: center; justify-content: center;">
                            <i class="fa fa-newspaper" style="margin-right: 10px;"></i>
                            Comparte una noticia con la comunidad!!
                        </h1>
                    </div> <!-- page-inner-top -->
                    <div class=" mb-3 row">
                        <!-- Columna de Crear Publicación -->
                        <div class="col-md-6">
                            <div class="card" id="crearPublicacionCard" style="margin-top:40px">
                                <div class="card-body" style="color: #4c4c4c">
                                    <header class="card-title text-center" style="margin-top: 30px;">
                                        <i class="fa fa-pencil"></i> Crear Publicación
                                    </header>
                                    <!-- Formulario de publicación -->
                                    <form action="" method="post">
                                        <!-- drop-down -->
                                        <div class="row pl-2 mb-1">
                                            <div class="col-4">
                                                <select name="categoria" id="categoria" class="custom-select" required>
                                                    <?php obtenerCategorias(); ?>
                                                </select>
                                            </div>
                                        </div>
                                        <?php
                                        if (isset($_POST["msj"])) {
                                            echo $_POST["msj"];
                                        }
                                        ?>

                                        <div class="form-group">
                                            <textarea id="titulo" name="titulo" placeholder="Título" class="titulo" required></textarea>
                                        </div>
                                        <div class="form-group">
                                            <textarea id="noticia" name="noticia" placeholder="Contenido de publicación..." class="contenidoPublicacion" spellcheck="false" required></textarea>
                                        </div>
                                        <button type="submit" id="btnPublicarNoticia" name="btnPublicarNoticia" class="btnPublicarNoticia">Publicar</button>
                                    </form>
                                </div>
                            </div>
                        </div>

                        <!-- Columna de info sobre la comunidad -->
                        <div class="col-md-3" style="margin-left:315px">
                            <div class="card" style="margin-top:40px">
                                <div class="card-header">
                                    <div class="card-title text-center" style="font-size: 1.5vw;">
                                        <i class="fa-solid fa fa-home"></i>
                                        Comunidad
                                    </div>
                                </div>
                                <div class="card-body pb-0">
                                    <?php VisualizarInformacionComunidad($_GET['q']); ?>
                                    <!-- links hacia otras vistas -->
                                    <div class="row">
                                        <div class="col-12 mb-4">
                                            <a href="../Comunidad/comunidad.php?q=<?php echo $_SESSION['idDistrito']; ?>" class="text-white">
                                                <div class="card bg-primary">
                                                    <div class="card-body">Mi Comunidad</div>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="col-12 mb-4">
                                            <a href="#" class="text-white">
                                                <div class="card bg-primary">
                                                    <div class="card-body">Mi perfil</div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- page-inner -->
                </div> <!-- mt-2 mb-4 row -->


            </div> <!-- content -->

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
        </div> <!-- main-panel -->
    </div> <!-- wrapper -->

    <?php scripts(); ?>
</body>

</html>