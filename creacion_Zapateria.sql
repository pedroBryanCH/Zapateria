/*
Fecha de creacion: 06/06/2020
Autor: Pedro Bryan Cajavilca Huaytalla
*/

USE master ;
GO

/*Creacion de base de datos Zapateria*/
CREATE DATABASE Zapateria;  
GO

USE Zapateria;
GO

/*Creacion de tabla Cliente*/

CREATE TABLE Cliente
(
ID_Cli char(8) NOT NULL,
Nombre varchar(30) NOT NULL,
ID_Pais int NOT NULL,
CONSTRAINT PK_Cliente_ID_Cli PRIMARY KEY (ID_Cli)
);
GO

/*Creacion de tabla Tipo_inv */

CREATE TABLE Tipo_inv
(
COD_TI bit NOT NULL,
Tipo varchar(7) NOT NULL,
CONSTRAINT PK_Tipo_inv_COD_TI PRIMARY KEY (COD_TI)
);
GO

/*Creacion de tabla Pais */

CREATE TABLE Pais
(
ID_PAIS int IDENTITY(1,1) NOT NULL,
PAIS varchar(30) UNIQUE NOT NULL,
CONSTRAINT PK_Pais_ID_PAIS PRIMARY KEY (ID_PAIS)
);
GO

/*Creacion de tabla Producto*/

CREATE TABLE Producto
(
COD_PROD char(6) NOT NULL,
Nombre varchar(30) NOT NULL,
Presentacion varchar(20) NOT NULL,
Valor int NOT NULL,
CONSTRAINT PK_Producto_COD_PROD PRIMARY KEY (COD_PROD)
);
GO

/*Creacion de la tabla Factura*/

CREATE TABLE Factura
(
NRO_Factura varchar(12) NOT NULL,
ID_Cli char(8) NOT NULL,
FECHA datetime NOT NULL,
CONSTRAINT PK_Producto_NRO_Factura PRIMARY KEY (NRO_Factura)
);
GO

/*Creacion de la tabla Factura_Producto*/
CREATE TABLE Factura_Producto
(
COD_PROD char(6) NOT NULL,
NRO_Factura varchar(12) NOT NULL,
Cantidad int NOT NULL,
CONSTRAINT PK_Factura_Producto_COD_PROD_NRO_Factura PRIMARY KEY (COD_PROD, NRO_Factura)
);
GO

/*Creacion de la tabla Inventario*/

CREATE TABLE Inventario
(
COD_Inventario varchar(30) NOT NULL,
COD_PROD char(6) NOT NULL,
COD_TI bit NOT NULL,
Fecha datetime NOT NULL,
Cantidad int,
CONSTRAINT PK_Inventario_COD_Inventario PRIMARY KEY (COD_Inventario)
);
GO

/*Creacion de relaciones entre tablas*/

/* Factura-Cliente */

ALTER TABLE Zapateria.dbo.Factura
ADD CONSTRAINT FK_Factura_ID_Cli FOREIGN KEY (ID_Cli)
REFERENCES Zapateria.dbo.Cliente (ID_Cli)
ON DELETE CASCADE
ON UPDATE CASCADE
;
GO

/* Inventario-Producto*/

ALTER TABLE Zapateria.dbo.Inventario
ADD CONSTRAINT FK_Inventario_COD_PROD FOREIGN KEY (COD_PROD)
REFERENCES Zapateria.dbo.Producto (COD_PROD)
ON DELETE CASCADE
ON UPDATE CASCADE
;
GO

/* Inventario-Tipo_inv*/

ALTER TABLE Zapateria.dbo.Inventario
ADD CONSTRAINT FK_Inventario_COD_TI FOREIGN KEY (COD_TI)
REFERENCES Zapateria.dbo.Tipo_inv (COD_TI)
ON DELETE CASCADE
ON UPDATE CASCADE
;
GO

/* Factura_Producto-Factura*/

ALTER TABLE Zapateria.dbo.Factura_Producto
ADD CONSTRAINT FK_Factura_Producto_NRO_Factura FOREIGN KEY (NRO_Factura)
REFERENCES Zapateria.dbo.Factura (NRO_Factura)
ON DELETE CASCADE
ON UPDATE CASCADE
;
GO

/* Factura_Producto-Producto*/

ALTER TABLE Zapateria.dbo.Factura_Producto
ADD CONSTRAINT FK_Factura_Producto_COD_PROD FOREIGN KEY (COD_PROD)
REFERENCES Zapateria.dbo.Producto (COD_PROD)
ON DELETE CASCADE
ON UPDATE CASCADE
;
GO

/*Cliente-Pais*/

ALTER TABLE Zapateria.dbo.Cliente
ADD CONSTRAINT FK_Cliente_ID_Pais FOREIGN KEY (ID_Pais)
REFERENCES Zapateria.dbo.Pais (ID_Pais)
ON DELETE CASCADE
ON UPDATE CASCADE
;