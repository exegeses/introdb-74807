# Alias en SQL
/*
    En SQL podemos renombrar el enunciado de una columna
    con motivo de qué quede mejor en el reporte.
    Nota: No se cambia realmente el nombre de la columna
    si no que este es un cambio temporal para la visualización
    de el reporte.
    Implementamos un alias con la palabra reservada **AS**
    ( se puede omitir )
 */

SELECT
    prdNombre AS Producto,
    prdPrecio AS Precio,
    mkNombre AS Marca,
    catNombre AS Categoría
FROM productos
     JOIN marcas
      ON productos.idMarca = marcas.idMarca
     JOIN categorias
      ON productos.idCategoria = categorias.idCategoria;


SELECT
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
