# creación de tabla proveedores

create table proveedores
(
    idProveedor tinyint unsigned primary key auto_increment not null,
    prvNombre varchar(60) unique not null,
    prvTelefono varchar(30) not null,
    prvCuit varchar(15)  not null,
    prvDireccion varchar(100) not null
);

## Inserción de datos
INSERT INTO proveedores
        (prvNombre, prvTelefono, prvCuit, prvDireccion)
    VALUES
        ('Proveedores S.A.', '1234-5678', '20-12345678-9', 'Calle Falsa 123, Ciudad A'),
        ('Distribuciones XYZ', '2345-6789', '20-23456789-0', 'Avenida Siempre Viva 456, Ciudad B'),
        ('Comercializadora ABC', '3456-7890', '20-34567890-1', 'Boulevard de los Sueños Rotos 789, Ciudad C'),
        ('Servicios Integrales S.L.', '4567-8901', '20-45678901-2', 'Plaza Mayor 101, Ciudad D'),
        ('Logística Global', '5678-9012', '20-56789012-3', 'Calle del Sol 202, Ciudad E'),
        ('Suministros y Más', '6789-0123', '20-67890123-4', 'Calle Luna 303, Ciudad F'),
        ('Tecnología y Proyectos', '7890-1234', '20-78901234-5', 'Calle Estrella 404, Ciudad G'),
        ('Innovaciones Ltda.', '8901-2345', '20-89012345-6', 'Calle Nube 505, Ciudad H'),
        ('Proyectos Avanzados', '9012-3456', '20-90123456-7', 'Calle Mar 606, Ciudad I'),
        ('Soluciones Empresariales', '0123-4567', '20-01234567-8', 'Calle Tierra 707, Ciudad J');
