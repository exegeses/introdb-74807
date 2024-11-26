/* traer
    nombre de producto, precio de producto
    nombre de proveedor, telefono de proveedor
 */

 SELECT
        productos.prdNombre AS Producto,
        productos.prdPrecio AS Precio,
        proveedores.prvNombre AS Proveedor,
        proveedores.prvTelefono AS Teléfono
    FROM productos
    JOIN productos_proveedores
      ON productos.idProducto = productos_proveedores.idProducto
    JOIN proveedores
      ON productos_proveedores.idProveedor = proveedores.idProveedor;

/* traer
    nombre de producto, precio de producto
    marca, categoría
    nombre de proveedor, telefono de proveedor
 */

SELECT
        prdNombre as Producto,
        prdPrecio as Precio,
        mkNombre as Marca,
        catNombre as Categoría,
        prvNombre as Proveedor,
        prvTelefono as Teléfono
    FROM productos as p
        JOIN marcas as m ON m.idMarca = p.idMarca
        JOIN categorias as c ON c.idCategoria = p.idCategoria
        JOIN productos_proveedores pp ON p.idProducto = pp.idProducto
        JOIN proveedores p2 ON pp.idProveedor = p2.idProveedor;
