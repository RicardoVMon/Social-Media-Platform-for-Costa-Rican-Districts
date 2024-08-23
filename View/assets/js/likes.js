function cambiarValorLike(event, idPublicacion, idUsuario) {

    /* event.preventDefault();

    $.ajax({
        type: 'POST',
        url: '../../../Controller/Likes/likesController.php',
        dataType: 'text',
        data: {
            "cambiarEstadoLike": "FUNCION",
            "idUsuario": idUsuario,
            "idPublicacion": idPublicacion
        },
        success: function (respuesta) {

            if (respuesta == 1) {
                var iconoLike = document.getElementById("icono-like-" + idPublicacion);
                iconoLike.classList.remove('fa-regular');
                iconoLike.classList.add('fa-solid');
            } else if (respuesta == 0) {
                var iconoLike = document.getElementById("icono-like-" + idPublicacion);
                iconoLike.classList.remove('fa-solid');
                iconoLike.classList.add('fa-regular');
            }
            console.log(respuesta);
        }
    }); */

    event.preventDefault();

    $.ajax({
        type: 'POST',
        url: '../../../Controller/Likes/likesController.php',
        dataType: 'json',
        data: {
            "cambiarEstadoLike": "FUNCION",
            "idUsuario": idUsuario,
            "idPublicacion": idPublicacion
        },
        success: function (respuesta) {
            var existeLike = respuesta.existe_like;
            var cantidad_likes = respuesta.cantidad_likes;

            var iconoLike = document.getElementById("icono-like-" + idPublicacion);
            if (existeLike == 1) {
                iconoLike.classList.remove('fa-regular');
                iconoLike.classList.add('fa-solid');
            } else if (existeLike == 0) {
                iconoLike.classList.remove('fa-solid');
                iconoLike.classList.add('fa-regular');
            }

            var contadorLikes = document.getElementById("cantidad-likes-" + idPublicacion);
            contadorLikes.textContent = cantidad_likes;

        }
    });

}