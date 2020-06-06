# Zapatería el Zapato Roto 👞 👟 👠 👡 👢

Base de datos de ejemplo para ayuda en facturación de una Zapatería.

## Problema a Resolver.  🔧 💣 🔨

Diseñar una Base de datos que permita registrar la facturación de los productos de la zapatería "El zapato roto", registrar productos, clientes, facturas e inventario.

* Los productos tendrán como mínimo: Nombre, presentación, valor. 
* Los clientes tendrán como mínimo: Identificación, nombre, país.
* El inventario tendrá como mínimo: producto, tipo de movimiento (entrada o salida), fecha, cantidad.
* La facturación debe tener como mínimo: la información del cliente, los productos comprados, impuestos, descuentos, valor a pagar.
* Esta base de datos debe estar en 3ra forma normal.

## Comenzando 🚀

El repositorio contiene tres archivos sql:

* creacion_Zapateria.sql, que contiene los scripts para la creación de la estructura de la base de datos(Tablas y relaciones).
* poblado_Zapateria.sql, que contiene los scripts para la inserción de datos de prueba en la distintas tablas.
* consulta_Zapateria.sql, que contiene las consultas que responden a las siguientes interogantes.

1. Consulta la facturación de un cliente en específico.
2. Consulta la facturación de un producto en específico.
3. Consulta la facturación de un rango de fechas.
4. De la facturación, consulta los clientes únicos (es decir, se requiere el listado de los clientes que han comprado por lo menos una vez, pero en el listado no se deben repetir los clientes)

### Pre-requisitos 📋

Se requiere Microsoft SQL Server(2016 de preferencia), con Microsoft SQL Server Management Studio para la ejecución de los scripts.

## Autor ✒️

* **Pedro Bryan Cajavilca Huaytalla** - *Trabajo Inicial* - [pedroBryanCH](https://github.com/pedroBryanCH)

## Licencia 📄

Estos scripts están libre de uso, como un pequeño aporte y está sujeto a sugerencias de mejora.
---

## Agradecimientos 🎁

* Agradezco a [edteam](https://ed.team/) por la oportunidad y el planteamiento del ejercicio muy práctico.

⌨️ con ❤️ por [pedroBryanCH](https://github.com/pedroBryanCH) 😊