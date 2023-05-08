USE DB_PYTHON

/*Crea una tabla vacia*/

CREATE TABLE Exportaciones(
	Material VARCHAR(255),
	Sector VARCHAR(255),
	Monto_Exportacion BIGINT,
	Pais VARCHAR(255)
	);

/* IMPORTA REGISTROS DE UN CSV EN UNA TABLA DE SQL*/

BULK INSERT Exportaciones
FROM 'C:/Users/pc/Desktop/rociochavez/Rocio-Chavez-youtube-Files-master/Exportaciones Mexico varios paises 2018.csv'
WITH
(
FIELDTERMINATOR =',',
ROWTERMINATOR = '\n',
FIRSTROW= 2
)

/*MOSTRAR LOS 10 PRIMEROS REGISTOS*/
SELECT TOP (10) [Material]
      ,[Sector]
      ,[Monto_Exportacion]
      ,[Pais]
  FROM [DB_PYTHON].[dbo].[Exportaciones]