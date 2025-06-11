-- Base de datos DataWareHouseSubViv
-- Sentencias para la creación de la Dimensión DIM_Mnpios 
-- Define la llave primaria como CodMnpio
-- Define la llave foránea entre DIM_Mnpios y DIM_Deptos

CREATE TABLE DataWareHouseSubViv.dbo.DIM_Mnpios (
    CodMnpio INT NOT NULL,
    NomMnpio NVARCHAR(100),
    CodDepto INT NOT NULL,
    NomDepto NVARCHAR(60),
    TipoMnpio NVARCHAR(30), 
    CONSTRAINT DIM_Mnpios_PK PRIMARY KEY (CodMnpio),
    CONSTRAINT DIM_Mnpios_DIM_Deptos_FK FOREIGN KEY (CodDepto) REFERENCES DataWareHouseSubViv.dbo.DIM_Deptos(CodDepto)
);

