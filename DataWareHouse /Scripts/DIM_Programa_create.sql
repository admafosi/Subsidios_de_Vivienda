-- Base de datos DataWareHouseSubViv
-- Sentencias para la creación de la Dimensión DIM_Programa
-- Incluye columna identificador entero (IdPrograma) 
-- Define la llave primaria como IdPrograma

CREATE TABLE DataWareHouseSubViv.dbo.DIM_Programa (
	IdPrograma int IDENTITY(1,1) NOT NULL,
	Programa nvarchar(60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT DIM_Programa_PK PRIMARY KEY (IdPrograma)
);