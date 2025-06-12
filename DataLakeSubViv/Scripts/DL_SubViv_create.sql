-- DataLakeSubViv.dbo.DL_SubViv definition
-- DROP TABLE DataLakeSubViv.dbo.DL_SubViv;

CREATE TABLE DataLakeSubViv.dbo.DL_SubViv (
	NomDepto nvarchar(60),
	CodDepto int NULL,
	NomMnpio varchar(60),
	CodMnpio int NULL,
	Programa nvarchar(60),
	Año_asignacion int NULL,
	Estado_postulacion nvarchar(150),
	No_hogares int NULL,
	Valor_asignado real NULL
);