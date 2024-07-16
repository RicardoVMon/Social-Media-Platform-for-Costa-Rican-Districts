<?php include_once '../Layout/layoutAdmin.php'; ?>

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
                            <span class="display-1">Administrador de Posts</span>
                            <span class="display-5 pl-2">Interactua con la tabla conforme a lo que necesites realizar!</span>
                        </div>
                    </div>

                    <!-- Inicio de seccion de contenido -->
                    <div class="row">

                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">Tabla de Posts Reportados</div>
                                </div>
                                <div class="card-body">
                                    <table id="userTable" class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Nombre de Post</th>
                                                <th>Resumen</th>
                                                <th>Cantidad de Reportes</th>
                                                <th>Cantidad de Comentarios</th>
                                                <th>Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th>Lorem, ipsum dolor.</th>
                                                <td>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime, sed.</td>
                                                <td>5</td>
                                                <td>12</td>
                                                <td>
                                                    <button class="btn btn-primary mr-2">Ver Completo</button>
                                                    <button class="btn btn-danger">Eliminar</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>Lorem, ipsum dolor.</th>
                                                <td>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime, sed.</td>
                                                <td>7</td>
                                                <td>10</td>
                                                <td>
                                                    <button class="btn btn-primary mr-2">Ver Completo</button>
                                                    <button class="btn btn-danger">Eliminar</button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
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
    <script>
        $(document).ready(function() {
            $('#userTable').DataTable();
        });
    </script>

</body>

</html>