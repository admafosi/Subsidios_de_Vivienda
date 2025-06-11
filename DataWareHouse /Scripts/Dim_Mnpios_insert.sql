-- Sentencias SQL para la carga de los datos en la dimensión Dim_Mnpios

INSERT INTO DataWareHouseSubViv.dbo.DIM_Mnpios
(CodMnpio, NomMnpio, CodDepto, NomDepto, TipoMnpio)
SELECT CodMnpio, NomMnpio, CodDepto, NomDepto, TipoMnpio
FROM DataLakeSubViv.dbo.DL_Mnpios