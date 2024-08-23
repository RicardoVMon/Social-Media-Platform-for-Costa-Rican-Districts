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
        dataType: 'json', // Cambiar a 'json' para que jQuery parsee automáticamente la respuesta
        data: {
            "cambiarEstadoLike": "FUNCION",
            "idUsuario": idUsuario,
            "idPublicacion": idPublicacion
        },
        success: function (respuesta) {
            // Leer el valor de existe_like del JSON
            var existeLike = respuesta.existe_like;
            var cantidad_likes = respuesta.cantidad_likes;
    
            // Actualizar el icono del like
            var iconoLike = document.getElementById("icono-like-" + idPublicacion);
            if (existeLike == 1) {
                iconoLike.classList.remove('fa-regular');
                iconoLike.classList.add('fa-solid');
            } else if (existeLike == 0) {
                iconoLike.classList.remove('fa-solid');
                iconoLike.classList.add('fa-regular');
            }
    
            // Actualizar el contador de likes
            var contadorLikes = document.getElementById("cantidad-likes-" + idPublicacion);
            contadorLikes.textContent = cantidad_likes;
    
            console.log(respuesta);
        }
    });

}