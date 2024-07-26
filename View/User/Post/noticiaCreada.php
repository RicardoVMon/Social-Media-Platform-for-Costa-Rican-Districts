<?php 
include_once '../Layout/layoutHome.php';
include_once '../../../Controller/PostController/postController.php';

$noticia = VisualizarNoticia($_GET['r']);
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
                    </div>
                    <div class="mt-2 mb-4 row">
                        <!-- Columna de contenido de la noticia y comentarios -->
                        <div class="col-md-8">
                            <div id="content" class="content content-full-width">
                                <!-- Inicio noticia -->
                                <?php
                                if (isset($_POST["msj"])) {
                                    echo '<div class="alert alert-info TextoCentrado">' . $_POST["msj"] . '</div>';
                                }
                                ?>
                                <!-- Post -->
                                <div class="col-md-12 px-0" style="margin-top:100px">
                                    <div class="card">
                                        <div class="card-header pb-1">
                                            <div class="d-flex">
                                                <img src="<?php echo $noticia['icono']; ?>" class="rounded-circle" style="height: 20px; width: 20px; object-fit: cover;" id="img_usuario">
                                                <a href="#" class="ml-2"><b id="nombre_usuario"><?php echo $noticia['nombre_usuario']; ?></b></a> 
                                                <span class="ml-2" id="fecha-publicacion"><?php echo $noticia['fecha']; ?></span>
                                            </div>
                                            <div class="card-head-row mt-2">
                                                <a href="#" class="card-title" style="font-size: 28px;" id="titulo-publicacion"><?php echo $noticia['titulo']; ?></a>
                                                <div class="card-tools">
                                                    <a href="#" class="btn btn-danger btn-round btn-sm mr-2">
                                                        <span class="btn-label">
                                                            <i class="fa-solid fa-circle-exclamation"></i>
                                                        </span>
                                                        <?php echo $noticia['nombre_categoria_publicacion']; ?>
                                                    </a>
                                                    <a href="#" class="btn btn-info btn-border btn-round btn-sm mr-2">
                                                        <span class="btn-label">
                                                            <i class="fa-solid fa-share"></i>
                                                        </span>
                                                        Compartir
                                                    </a>
                                                    <a href="#" class="btn btn-info btn-border btn-round btn-sm">
                                                        <span class="btn-label">
                                                            <i class="fa fa-print"></i>
                                                        </span>
                                                        Imprimir
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <p class="mb-0" id="contenido-publicacion">
                                                <?php echo $noticia['contenido']; ?>
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
                                </div>
                                <!-- Fin noticia -->

                                <!-- Parte de comentarios -->
                                <div class="profile-content mt-1">
                                    <div class="timeline-comment-box">
                                        <div class="input">
                                            <form action="">
                                                <div class="input-group">
                                                    <input type="text" class="form-control rounded-corner" placeholder="Comenta algo!">
                                                    <span class="input-group-btn p-l-10">
                                                        <button class="btn btn-primary f-s-12 rounded-corner" type="button">Comentar</button>
                                                    </span>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- Fin de los comentarios -->
                            </div>
                        </div>

                        <!-- Columna de información de la comunidad -->
                        <div class="col-md-3" style="margin-left:25px">
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
                                    <div class="row mt-4">
                                        <div class="col-12">
                                            <a href="../Comunidad/comunidad.php?q=<?php echo $_SESSION['idDistrito']; ?>" class="text-white">
                                                <div class="card bg-primary">
                                                    <div class="card-body">Mi Comunidad</div>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="col-12 mt-4">
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

        <?php scripts(); ?>

</body>

</html>
