<?php include_once __DIR__ . '/../Layout/layoutHome.php';
include_once __DIR__ . '/../../../Controller/PostController/postController.php';

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
                                        <a href="../../../View/User/Perfil/perfil.php?s=<?php echo $noticia['id_usuario'].'&t=posts'; ?>">
                                            <b><?php echo $noticia['nombre_usuario']; ?></b>
                                        </a>
                                        <div>
                                            <?php echo $noticia['fecha']; ?>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <a href="#" class="btn btn-danger btn-round btn-sm mr-2">
                                        <span class="btn-label">
                                            <i class="fa-solid fa-circle-exclamation"></i>
                                        </span>
                                        <?php echo $noticia['nombre_categoria_publicacion']; ?>
                                    </a>
                                </div>
                            </div>
                            <div class="row pt-3">
                                <div class="col-10 mb-0 pr-0 mr-0">
                                    <h1 class="p-0 m-0 display-4"> <b><?php echo $noticia['titulo']; ?></b> </h1>
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
                                        <i class="fa fa-thumbs-up"></i> Me gusta
                                    </a>
                                    <a href="#" class="btn btn-primary">
                                        <i class="fa fa-comment"></i> Comentar
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <form action="">
                                        <div class="input-group">
                                            <input type="text" class="form-control rounded-corner btn-round" placeholder="Comenta algo!">
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
                                <div class="row">
                                    <div class="col-1">
                                        <img src="https://ralfvanveen.com/wp-content/uploads/2021/06/Placeholder-_-Glossary.svg" class="rounded-circle ml-2" style="height: 70px; width: 70px; object-fit: cover;" id="img_usuario">
                                    </div>
                                    <div class="col-10">
                                        <!-- Comentario -->
                                        <div class="d-flex flex-column mb-3">
                                            <div>
                                                <b>Nombre Usuario</b>
                                            </div>
                                            <div>
                                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Et nihil dolore fuga expedita aliquid laborum, rem, quas sapiente voluptates consectetur atque dolor sed, eaque sunt quod quibusdam quis quidem odio eveniet praesentium ducimus? Nostrum excepturi optio in blanditiis possimus dolorem quos, et, alias aspernatur cumque nisi mollitia fugiat commodi labore!
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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

        <?php scripts(); ?>

</body>

</html>