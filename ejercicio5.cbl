*EJERCICIO 5 COBOL

*1.Listar las divisiones de las que consta un Programa COBOL
*Todo programa Cobol tiene hasta 4 divisiones (partes de un programa), cada una tiene una función específica.

IDENTIFICATION DIVISION: primer y única división obligatoria de cualquier programa Cobol, lleva información 
del programa, como el propio nombre del programa, el autor y otros datos.

ENVIROMENT DIVISION: lleva información del entorno, entre otras cosas, información de la computadora donde 
se ha escrito, de la computadora donde se va a ejecutar, etc.

DATA DIVISION: es de las más importantes, pero no es obligatoria, en ella se ponen registros, variables, 
nombres de campo, etc.

PROCEDURE DIVISION: ultima división en Cobol, disponemos de todos los procedimientos
necesarios para que el programa funcione.

*2. Explicar cómo deben ser definidas las siguientes variables en un programa COBOL:

*a)	Alfanumérica de 5 posiciones 

WORKING-STORAGE-SECTION.
01 VARIABLE PIC X(5).

*b)	Numérica de 8 posiciones 

WORKING-STORAGE-SECTION.
01 VARIABLE PIC 9(8).

*c)	Numérica de 8 posiciones con dos decimales

WORKING-STORAGE-SECTION.
01 VARIABLE PIC 9(8)V9(2).

*d)	Carácter de 3 posiciones inicializada en espacios 

WORKING-STORAGE-SECTION.
01 VARIABLE PIC X(3) VALUE SPACES.

*e)	Numérica de 8 posiciones inicializada en ceros 

WORKING-STORAGE-SECTION.
01 VARIABLE PIC 9(8) VALUE ZEROS.

*f)	Numérica editada de 5 posiciones con miles 

WORKING-STORAGE-SECTION.
01 VARIABLE PIC zz.zzz.

*g)	Numérica con signo de dos enteros 5 decimales 

WORKING-STORAGE-SECTION.
01 VARIABLE PIC S9(2)V9(5).

*h)	Alfanumérica de 3 posiciones inicializada con valor IBM

WORKING-STORAGE-SECTION.
01 VARIABLE PIC X(3) VALUE "IBM".

*3. Un programa Cobol está estructurado en una serie de Divisiones, Secciones y Párrafos en los que hay que ir declarando la información que corresponda a cada una de ellas. Escribir la estructura

IDENTIFICATION DIVISION
       PROGRAM-ID
       AUTHOR
       INSTALLATION
       DATE-WRITTEN
       DATE-COMPILED
       SECURITY

ENVIRONMENT DIVISION
   CONFIGURATION SECTION
      SOURCE-COMPUTER
      OBJECT-COMPUTER
      SPECIAL-NAMES
   INPUT-OUTPUT SECTION
      FILE CONTROL
      I-O-CONTROL

	
DATA DIVISION
   FILE SECTION
      ...
      FICHERO
         REGISTRO
      ...
   WORKING-STORATE SECTION
      ...
      VARIABLE
      ...
   LINKAGE SECTION
      ...
      PARAMETRO
      ...

PROCEDURE DIVISION
   ...
   SECCION
      PARRAFO
         SENTENCIA
   ...

*4. Escribir las instrucciones COBOL necesarias (solo la PROCEDURE) que se encargue de evaluar
*dos variables numéricas (VAR1 y VAR2) y en el caso que VAR1 sea mayor que VAR2 asignar valor 
*500 a variable VAR3 y en caso contrario desplegar el valor de VAR1.

PROCEDURE DIVISION.

       IF VAR1 > VAR2
       		MOVE 500 TO VAR3.
       ELSE
       		DISPLAY VAR1.
       END-IF.
       
       STOP RUN.
         
*5. Escriba párrafos/instrucciones COBOL necesarias (solo la PROCEDURE) que se encarguen de 
*leer secuencialmente un archivo, por cada registro evaluar el CAMPO1, si tiene valor ‘AA’ 
*incrementar en 15% el valor del CAMPO2, si tiene valor ‘BB’ incrementar en 25% el valor del CAMPO2, 
*en otros casos incrementar en 50% el valor del CAMPO2. Luego desplegar los valores de todos los campos del archivo. 

*El archivo tiene la siguiente estructura: 
01 REGISTRO. 
05 CAMPO1 PIC X(02). 
05 CAMPO2 PIC 9(05).

*Muestro los registros de 10 en 10 ya, como no tengo idea de cuantos puede haber
*en la base de datos, mostrarlos todos de golpe podría causar que colapse

*Asumo que el archivo existe para poder usar open I-O

*Asumo que contiene una cantidad aceptable para poder mostrar todos en la consola sin que se rompa

*Asumo que existe una variable END, para que me indique el final del registro

*Asumo que existe la constante 15_percent = 15/100 para incrementar en 15%

*Asumo que existe la constante 25_percent = 25/100 para incrementar en 25%


PROCEDURE DIVISION.

       START_PROGRAM.
       PERFORM OPEN_FILE.
       MOVE '1' TO END.
       PERFORM READ_NEXT.
       PERFORM EVALUATE_AND_DISPLAY.
       UNTIL END = '0'.
       PERFORM CIERRE_ARCHIVO.
       PROGRAM_DONE.
       STOP RUN.
       
       OPEN_FILE.
       OPEN I-O REGISTRO.
       
       CLOSE_FILE.
       CLOSE REGISTRO.
       
       EVALUATE.
       IF CAMPO1 = 'AA'
          MULTIPLY CAMPO2 BY 15_percent.
          MOVE RESULT TO CAMPO2.
       ELSE 
          IF CAMPO1 = 'BB'
             MULTIPLY CAMPO2 BY 25_percent.
             MOVE RESULT TO CAMPO2.
          ELSE
             MULTIPLY CAMPO2 BY 2.
             MOVE RESULT TO CAMPO2.
          END-IF. 
       END-IF.
       DISPLAY CAMPO1.
       DISPLAY CAMPO2.
       PERFORM READ_NEXT.
       
       READ_NEXT.
       READ REGISTRO NEXT RECORD.
       AT END.
       MOVE '0' TO END.
 