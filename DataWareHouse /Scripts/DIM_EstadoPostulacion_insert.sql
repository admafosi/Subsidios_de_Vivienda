-- Sentencias SQL para la carga de los datos a la tabla DIM_EstadoPostulacion
-- Extraida de la información almacenada en la tabla DL.SubViv del DataLakeSubViv

INSERT INTO DataWareHouseSubViv.dbo.DIM_EstadoPostulacion
(Estado_postulacion)
SELECT DISTINCT Estado_postulacion
FROM DataLakeSubViv.dbo.DL_SubViv
ORDER BY Estado_postulacion
