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
                            <span class="display-1">Administrador de Usuarios</span>
                            <span class="display-5 pl-2">Interactua con la tabla conforme a lo que necesites realizar!</span>
                        </div>
                    </div>

                    <!-- Inicio de seccion de contenido -->
                    <div class="row">

                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">Tabla de Usuarios</div>
                                </div>
                                <div class="card-body">
                                    <table id="userTable" class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Estado</th>
                                                <th>Cédula</th>
                                                <th>Nombre</th>
                                                <th>Comunidad</th>
                                                <th>Cantidad de Posts</th>
                                                <th>Cantidad de Comentarios</th>
                                                <th>Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th>Activo</th>
                                                <td>123456789</td>
                                                <td>John Doe</td>
                                                <td>San Isidro</td>
                                                <td>12</td>
                                                <td>5</td>
                                                <td>
                                                    <button class="btn btn-primary mr-2">Cambiar Estado</button>
                                                    <button class="btn btn-secondary">Ver Perfil</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>Activo</th>
                                                <td>987654321</td>
                                                <td>Jane Smith</td>
                                                <td>San José de la Montaña</td>
                                                <td>15</td>
                                                <td>1</td>
                                                <td>
                                                    <button class="btn btn-primary mr-2">Cambiar Estado</button>
                                                    <button class="btn btn-secondary">Ver Perfil</button>
                                                </td>
                                            </tr>
                                            <!-- Add more rows for each user -->
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