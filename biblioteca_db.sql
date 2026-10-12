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

INSERT INTO libros(codigo, titulo, paginas)
VALUES
('LIB01', 'Cien años de soledad', 496),
('LIB02', 'Don Quijote de la Mancha', 863),
('LIB03', 'El principito', 96),
('LIB04', 'Crónica de una muerte anunciada', 128),
('LIB05', '1984', 328),
('LIB06', 'Fahrenheit 451', 176),
('LIB07', 'El amor en los tiempos del cólera', 368),
('LIB08', 'Pedro Páramo', 128),
('LIB09', 'La ciudad y los perros', 448),
('LIB10', 'Ficciones', 176);

select * from libros;

INSERT INTO autores(id, nombre, pais)
VALUES
(1, 'Gabriel García Márquez', 'Colombia'),
(2, 'Miguel de Cervantes', 'España'),
(3, 'Antoine de Saint-Exupéry', 'Francia'),
(4, 'George Orwell', 'Reino Unido'),
(5, 'Juan Rulfo', 'México');

select * from autores;

INSERT INTO libro_autor(la_libro_codigo_fk, la_autor_id_fk, anio_publicacion)
VALUES
('LIB01', 1, 1967),
('LIB02', 2, 1605),
('LIB03', 3, 1943),
('LIB04', 1, 1981),
('LIB05', 4, 1949),
('LIB06', 4, 1953),
('LIB07', 1, 1985),
('LIB08', 5, 1955);

select * from libro_autor;
