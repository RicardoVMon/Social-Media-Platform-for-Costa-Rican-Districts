<?php include_once __DIR__ . '/../Layout/layoutHome.php';
include_once __DIR__ . '/../../../Controller/PostController/postController.php';
include_once __DIR__ . '/../../../Controller/Comentario/comentarioController.php';

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
                    <div class="mb-3 row">
                        <div class="col-8">
                            <div class="row">
                                <div class="col-1 pr-1">
                                    <img src="<?php echo $noticia['icono']; ?>" class="rounded-circle ml-2" style="height: 45px; width: 45px; object-fit: cover;" id="img_usuario">
                                </div>
                                <div class="col-3 pl-0">
                                    <div class="d-flex flex-column">
                                        <a href="../../../View/User/Perfil/perfil.php?s=<?php echo $noticia['id_usuario'] . '&t=posts'; ?>">
                                            <b><?php echo $noticia['nombre_usuario']; ?></b>
                                        </a>
                                        <div>
                                            <?php echo $noticia['fecha']; ?>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-1 ml-auto">
                                    <div class="dropdown">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>

                                        <div class="dropdown-menu dropdown-menu-right text-left" aria-labelledby="dropdownMenuLink">
                                            <!-- Dropdown menu items -->
                                            <a class="dropdown-item" href="#"><i class="fa fa-edit mr-1"></i> Editar</a>
                                            <a class="dropdown-item" href="#"><i class="fa fa-trash mr-1"></i> Eliminar</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row pt-3">
                                <div class="col-10 mb-0 pr-0 mr-0">
                                    <h1 class="p-0 m-0 display-4"> <b><?php echo $noticia['titulo']; ?></b> </h1>
                                </div>
                            </div>
                            <div class="row pt-3">
                                <div class="col-2">
                                    <a href="#" class="btn btn-danger btn-round btn-sm mr-2">
                                        <span class="btn-label">
                                            <i class="fa-solid fa-circle-exclamation"></i>
                                        </span>
                                        <?php echo $noticia['nombre_categoria_publicacion']; ?>
                                    </a>
                                </div>
                            </div>
                            <div class="row py-3 pb-4">
                                <div class="col-10 mb-0 pr-0 mr-0">
                                    <p class="p-0 m-0"><?php echo $noticia['contenido']; ?></p>
                                </div>
                            </div>
                            <div class="row pb-4">
                                <div class="col-6 mb-0 pr-0 mr-0">
                                    <a href="#" class="btn btn-success mr-2">
                                    <i class="fa-regular fa-heart"></i> 123
                                    </a>
                                    <a href="#comentarios" class="btn btn-primary">
                                        <i class="fa fa-comment"></i> Comentar
                                    </a>
                                </div>
                            </div>
                            <div class="row" id="comentarios">
                                <div class="col-12">
                                    <form action="" method="POST">
                                        <div class="input-group mb-3">
                                            <input type="text" name="idPublicacion" id="idPublicacion" value="<?php echo $_GET['r']?>" hidden>
                                            <input type="text" name="idUsuario" id="idUsuario" value="<?php echo $_SESSION['idUsuario']?>" hidden>
                                            <input type="text" name="contenido" id="contenido" class="form-control" placeholder="Comenta algo!">
                                            <div class="input-group-append">
                                                <button class="btn btn-outline-secondary" type="submit" id="btnPublicarComentario" name="btnPublicarComentario">Comentar</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <hr class="mt-4">

                            <div>
                                <div class="mb-4">
                                    <h1 class="p-0 m-0 h2"> <b>Comentarios</b> </h1>
                                </div>
                                <!-- Seccion de Comentarios -->
                                <?php obtenerComentarios($_GET['r']); ?>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-header">
                                    <div class="text-center" style="font-size: 1.5vw;">
                                        <i class="fa-solid fa-home"></i>
                                        <?php echo $noticia['nombre_distrito']; ?>
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
                                            <a href="../Comunidad/comunidad.php?q=<?php echo $_GET['q']; ?>" class="text-white">
                                                <div class="card bg-primary">
                                                    <div class="card-body">Ir a Comunidad</div>
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