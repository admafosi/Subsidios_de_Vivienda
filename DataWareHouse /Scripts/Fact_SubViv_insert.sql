INSERT INTO DataWareHouseSubViv.dbo.Fact_SubViv
(IdEstado, CodMnpio, CodDepto, IdPrograma, Anio_Asignacion, No_Hogares, Valor_Asignado) 
SELECT Anio_Asignacion AS Fecha_asignacion
 	, (SELECT IdEstado FROM DataWareHouseSubViv.dbo.DIM_EstadoPostulacion WHERE DataWareHouseSubViv.dbo.DIM_EstadoPostulacion = H.EstadoPostulacion)
	, (SELECT CodMnpio FROM DataWareHouseSubViv.dbo.DIM_Mnpio WHERE NomMnpio = H.Mnpio)
	, (SELECT CodDepto FROM DataWareHouseSubViv.dbo.DIM_Deptos WHERE H.NomDepto = H.NomDepto )
	, (SELECT IdPrograma FROM DataWareHouseSubViv.dbo.DIM_Programa WHERE Programa = H.Programa)
	, No_Hogares
	, Valor_Asignado
FROM DataLakeSubViv.dbo.DL_SubViv AS H
