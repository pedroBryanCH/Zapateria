USE Zapateria;
GO

/*Consulta la facturación de un cliente en específico.*/

SELECT
F.NRO_Factura FACTURA,
C.Nombre CLIENTE,
P.Nombre PRODUCTO,
P.Valor [PRECIO UNITARIO],
FP.Cantidad CANTIDAD,
FP.Cantidad * P.VALOR IMPORTE
FROM
Factura F
INNER JOIN Cliente C 
ON F.ID_Cli = C.ID_Cli
INNER JOIN Factura_Producto FP 
ON F.NRO_Factura = FP.NRO_Factura
INNER JOIN Producto P 
ON P.COD_PROD = FP.COD_PROD
WHERE C.ID_Cli = 44587896
;
SELECT
SUM(FP.Cantidad * P.VALOR) SUBTOTAL,
SUM(FP.Cantidad * P.VALOR *0.18) IMPUESTO,
SUM(FP.Cantidad * P.VALOR * 0.1) DESCUENTO,
SUM(FP.Cantidad * P.VALOR * 1.08) TOTAL
FROM
Factura F
INNER JOIN Cliente C 
ON F.ID_Cli = C.ID_Cli
INNER JOIN Factura_Producto FP 
ON F.NRO_Factura = FP.NRO_Factura
INNER JOIN Producto P 
ON P.COD_PROD = FP.COD_PROD
WHERE C.ID_Cli = 44587896
;
GO

/*Consulta la facturación de un producto en específico.*/

SELECT
F.NRO_Factura FACTURA,
C.Nombre CLIENTE,
P.Nombre PRODUCTO,
P.Valor [PRECIO UNITARIO],
FP.Cantidad CANTIDAD,
FP.Cantidad * P.VALOR IMPORTE
FROM
Factura F
INNER JOIN Cliente C 
ON F.ID_Cli = C.ID_Cli
INNER JOIN Factura_Producto FP 
ON F.NRO_Factura = FP.NRO_Factura
INNER JOIN Producto P 
ON P.COD_PROD = FP.COD_PROD
WHERE P.COD_PROD = 'AC-001'
;


SELECT
SUM(FP.Cantidad * P.VALOR) SUBTOTAL,
SUM(FP.Cantidad * P.VALOR *0.18) IMPUESTO,
SUM(FP.Cantidad * P.VALOR * 0.1) DESCUENTO,
SUM(FP.Cantidad * P.VALOR * 1.08) TOTAL
FROM
Factura F
INNER JOIN Cliente C 
ON F.ID_Cli = C.ID_Cli
INNER JOIN Factura_Producto FP 
ON F.NRO_Factura = FP.NRO_Factura
INNER JOIN Producto P 
ON P.COD_PROD = FP.COD_PROD
WHERE P.COD_PROD = 'AC-001'
;

/*Consulta la facturación de un rango de fechas.*/

SELECT
F.NRO_Factura FACTURA,
F.FECHA,
C.Nombre CLIENTE,
P.Nombre PRODUCTO,
P.Valor [PRECIO UNITARIO],
FP.Cantidad CANTIDAD,
FP.Cantidad * P.VALOR IMPORTE
FROM
Factura F
INNER JOIN Cliente C 
ON F.ID_Cli = C.ID_Cli
INNER JOIN Factura_Producto FP 
ON F.NRO_Factura = FP.NRO_Factura
INNER JOIN Producto P 
ON P.COD_PROD = FP.COD_PROD
WHERE F.FECHA BETWEEN '2018-05-06' AND '2018-05-08'
ORDER BY F.FECHA ASC
;
SELECT
SUM(FP.Cantidad * P.VALOR) SUBTOTAL,
SUM(FP.Cantidad * P.VALOR *0.18) IMPUESTO,
SUM(FP.Cantidad * P.VALOR * 0.1) DESCUENTO,
SUM(FP.Cantidad * P.VALOR * 1.08) TOTAL
FROM
Factura F
INNER JOIN Cliente C 
ON F.ID_Cli = C.ID_Cli
INNER JOIN Factura_Producto FP 
ON F.NRO_Factura = FP.NRO_Factura
INNER JOIN Producto P 
ON P.COD_PROD = FP.COD_PROD
WHERE F.FECHA BETWEEN '2018-05-06' AND '2018-05-08'
;
GO

/*De la facturación, consulta los clientes únicos (es decir,
se requiere el listado de los clientes que han comprado por lo menos una vez,
pero en el listado no se deben repetir los clientes)*/

SELECT
DISTINCT C.ID_Cli DNI,
C.Nombre CLIENTE,
P.Pais PAÍS
FROM Cliente C
INNER JOIN Factura F
ON F.ID_Cli = C.ID_Cli
INNER JOIN Pais P
ON P.ID_Pais = C.ID_Pais
;