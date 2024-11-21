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
