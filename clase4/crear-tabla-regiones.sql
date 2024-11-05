# creación de tabla regiones

create table regiones
(
    idRegion smallint unsigned auto_increment primary key not null,
    nombre varchar(40) not null
);


-- Inserción de datos en la tabla regiones
insert into regiones
VALUES
    ( DEFAULT, 'América del Sur' ),
    ( DEFAULT, 'América Central' ),
    ( DEFAULT, 'Caribe y México' ),
    ( DEFAULT, 'América del Norte' ),
    ( DEFAULT, 'Europa Occidental'),
    ( DEFAULT, 'Europa del Este'),
    ( DEFAULT, 'Asia'),
    ( DEFAULT, 'Oceanía');