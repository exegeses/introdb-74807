# creación de tabla pivote
CREATE TABLE productos_proveedores (
       idProdProv smallint PRIMARY KEY AUTO_INCREMENT not null,
       idProducto smallint unsigned not null,
       idProveedor tinyint unsigned not null,
       FOREIGN KEY (idProducto) REFERENCES productos (idProducto),
       FOREIGN KEY (idProveedor) REFERENCES proveedores (idProveedor)
);

-- Inserción de datos para productos_proveedores
INSERT INTO productos_proveedores
    (idProducto, idProveedor)
VALUES
        (1, 3),
        (2, 7),
        (3, 5),
        (4, 1),
        (5, 9),
        (6, 2),
        (7, 6),
        (1, 8),
        (2, 4),
        (3, 10);
