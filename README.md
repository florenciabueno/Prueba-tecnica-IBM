# Prueba técnica-IBM

Para esta prueba me base en los ejercicios 1, 2, 3 Y 5 de los perfiles Testing, COBOL y SQL.

Para completar los casos de prueba del ejercicio 1, supuse que el login era para un banco, por ejemplo el BROU, para poder asignarle prioridades a las pruebas. Por ejemplo, añadí algunos casos que no estaban implícitos, como por ejemplo, ejecutar otro procedimiento (cambiar la contraseña) cuando alguien intenta entrar a la página, pero ingresa una contraseña errónea mas de tres veces, de manera de reforzar la seguridad de los datos de los usuarios.

En el ejercicio 2 de SQL, al principio hice la consulta con un OR en vez de UNION, pero investigando me di cuenta que el UNION es mas performante que un OR, y que era recomendable evitar el OR, entonces me planteé realizar la consulta con UNION.

Al hacer las consultas de SQL, en el ejercicio 3, hice dos consultas, una en caso de que no haya repetidos, y solo devolvería los nombres, ya que está implícito que son únicos. Pero en el caso de que haya repetidos, tuve que asumir que en la tabla, cada ciudadano tiene un ID, para así poder distinguir entre nombres que sean únicos, ya que si hay repetidos no se deberían mostrar.

Para el código del ejercicio 5 parte (5), construí el programa asumiendo que exsten ciertas constantes y variables para facilitar varias cosas (se explica en el archivo).
Lo primero que hace es abrir el archivo de la base de datos, ya que si no lo abrimos, no podremos leer, escribir, actualizar o borrar datos de él. Y al terminar de reccorer lo que necesitábamos, deberíamos cerrarlo.
Comencé asignándole el valor '1' a la variable END_FILE, ya que mientras esté en '1', seguiremos recorriendo el archivo, pero al finalizar nuestra recorrida, esa variable tomará el valor '0', indicando que debemos terminar la ejecución.

Para leer secuencialmente todo el archivo usamos READ REGISTRO NEXT RECORD    AT END.
Cuando se lee un registro, pasa a ejecutarse EVALUATE_AND_DISPLAY, que cambiará el CAMPO2 del registro según cual condicición se cumpla, y desplegará ambos campos del registro en la consola.

EVALUATE_AND_DISPLAY deja de ejecutarse cuando se llega al fin del archivo, particularmente, cuando END_FILE = '0', lo que significa que debemos cerrar el archivo y parar la ejecución.

Referencias para hacer los ejercicios:

-MateriaL teorico de TVS (Curso de la Facultad de Ingeniería UDELAR)
-https://abstracta.us/insights/guide-continuous-testing/functional-testing
-https://es.parasoft.com/blog/how-to-write-test-cases-for-software-examples-tutorial/
-https://www.itdo.com/blog/moscow-que-es-y-como-priorizar-en-el-desarrollo-de-tu-aplicacion/
-https://www.w3schools.com/sql/default.asp
-https://www.aulaclic.es/sqlserver/t_3_13.htm#:~:text=SELECT%20numemp%2Cnombre%20FROM%20empleados%20WHERE%20nombre%20LIKE%20'%5Ba%2Dd,la%20a%20a%20la%20d.
-https://www.campusmvp.es/recursos/post/Fundamentos-de-SQL-Como-realizar-consultas-simples-con-SELECT.aspx?deletepost=ede246d0-7f38-4a98-8200-e033b759900a
-https://www.edix.com/es/instituto/cobol/#:~:text=Las%20siglas%20COBOL%20responden%20a,un%20gran%20n%C3%BAmero%20de%20instituciones.
-http://www.consultoriocobol.com/2011/01/working-storage-definiendo-variables.html#:~:text=Alfanum%C3%A9ricas%3A%20se%20indican%20con%20un,9(n%C3%BAmero%20de%20d%C3%ADgitos).
-https://www.programacionfacil.org/cursos/cobol/cobol_index.html
-http://www.universocobol.com/2014/10/estructura-basica-de-un-programa-cobol-1.html
