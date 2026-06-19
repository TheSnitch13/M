-- 1. Crear la base de datos para almacenar la info del LLM
CREATE DATABASE SistemaErrores;
GO

-- 2. Cambiar el contexto a la base de datos que acabamos de crear
USE SistemaErrores;
GO

-- 3. Crear la tabla con las restricciones requeridas
CREATE TABLE ErroresLLM (
    ID INT IDENTITY(1,1) PRIMARY KEY, -- ID único autoincrementable
    CodigoError VARCHAR(50) NOT NULL UNIQUE,
    DescripcionBreve VARCHAR(250) NOT NULL,
    Categoria VARCHAR(100) NOT NULL,
    SolucionTexto VARCHAR(MAX) NOT NULL,
    EmbeddingJson VARCHAR(MAX) NOT NULL
);
GO