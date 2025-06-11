-- Base de datos DataWareHouseSubViv
-- Sentencias para la creación de la Dimensión DIM_EstadoPostulacion 
-- Incluye una columna identificador entero (IdEstado)
-- Define la llave primaria como IdEstado

CREATE TABLE DataWareHouseSubViv.dbo.DIM_EstadoPostulacion (
	IdEstado int IDENTITY(1,1) NOT NULL,
	Estado_postulacion nvarchar(200) NOT NULL,
	CONSTRAINT DIM_EstadoPostulacion_PK PRIMARY KEY (IdEstado)
);
