CREATE DATABASE biblioteca_db;

CREATE TABLE libros(
	codigo varchar(5) primary key,
	titulo varchar(50) not null,
	paginas int not null
);

CREATE TABLE autores(
	id int primary key,
	nombre varchar(50) not null,
	pais varchar(30) not null
);