# Filtrado de resultados

> Filtrar resultados de una consulta significa 
> traer únicamente los registros que cumplan con una condición.
> Para implementar un filtro utilizamos la 
> palabra reservada **WHERE** seguida de una condición

> Traer todos los destinos con un precio hasta 8600

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio <= 8600;  

> Traer todos los destinos con un 
> precio entre 6500 y 8600

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio >= 6500    
        AND precio <= 8600;  

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio BETWEEN 6500 AND 8600;  

> Todos los cumpleaños del mes de noviembre

    SELECT * FROM personas  
      WHERE MONTH(alta) = 11;  

> Traer todos los destinos de la región 7

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion = 7;  

> Traer todos los destinos de la 
> región 5 y de la región 7

    SELECT aeropuerto, precio, idRegion  
      FROM destinos  
      WHERE idRegion = 5  
        OR idRegion = 7;  

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE idRegion in ( 5, 7);   


