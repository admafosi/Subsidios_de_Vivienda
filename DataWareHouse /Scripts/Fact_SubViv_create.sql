-- Base de datos DataWareHouseSubViv
-- Sentencias para la creación de la tabla hechos Fac_SubViv 
-- Establece llaves foráneas con las dimensiones DIM_Deptos, DIM_Mnpios, DIM_EstadoPostulación y DIM_Programa

CREATE TABLE DataWareHouseSubViv.dbo.Fact_SubViv (
	CodDepto int NULL,
	CodMnpio int NULL,
	IdPrograma int NULL,
	IdEstado int NULL,
	Año_Asignacion int NULL,
	No_Hogares int NULL,
	Valor_Asignado real NULL,
	CONSTRAINT DIM_Munpios_DIM_Deptos_FK FOREIGN KEY (CodDepto) REFERENCES DataWareHouseSubViv.dbo.DIM_Deptos(CodDepto),
	CONSTRAINT FK__Fact_SubV__CodDe__58D1301D FOREIGN KEY (CodDepto) REFERENCES DataWareHouseSubViv.dbo.DIM_Deptos(CodDepto),
	CONSTRAINT FK__Fact_SubV__IdEst__5BAD9CC8 FOREIGN KEY (IdEstado) REFERENCES DataWareHouseSubViv.dbo.DIM_EstadoPostulacion(IdEstado),
	CONSTRAINT FK__Fact_SubV__IdPro__5AB9788F FOREIGN KEY (IdPrograma) REFERENCES DataWareHouseSubViv.dbo.DIM_Programa(IdPrograma)
);