
-- =============================================
-- Author:		Antonieta
-- Create date: 8/5/2023
-- Description:	Cambio de localidad segun el nombre de fantasia
-- =============================================
CREATE PROCEDURE spCambio_Localidad
(
	@NOMBRE_FANTASIA VARCHAR(50),
	@LOCALIDAD VARCHAR(50)
)

AS
BEGIN
	UPDATE [alojamientos-julio-2019]
	SET LOCALIDAD=@LOCALIDAD
	WHERE NOMBRE_FANTASIA=@NOMBRE_FANTASIA


END
