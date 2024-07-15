<?php include_once '../Layout/layoutHome.php'; ?>

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
                            <h2 class="pb-1">Bienvenido, Manuel!</h2>
                            <h5 class="op-7 mb-4">Estas son algunas de las noticias que te perdiste mientras no estabas!</h5>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="card card-dark bg-primary-gradient">
                                    <div class="card-body pb-0">
                                        <div class="h1 fw-bold float-right">2%</div>
                                        <h2 class="mb-2">PIB</h2>
                                        <p>Costo de vida</p>
                                        <div class="pull-in sparkline-fix chart-as-background">
                                            <div id="lineChart">
                                                <canvas width="327" height="70" style="display: inline-block; width: 327px; height: 70px; vertical-align: top;"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card card-dark bg-secondary-gradient">
                                    <div class="card-body pb-0">
                                        <div class="h1 fw-bold float-right">5%</div>
                                        <h2 class="mb-2">Hoy</h2>
                                        <p>Lluvias</p>
                                        <div class="pull-in sparkline-fix chart-as-background">
                                            <div id="lineChart2">
                                                <canvas width="327" height="70" style="display: inline-block; width: 327px; height: 70px; vertical-align: top;"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card card-dark bg-success2">
                                    <div class="card-body pb-0">
                                        <div class="h1 fw-bold float-right">+7%</div>
                                        <h2 class="mb-2">Economía</h2>
                                        <p>Gasolina</p>
                                        <div class="pull-in sparkline-fix chart-as-background">
                                            <div id="lineChart3">
                                                <canvas width="327" height="70" style="display: inline-block; width: 327px; height: 70px; vertical-align: top;"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Inicio de sección de contenido -->
                    <div class="row">
                        <!-- Columna de Posts -->
                        <div class="col-md-8">
                            <!-- Sección de filtros -->
                            <div class="row mb-3">
                                <div class="col-3">
                                    <select class="custom-select">
                                        <option selected>Más Interactuados
                                            <i class="fa-solid fa-filter"></i>
                                        </option>
                                        <option value="1">Reciente</option>
                                        <option value="2">Mejor Votado</option>
                                    </select>
                                </div>
                            </div>
                            <!-- Post 1 -->
                            <div class="col-md-12 px-0">
                                <div class="card">
                                    <div class="card-header pb-1">
                                        <div class="d-flex">
                                            <img src="../../assets/img/profile.jpg" class="rounded-circle" style="height: 1vw; width: 1vw; object-fit: cover;">
                                            <a href="#" class="ml-1"><b>Manuel Díaz</b></a>
                                            <span class="ml-1">10/11/2022</span>
                                        </div>
                                        <div class="card-head-row">
                                            <a href="#" class="card-title" style="font-size: 2vw;">Aumento de Inundaciones</a>
                                            <div class="card-tools">
                                                <a href="#" class="btn btn-danger btn-round btn-sm mr-2">
                                                    <span class="btn-label">
                                                        <i class="fa-solid fa-circle-exclamation"></i>
                                                    </span>
                                                    Incidente
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
                                        <p class="mb-0">
                                            ¡Hola a todos! Quería compartir con ustedes una noticia importante sobre el aumento de inundaciones en nuestra comunidad. En los últimos meses, hemos experimentado un incremento significativo en los niveles de agua, lo que ha causado daños en varias áreas. Es crucial que estemos preparados y tomemos medidas para proteger nuestras propiedades y garantizar la seguridad de nuestras familias. Si tienes alguna información adicional o consejos sobre cómo lidiar con las inundaciones, por favor compártelos en los comentarios. ¡Gracias!
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
                            <!-- Post 2 -->
                            <div class="col-md-12 px-0">
                                <div class="card">
                                    <div class="card-header pb-1">
                                        <div class="d-flex">
                                            <img src="https://cdn-icons-png.freepik.com/512/146/146005.png" class="rounded-circle" style="height: 1vw; width: 1vw; object-fit: cover;">
                                            <a href="#" class="ml-1"><b>Ana Díaz</b></a>
                                            <span class="ml-1">10/12/2022</span>
                                        </div>
                                        <div class="card-head-row">
                                            <a href="#" class="card-title" style="font-size: 2vw;">Cambio Climático</a>
                                            <div class="card-tools">
                                                <a href="#" class="btn btn-warning btn-round btn-sm mr-2">
                                                    <span class="btn-label">
                                                        <i class="fa-solid fa-circle-exclamation"></i>
                                                    </span>
                                                    Seguridad
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
                                        <p class="mb-0">
                                            ¡Hola a todos! Hoy quiero hablar sobre el impacto del cambio climático en nuestra región. Las temperaturas han aumentado considerablemente, afectando a la flora y fauna local. Es crucial que tomemos medidas para reducir nuestra huella de carbono. ¿Tienes ideas sobre cómo podemos contribuir? ¡Déjalas en los comentarios!
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