<?php include_once __DIR__ . '/../../Model/Likes/likesModel.php';

function obtenerLikesPost($idPost)
{
    $respuesta = obtenerLikesPostBD($idPost);

    if ($respuesta->num_rows > 0) {
        $row = mysqli_fetch_array($respuesta);
        return $row['cantidad_likes'];
    }
}

function estadoLikeUsuario($idUsuario, $idPost)
{
    $respuesta = estadoLikeUsuarioBD($idUsuario, $idPost);

    if ($respuesta->num_rows > 0) {
        $row = mysqli_fetch_array($respuesta);
        return $row['existe_like'];
    }
}

function cambiarEstadoLike($idUsuario, $idPost)
{
    /* return cambiarEstadoLike($idUsuario, $idPost); */
    $respuesta = cambiarEstadoLikeBD($idUsuario, $idPost);

    if ($respuesta->num_rows > 0) {
        $row = mysqli_fetch_array($respuesta);
        return $row['existe_like'];
    }
}

if (isset($_POST["cambiarEstadoLike"])) {

    /* $idUsuario = $_POST["idUsuario"];
    $idPost = $_POST["idPublicacion"];

    $respuesta = cambiarEstadoLike($idUsuario, $idPost);
    if ($respuesta->num_rows > 0) {
        $row = mysqli_fetch_array($respuesta);
        echo $row["existe_like"];
    } */

    $idUsuario = $_POST["idUsuario"];
    $idPost = $_POST["idPublicacion"];

    // Llamar a la función cambiarEstadoLike
    $existeLike = cambiarEstadoLike($idUsuario, $idPost);

    // Llamar a la función obtenerLikesPost
    $cantidad_likes = obtenerLikesPost($idPost);

    // Devolver el JSON con ambos valores
    echo json_encode([
        "existe_like" => $existeLike,
        "cantidad_likes" => $cantidad_likes
    ]);
}
