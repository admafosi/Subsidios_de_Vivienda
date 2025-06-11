-- Sentencias SQL para la carga de los datos en la dimensión Dim_Deptos

INSERT INTO DataWareHouseSubViv.dbo.DIM_Deptos
(CodDepto, NomDepto)
SELECT CodDepto, NomDepto
FROM DataLakeSubViv.dbo.DL_Deptos