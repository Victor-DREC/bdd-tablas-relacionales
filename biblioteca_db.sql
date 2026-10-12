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

CREATE TABLE libro_autor(
	la_libro_codigo_fk varchar(5) not null,
	la_autor_id_fk int not null,
	anio_publicacion int not null,

	constraint libro_fk foreign key(la_libro_codigo_fk) references libros(codigo),
	constraint autor_fk foreign key(la_autor_id_fk) references autores(id),

	--primary key compuesta
	constraint libro_por_autor_fk primary key(la_libro_codigo_fk, la_autor_id_fk)
	
);