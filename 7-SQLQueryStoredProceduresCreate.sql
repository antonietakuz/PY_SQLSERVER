
-- =============================================
-- Author:		Antonieta
-- Create date: 08/05/2023
-- Description:	Mostrar los registors de la Tabla Actividad extra cuyo valor en la columna Actividad sea @Actividad 
-- =============================================
CREATE PROCEDURE spAlumnos_Clase_Extra
(
	@Actividad VARCHAR(50)
)

AS
BEGIN
	SELECT *
	FROM Actividad_Extra
	WHERE Actividad = @Actividad
END