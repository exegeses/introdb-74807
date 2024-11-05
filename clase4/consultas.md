# Consulta en SQL

## Consultas al servidor de base de datos

    -- listar todas las bases de datos
    SHOW DATABASES;  

    -- listar todas las tablas de una base de datos
    SHOW TABLES;  

## Consultas a una tabla de una base de datos

    -- Ver la estructura de una tabla
    DESCRIBE nombreTabla;  

> La palabra reservada más importante o al menos la más utilizada para consultas es la palabra **SELECT** 

    -- Mostrar la base de datos activa
    SELECT DATABASE();  

> Para realizar consultas y ver los datos almacenados dentro de una tabla 
> utilizamos la palabra reservada **SELECT** 
> acompañada de la palabra **FROM** 

    SELECT * FROM nombreTabla;    

    SELECT * FROM regiones;  

    SELECT * FROM destinos;  

> Cuándo hacemos **SELECT * FROM nombreTabla** estamos trayendo todos los datos de todas las columnas de esa tabla
> Si queremos traer los datos de **algunas** columnas de una tabla debemos mencionar los nombres de estas columnas separadas por comas ( en lugar del * )

    SELECT nombreCampo2, nombreCampo4  
        FROM nombreTabla;  

    SELECT aeropuerto, precio  
        FROM destinos;  

### Orden de resultados

> Para ordenar los resultados de una consulta utilizamos
> **ORDER BY** seguido del nombre de la columna que queremos usar para ordenar

    SELECT nombre FROM regiones    
        ORDER BY nombre;  

    SELECT * FROM personas    
        ORDER BY alta;  

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY idRegion;  

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY idRegion, precio;  