

/*LISTA LOS OBJETOS QUE TIENE LA BASE DE DATOS*/
EXECUTE sp_help

/*INFORMACION MAS ESPECIFICA DE LA TABLA*/
EXECUTE sp_help 'Datos_Personales'

/*CAMBIAR EL NOMBRE DE UNA TABLA A TRAVES DE UN STORED PROCEDURE*/

USE Alumnos
EXECUTE sp_rename 'Region', 'Regiones'

EXECUTE sp_rename 'Regiones', 'Region'