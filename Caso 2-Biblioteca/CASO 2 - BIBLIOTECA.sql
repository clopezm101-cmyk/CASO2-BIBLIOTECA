CREATE DATABASE biblioteca_centro;
USE biblioteca_centro;

CREATE TABLE autor(
cod_autor INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL
);

CREATE TABLE libro(
cod_libro INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(100) NOT NULL,
ISBN VARCHAR(10) UNIQUE,
editorial VARCHAR(100),
num_paginas INT
);

CREATE TABLE autor_libro(
cod_autor INT,
cod_libro INT,
PRIMARY KEY (cod_autor, cod_libro),
FOREIGN KEY (cod_autor) references autor(cod_autor),
FOREIGN KEY (cod_libro) references libro(cod_libro)
);

CREATE TABLE ejemplar(
cod_ejemplar INT AUTO_INCREMENT PRIMARY KEY,
cod_libro INT NOT NULL,
localizacion VARCHAR(100),
FOREIGN KEY (cod_libro) references libro(cod_libro)
);

CREATE TABLE usuario(
cod_usuario INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
direccion VARCHAR(100),
telefono VARCHAR(10)
);

CREATE TABLE prestamo(
cod_prestamo INT AUTO_INCREMENT PRIMARY KEY,
cod_usuario INT NOT NULL,
cod_ejemplar INT NOT NULL,
fecha_prestamo DATE NOT NULL,
fecha_Devolucion DATE NOT NULL,
FOREIGN KEY (cod_usuario) references usuario(cod_usuario),
FOREIGN KEY (cod_ejemplar) references ejemplar(cod_ejemplar)
);
