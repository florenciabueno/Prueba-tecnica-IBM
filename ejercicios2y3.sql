/*Construir la mejor consulta SQL para obtener todos los registros de una tabla llamada 
"Ciudadanos" que cumplan con las siguientes condiciones:
• el "Nombre" empieza con las siguientes letras "Ped" o "San"
• el "Apellido" sea de menos de 15 caracteres*/

SELECT Nombre FROM Ciudadanos
WHERE Nombre LIKE 'Ped%' and LEN(Apellido) < 15 

UNION 

SELECT Nombre FROM Ciudadanos
WHERE Nombre LIKE 'San%' and LEN(Apellido) < 15;

/*Construir la mejor consulta SQL para obtener todos los nombres ("Nombre") únicos existentes
en la tabla "Ciudadanos" y devolverlos ordenados alfabéticamente.*/

/*Asumo que no hay repetidos en la tabla*/

SELECT Nombre FROM Ciudadanos
ORDER BY Nombre ASC;

/*Ausumo que en la tabla puede haber repetidos y cada ciudadano tiene un identificador ID que los distingue*/

SELECT C1.Nombre FROM Ciudadanos C1

WHERE NOT EXISTS 

(SELECT C2.Nombre FROM Ciudadanos C2 WHERE C1.Nombre == C2.Nombre and C1.ID != C2.ID)

ORDER BY Nombre ASC;
