# vistas en SQL
/*
    Una vista es una consulta
    que podemos almacenar dentro de nuestra base de datos
    El objetivo es evitar escribir varias veces una misma consulta
    en el caso que tuviéramos que ejecutarla varias veces en el
    día/semana/mes
    Además de la simplificación cuando trabajamos en equipo
*/

CREATE VIEW lista_precios
    AS
        SELECT
            idProducto AS ID,
            prdNombre AS Producto,
            prdPrecio AS Precio_Contado,
            format(prdPrecio * 1.05, 2) AS Precio_Lista,
            mkNombre AS Marca,
            catNombre AS Categoría
        FROM productos AS p
         JOIN marcas AS m
          ON p.idMarca = m.idMarca
         JOIN categorias AS c
          ON p.idCategoria = c.idCategoria;

# invocamos una vista como si fuese una tabla
SELECT * FROM lista_precios;

## Una vista parece una tabla independiente
## pero en realidad no lo es
-- Listar todas las vistas dentro de una base de datos
SHOW FULL TABLES IN introdb74807
    WHERE table_type = 'VIEW';

## Obtener el código de creación de una vista
SHOW CREATE VIEW lista_precios;

