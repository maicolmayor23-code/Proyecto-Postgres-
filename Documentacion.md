# Mini Proyecto - Normalización de Base de Datos para un Sistema de Ventas

## Autor

**Nombre:** Maicol Mayor

## Descripción

Este proyecto tiene como objetivo normalizar una base de datos de ventas a partir de una tabla no normalizada (`ventas_crudas`). Para ello se aplicaron la Primera Forma Normal (1FN), Segunda Forma Normal (2FN) y Tercera Forma Normal (3FN), eliminando redundancias, dependencias parciales y dependencias transitivas.

El resultado es una base de datos relacional implementada en PostgreSQL, con claves primarias, claves foráneas y restricciones que garantizan la integridad de los datos.

---

## Tecnologías utilizadas

- PostgreSQL
- pgAdmin 4
- diagrams.net (Draw.io) para el diagrama Entidad-Relación

---

## Estructura del proyecto

```
mini-proyecto-normalizacion-ventas/
│
├── README.md
├── informe_normalizacion.pdf
├── diagrama_er.png
│
└── sql/
    ├── 00_tabla_cruda.sql
    ├── 01_modelo_normalizado.sql
    ├── 02_datos_normalizados.sql
    └── 03_consultas_validacion.sql
```

---

## Orden de ejecución

Ejecutar los archivos en el siguiente orden:

1. `00_tabla_cruda.sql`
   - Crea la tabla original sin normalizar.
   - Inserta los datos iniciales del caso de estudio.

2. `01_modelo_normalizado.sql`
   - Crea el esquema normalizado.
   - Crea las tablas:
     - Clientes
     - Vendedores
     - Categorías
     - Productos
     - Ventas
     - Detalle_Venta

3. `02_datos_normalizados.sql`
   - Inserta los datos normalizados.
   - Evita la duplicación de clientes, vendedores, categorías y productos.

4. `03_consultas_validacion.sql`
   - Ejecuta las consultas para verificar el correcto funcionamiento del modelo.

---

## Modelo de datos

El modelo final está compuesto por las siguientes entidades:

- Clientes
- Vendedores
- Categorías
- Productos
- Ventas
- Detalle_Venta

Las relaciones entre las tablas se implementaron mediante claves foráneas, garantizando la integridad referencial.

---

## Restricciones implementadas

Se utilizaron las siguientes restricciones en PostgreSQL:

- PRIMARY KEY
- FOREIGN KEY
- NOT NULL
- UNIQUE
- CHECK

Estas restricciones ayudan a mantener la consistencia e integridad de la información almacenada.

---

## Consultas de validación

El proyecto incluye las siguientes consultas SQL:

- Calcular el total de cada venta a partir del detalle.
- Identificar los productos más vendidos.
- Consultar las ventas realizadas por cada vendedor.
- Consultar el historial de compras por cliente.
- Verificar que no existan registros huérfanos en la tabla `detalle_venta`.

---

## Conclusiones

La aplicación de las tres formas normales permitió eliminar redundancias, mejorar la organización de los datos y garantizar la integridad referencial del sistema. El modelo obtenido facilita el mantenimiento de la información y optimiza la ejecución de consultas sobre la base de datos.
