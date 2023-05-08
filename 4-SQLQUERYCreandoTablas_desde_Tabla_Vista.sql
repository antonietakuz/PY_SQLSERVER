
/*CREAR UNA VISTA SELECCIONANDO DE UNA TABLA LOS CORREDORES MEXICANOS*/
CREATE VIEW Mexicanos AS
SELECT [Corredor],[place]
      ,[gender]
      ,[age]
      ,[time]
FROM [Maraton].[dbo].[Maraton NY]
WHERE home= 'MEX'

/*MUESTRA LA INFORMACION DE LA VISTA*/
SELECT *
FROM Mexicanos

/*ARMA UNA TABLA CON LA VISTA*/
SELECT * INTO Tabla_Mexicanos
FROM Mexicanos

/*MOSTRAR LA INFORMACION EN LA TABLA MEXICANOS*/
SELECT * 
FROM Tabla_Mexicanos



