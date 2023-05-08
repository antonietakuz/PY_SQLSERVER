/*Sentencias Group By y Having en SQL*/

/*TIEMPO MINIMO QUE HICIERON TANTO HOMBRES COMO MUJERES EN LA MARATON DE NY*/
USE Maraton

SELECT gender, Min(time) AS Tiempo_Minimo
FROM [Maraton NY]
GROUP BY gender /*AGRUPAMOS POR GENERO*/

/*TIEMPO MAXIMO QUE HICIERON TANTO HOMBRES COMO MUJERES EN LA MARATON DE NY*/

SELECT gender, Max(time) AS Tiempo_Minimo
FROM [Maraton NY]
GROUP BY gender /*AGRUPAMOS POR GENERO*/


/*CUANTOS PARTICIPANTE TENEMOS DE CADA PAIS */

SELECT home, COUNT (Corredor) AS Cant_Participantes
FROM [Maraton NY]
GROUP BY home

/*CUANTOS PARTICIPANTE TENEMOS DE CADA PAIS CLASIFICADOS POR HOMBRE O MUJER */

SELECT home, gender, COUNT (Corredor) AS Cant_Participantes
FROM [Maraton NY]
GROUP BY home, gender


/*TIEMPO MINIMO QUE HICIERON LOS CORREDORES MEXICANOS*/

SELECT home, gender, MIN(Time) AS Tiempo_Minimo
FROM [Maraton NY]
WHERE home='mex'
GROUP BY home, gender

/*TIEMPO MINIMO QUE HICIERON LOS CORREDORES MEXICANOS Y LOS DE PERU*/

SELECT home, gender, MIN(time) AS Tiempo_minimo
FROM [Maraton NY]
WHERE home IN ('MEX', 'PER')
GROUP BY home, gender

/*CREAR COLUMNAS CON LOS ESTADISTICOS DESCRIPTIVOS, TIEMPO MINIMO Y MAXIMO DE CADA PAIS*/

SELECT home, COUNT(Corredor) AS Cantidad_participantes, 
	   MIN(Time) as Tiempo_Minimo, Max(Time) AS Tiempo_Maximo, AVG(Time) as Tiempo_Promedio
FROM [Maraton NY]
GROUP BY home

/*CREAR COLUMNAS CON LOS ESTADISTICOS DESCRIPTIVOS, TIEMPO MINIMO Y MAXIMO DE CADA PAIS, ORDENADA POR EL PAIS DE MENOR TIEMPO*/


SELECT home, COUNT(Corredor) AS Cantidad_participantes, 
	   MIN(Time) as Tiempo_Minimo, Max(Time) AS Tiempo_Maximo, AVG(Time) as Tiempo_Promedio
FROM [Maraton NY]
GROUP BY home
ORDER BY Tiempo_Minimo


/*CANTIDAD DE PARTICICPANTES CUYA CANTIDAD ES MAYOR A 1*/

SELECT home, COUNT(Corredor) AS Cantidad_participantes, 
	   MIN(Time) as Tiempo_Minimo, Max(Time) AS Tiempo_Maximo, AVG(Time) as Tiempo_Promedio
FROM [Maraton NY]
GROUP BY home
HAVING COUNT(Corredor)>1
ORDER BY Tiempo_Minimo
