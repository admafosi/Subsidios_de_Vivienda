-- Base de datos DataWareHouseSubViv
-- Sentencias para la creación de la Dimensión DIM_Deptos 
-- Define la llave primaria como CodDepto

CREATE TABLE DataWareHouseSubViv.dbo.DIM_Deptos (
	CodDepto int NOT NULL,
	NomDepto nvarchar(60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT DIM_Deptos_PK PRIMARY KEY (CodDepto)
);