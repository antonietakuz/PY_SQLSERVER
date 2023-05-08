-- =============================================
-- Author:		Antonieta
-- Create date: 08/05/2023
-- Description:	Modifica un stored procedure, los registors de la Tabla Actividad extra cuyo valor en la columna Actividad sea @Actividad ordenada por nombre
--================================================


ALTER PROCEDURE spAlumnos_Clase_Extra
(
	@Actividad VARCHAR(50)
	
)

AS
BEGIN

	SELECT *
	FROM Actividades_Extra
	WHERE Actividad = @Actividad
	ORDER BY Nombre

END