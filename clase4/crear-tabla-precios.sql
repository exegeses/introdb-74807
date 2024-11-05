# creación de tabla precios

create table precios
(
    id tinyint unsigned auto_increment primary key not null,
    aproximado float unsigned not null,
    aproximado2 double unsigned not null,
    exacto decimal(10,2) unsigned not null
);

insert into precios
    values
        ( DEFAULT, 43.2, 43.2, 43.2 ),
        ( DEFAULT, 25, 25, 25 ),
        ( DEFAULT, 16.369, 16.369, 16.369 ),
        ( DEFAULT, 14, 14, 14 ),
        ( DEFAULT, 39.10, 39.10, 39.10 ),
        ( DEFAULT, 45.7, 45.7, 45.7 );

-- demostración
SELECT  sum(aproximado),
        sum(aproximado2),
        sum(exacto)
FROM precios;