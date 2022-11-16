# Prueba técnica-IBM

Para esta prueba me base en los ejercicios 1, 2 y 3 de los perfiles Testing y SQL.

Para completar los casos de prueba del ejercicio 1, supuse que el login era para un banco, por ejemplo el BROU, para poder asignarle prioridades a las pruebas. Por ejemplo, añadí algunos casos que no estaban implícitos, como por ejemplo, ejecutar otro procedimiento (por ejemplo, cambiar la contraseña) cuando alguien intenta entrar a la página, pero ingresa una contraseña errónea mas de tres veces, de manera de reforzar la seguridad de los datos de los usuarios.

Al hacer las consultas de SQL, en el ejercicio 3, hice dos consultas, una en caso de que no haya repetidos, y solo devolvería los nombres, ya que está implícito que son únicos. Pero en el caso de que haya repetidos, tuve que asumir que en la tabla, cada ciudadano tiene un ID, para así poder distinguir entre nombres que sean únicos, ya que si hay repetidos no se deberían mostrar.

