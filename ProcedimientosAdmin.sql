{\rtf1\ansi\ansicpg1252\cocoartf2761
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarComunidadAdmin`(`pId` int(11), `pDescripcion` text, `pBanner` varchar(225), `pIcono` varchar(225))\
BEGIN\
UPDATE communityalert.distritos\
	SET \
    descripcion = IF(pDescripcion != '', pDescripcion, descripcion),\
	banner = IF(pBanner != '', pBanner, banner),\
	icono = IF(pIcono != '', pIcono, icono)\
	WHERE id_distrito = pId;\
END\
\
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarPublicacionAdmin`(`pId` int(11))\
BEGIN\
	DELETE FROM communityalert.comentarios \
    WHERE id_publicacion = pId;\
    \
	DELETE FROM communityalert.publicaciones \
    WHERE id_publicacion = pId;\
END\
\
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerComunidadAdmin`(`pId` int(11))\
BEGIN\
\
	SELECT id_distrito, nombre_distrito, descripcion, banner, icono\
    FROM communityalert.distritos\
    WHERE id_distrito = pId;\
\
END\
\
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerComunidadesAdmin`()\
BEGIN\
SELECT d.id_distrito, p.nombre_provincia, c.nombre_canton, d.nombre_distrito, COUNT(u.id_usuario) As cantidadUsuarios\
FROM communityalert.provincias p \
JOIN communityalert.cantones c ON p.id_provincia = c.id_provincia\
JOIN communityalert.distritos d ON c.id_canton = d.id_canton\
LEFT JOIN communityalert.usuarios u ON u.id_distrito = d.id_distrito\
GROUP BY p.nombre_provincia, c.nombre_canton, d.nombre_distrito;\
END\
\
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerPublicacionesAdmin`()\
BEGIN\
	SELECT p.id_publicacion, p.titulo, p.contenido, COUNT(c.id_comentario) AS cantidadComentarios\
    FROM communityalert.publicaciones p\
    LEFT JOIN communityalert.comentarios c\
    ON p.id_publicacion = c.id_publicacion\
    GROUP BY p.id_publicacion;\
END\
\
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerUsuariosAdmin`()\
BEGIN\
	SELECT u.id_usuario, u.cedula, u.nombre_usuario, d.nombre_distrito, COUNT(p.id_publicacion ) AS cantidadPosts, COUNT(c.id_comentario) AS cantidadComentarios\
    FROM communityalert.usuarios u \
    JOIN communityalert.distritos d ON u.id_distrito = d.id_distrito\
    LEFT JOIN communityalert.publicaciones p ON p.id_usuario = u.id_usuario\
    LEFT JOIN communityalert.comentarios c ON c.id_usuario = u.id_usuario\
    GROUP BY u.cedula, u.nombre_usuario, d.nombre_distrito;\
END}