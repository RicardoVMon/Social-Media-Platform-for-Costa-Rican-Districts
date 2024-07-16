<?php include_once '../Layout/layoutHome.php'; ?>

<!DOCTYPE html>
<html lang="en">
<?php head(); ?>

<body data-background-color="light">

    <!-- Nav Bar -->
    <?php mostrarNavBar(); ?>

    <!-- Sidebar -->
    <?php mostrarSideBar(); ?>

    <!-- Contenido -->
    <div class="main-panel">
        <section class="content">
            <div class="container">
                <div class="row justify-content-center mt-0">
                    <!-- Columna de Crear Publicación -->
                    <div class="col-md-6">
                        <div class="card" id="crearPublicacionCard">
                            <div class="card-body" style=" color: #4c4c4c">
                                <header class="card-title text-center" style="margin-top: 90px;">   
                                    <i class="fa fa-pencil"></i> Crear Publicación
                                </header>


                                <!-- drop-down -->
                                <div class="row mb-3">
                                    <div class="col-12">
                                        <select class="custom-select">
                                            <option selected>Categoria <i class="fa-solid fa-filter"></i></option>
                                            <option value="1">llamar de la bd</option>
                                            <option value="2">llamar de la bd</option>
                                        </select>
                                    </div>
                                </div>
                                <?php
                                if (isset($_POST["msj"])) {
                                    echo $_POST["msj"];
                                }
                                ?>
                                <!-- Formulario de publicación -->
                                <form action="" method="post">
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
                    <div class="col-md-6">
                        <div class="card" style="margin-top:100px; margin-left:200px">
                            <div class="card-header">
                                <div class="card-title text-center" style="font-size: 1.5vw;">
                                    <i class="fa-solid fa fa-home"></i>
                                    Comunidad
                                </div>
                            </div>
                            <div class="card-body pb-0">
                                <div class="row">
                                    <div class="col-md-6">
                                        <p>dd/mm/yyyy</p>
                                        <p>Fecha de Ingreso</p>
                                    </div>
                                    <div class="col-md-6">
                                        <p>#####</p>
                                        <p># de Miembros</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <p>#####</p>
                                        <p># de Posts</p>
                                    </div>
                                    <div class="col-md-6">
                                        <p>Nombre de Comunidad</p>
                                        <p>Comunidad</p>
                                    </div>
                                </div>
                                <!-- links hacia otras vistas -->
                                <div class="row">
                                    <div class="col-12 mb-4">
                                        <a href="../Comunidad/comunidad.php" class="text-white">
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
                </div>
        </section>

        <!-- Footer -->
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