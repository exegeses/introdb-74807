# creación de tablas proyecto catálogo

-- creación de tabla marcas
create table marcas
(
    idMarca tinyint unsigned primary key auto_increment not null,
    mkNombre varchar(45) unique not null
);

-- creación de tabla categorias
create table categorias
(
    idCategoria tinyint unsigned primary key auto_increment not null,
    catNombre varchar(45) unique not null
);

-- creación de tabla productos
create table productos
(
    idProducto smallint unsigned primary key not null auto_increment,
    prdNombre varchar(50) unique not null,
    prdPrecio decimal(10,2) unsigned not null,
    idMarca tinyint unsigned not null,
    idCategoria tinyint unsigned not null,
    prdDescripcion varchar(1000) not null,
    prdImagen varchar(45) not null,
    prdActivo boolean not null,
    foreign key (idMarca) references marcas (idMarca),
    foreign key (idCategoria) references categorias (idCategoria)
);
