-- Creación del Schema
CREATE SCHEMA CommunityAlert;
USE CommunityAlert;

-- Creación de las Tablas
CREATE TABLE Provincias (
id_provincia INT PRIMARY KEY, -- No autoincrement, definido por los admins.
nombre_provincia VARCHAR(50)
);

CREATE TABLE Cantones (
id_canton INT PRIMARY KEY, -- No autoincrement, definido por los admins.
nombre_canton VARCHAR(50),
-- FKs
id_provincia INT,
CONSTRAINT fk_cantones_provincias FOREIGN KEY (id_provincia) REFERENCES Provincias(id_provincia)
);

CREATE TABLE Distritos (
id_distrito INT PRIMARY KEY, -- No autoincrement, definido por los admins.
nombre_distrito VARCHAR(50),
-- FKs
id_canton INT,
CONSTRAINT fk_distritos_cantones FOREIGN KEY (id_canton) REFERENCES Cantones(id_canton)
);

CREATE TABLE Roles (
id_role INT PRIMARY KEY, -- No autoincrement, definido por los admins.
nombre_rol VARCHAR(50)
);

CREATE TABLE Usuarios (
id_usuario INT AUTO_INCREMENT PRIMARY KEY,
nombre_usuario VARCHAR(50) NOT NULL, -- Input de usuario.
email VARCHAR(50) NOT NULL, -- Input de usuario.
password VARCHAR(50) NOT NULL, -- Input de usuario.
-- FKs
id_role INT,
CONSTRAINT fk_usuarios_roles FOREIGN KEY (id_role) REFERENCES Roles(id_role),   
id_distrito INT, -- Input de usuario.
CONSTRAINT fk_usuarios_distritos FOREIGN KEY (id_distrito) REFERENCES Distritos(id_distrito)
);

CREATE TABLE CategoriaPublicacion (
id_categoria_publicacion INT PRIMARY KEY, -- No autoincrement, definido por los admins.
nombre_categoria_publicacion VARCHAR(50)
);

CREATE TABLE Publicaciones (
id_publicacion INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(100) NOT NULL, -- Input de usuario.
contenido TEXT NOT NULL, -- Input de usuario.
fecha DATETIME NOT NULL,
-- FKs
id_usuario INT,
CONSTRAINT fk_publicaciones_usuarios FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),   
id_categoria_publicacion INT, -- Input de usuario.
CONSTRAINT fk_publicaciones_categoria FOREIGN KEY (id_categoria_publicacion) REFERENCES CategoriaPublicacion(id_categoria_publicacion)   
);

CREATE TABLE Comentarios (
id_comentario INT AUTO_INCREMENT PRIMARY KEY,
contenido TEXT NOT NULL, -- Input de usuario.
fecha DATETIME NOT NULL, -- Input de usuario.
-- FKs
id_publicacion INT,
CONSTRAINT fk_comentarios_publicaciones FOREIGN KEY (id_publicacion) REFERENCES Publicaciones(id_publicacion),
id_usuario INT,
CONSTRAINT fk_comentarios_usuarios FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)   
);

CREATE TABLE Likes (
PRIMARY KEY (id_usuario, id_publicacion),
fecha DATETIME NOT NULL, 
-- FKs
id_usuario INT,
CONSTRAINT fk_likes_usuarios FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),   
id_publicacion INT,
CONSTRAINT fk_likes_publicaciones FOREIGN KEY (id_publicacion) REFERENCES Publicaciones(id_publicacion)
);

/*--------------------------------------------------------------------*/

-- Inserts iniciales

INSERT INTO Provincias(id_provincia, nombre_provincia)
VALUES 
	(1, 'Alajuela'),
    (2, 'Heredia'),
    (3, 'Cartago'),
    (4, 'San José'),
    (5, 'Guanacaste'),
    (6, 'Puntarenas'),
    (7, 'Limón');
    
INSERT INTO Roles(id_role, nombre_rol)
VALUES
	(1, 'Admin'),
    (2, 'Usuario');

/* Definir cuales categorías van a existir

INSERT INTO CategoriaPublicacion(id_categoria_publicacion, nombre_categoria_publicacion)
VALUES
	(1, 'a'),
    (2, 'b'),
    (3, 'c');
*/

