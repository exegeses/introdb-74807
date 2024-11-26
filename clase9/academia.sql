# proyecto academia

create database academia2
    character set = utf8mb4
    collate = utf8mb4_unicode_ci;

use academia2;

create table areas
(
    idArea tinyint unsigned auto_increment primary key not null,
    area varchar(100) not null
);

create table niveles
(
    idNivel tinyint unsigned auto_increment primary key not null,
    nivel varchar(40) not null
);

create table cursos
(
    idCurso smallint unsigned auto_increment primary key not null,
    curso varchar(100) unique not null,
    idArea tinyint unsigned not null,
    idNivel tinyint unsigned not null,
    foreign key (idArea) references areas (idArea),
    foreign key (idNivel) references niveles (idNivel)
);

create table alumnos
(
    idAlumno smallint unsigned auto_increment primary key not null,
    apellido varchar(80) not null,
    nombre varchar(80) not null,
    dni bigint unsigned unique not null,
    email varchar(100) not null,
    fecha date not null
); -- auto_increment = 100

create table cursos_alumnos
(
    idCursoAlumno smallint unique auto_increment primary key not null,
    idCurso smallint unsigned not null,
    idAlumno smallint unsigned not null,
    activo boolean not null,
    foreign key (idCurso) references cursos (idCurso),
    foreign key (idAlumno) references alumnos (idAlumno)
);
