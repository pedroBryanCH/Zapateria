/*
Poblado de Tablas
*/


USE Zapateria;
GO

/*Poblado de tabla Pais*/

INSERT INTO Pais VALUES
('Perú'),
('Colombia'),
('Bolivia'),
('Brasil'),
('Venezuela'),
('Argentina'),
('Uruguay'),
('Paraguay'),
('Ecuador'),
('Chile')
;
GO

/*Poblado de tabla Tipo_inv*/
INSERT INTO Tipo_inv VALUES
(0, 'Entrada'),
(1, 'Salida')
;
GO

/*Poblado de tabla Cliente*/
INSERT INTO Cliente VALUES
('16151254','Lucía',1),
('16128478','Valeria',5),
('44587896','Jorge',2),
('13124569','Úrsula',4),
('40125489','José',6),
('16205487','Vannesa',9),
('45789621','Pilar',5),
('32145689','Luis',7),
('32154569','Alejandro',2),
('65412352','Elizabeth',4),
('96541235','Daniel',8)
;
GO

/*Poblado de tabla Producto*/
INSERT INTO Producto VALUES
('AC-001','Zapato Caballeros Sport-1','CAJA x 1 PAR',50),
('AC-002','Zapato Caballeros Sport-2','CAJA x 1 PAR',75),
('AC-003','Zapato Caballeros Sport-3','CAJA x 1 PAR',120),
('AD-001','Zapato Damas Formal-1','CAJA x 1 PAR',95),
('AD-002','Zapato Formal-2','CAJA x 1 PAR',140)
;
GO

/*Poblado de tabla Inventario*/
INSERT INTO Inventario VALUES
('A1-0001','AC-001',0,'2018-05-13', 25),
('A1-0002','AD-001',0,'2018-06-15', 25),
('A1-0003','AD-001',1,'2018-06-17', 5),
('A1-0004','AC-001',1,'2018-06-19', 6),
('A1-0005','AD-002',0,'2018-07-03', 35)
;
GO

/*Poblado de tabla Factura*/
INSERT INTO Factura VALUES
('0000-0001','40125489','2018-05-05'),
('0000-0002','13124569','2018-05-06'),
('0000-0003','32145689','2018-05-07'),
('0000-0004','32154569','2018-05-07'),
('0000-0005','44587896','2018-05-07'),
('0000-0006','16128478','2018-05-08'),
('0000-0007','65412352','2018-05-09'),
('0000-0008','16205487','2018-05-10'),
('0000-0009','40125489','2018-05-11'),
('0000-0010','13124569','2018-05-12'),
('0000-0011','44587896','2018-05-13')
;
GO

/*Poblado de Factura_Producto*/
INSERT INTO Factura_Producto VALUES
('AC-002','0000-0001',10),
('AD-001','0000-0001',20),
('AC-003','0000-0002',20),
('AD-001','0000-0002',14),
('AD-002','0000-0002',30),
('AC-001','0000-0003',18),
('AC-002','0000-0003',24),
('AD-002','0000-0003',16),
('AC-002','0000-0004',15),
('AC-003','0000-0004',17),
('AD-001','0000-0004',20),
('AC-003','0000-0005',29),
('AD-001','0000-0005',13),
('AC-002','0000-0006',19),
('AC-003','0000-0006',20),
('AC-001','0000-0007',27),
('AC-002','0000-0007',21),
('AD-002','0000-0007',35),
('AC-003','0000-0008',40),
('AC-001','0000-0009',10),
('AC-003','0000-0009',25),
('AC-001','0000-0010',15),
('AC-002','0000-0010',22),
('AC-003','0000-0010',27),
('AD-001','0000-0011',40)
;