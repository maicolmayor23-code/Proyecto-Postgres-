````markdown
# 📚 Mini Proyecto - Normalización de Base de Datos para un Sistema de Ventas

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-blue?logo=postgresql)
![SQL](https://img.shields.io/badge/SQL-Normalización-success)
![Estado](https://img.shields.io/badge/Estado-Completado-brightgreen)
![Licencia](https://img.shields.io/badge/Licencia-Académico-lightgrey)

Proyecto desarrollado como evidencia de aprendizaje para aplicar las técnicas de **normalización de bases de datos** (1FN, 2FN y 3FN) sobre un sistema de ventas, implementando posteriormente el modelo en PostgreSQL.

---

## 📑 Tabla de contenido

- [Descripción](#-descripción)
- [Objetivos](#-objetivos)
- [Tecnologías utilizadas](#-tecnologías-utilizadas)
- [Estructura del proyecto](#-estructura-del-proyecto)
- [Modelo implementado](#-modelo-implementado)
- [Ejecución](#-ejecución)
- [Consultas de validación](#-consultas-de-validación)
- [Resultados](#-resultados)
- [Autor](#-autor)

---

# 📖 Descripción

El proyecto parte de una tabla denominada **ventas_crudas**, la cual presenta problemas de redundancia, datos repetidos y atributos multivaluados.

A partir de ella se realizó el proceso de normalización aplicando:

- Primera Forma Normal (1FN)
- Segunda Forma Normal (2FN)
- Tercera Forma Normal (3FN)

Finalmente se implementó el modelo relacional en PostgreSQL y se validó mediante consultas SQL.

---

# 🎯 Objetivos

- Analizar una tabla no normalizada.
- Identificar dependencias funcionales.
- Aplicar 1FN, 2FN y 3FN.
- Diseñar un modelo Entidad-Relación.
- Implementar el modelo en PostgreSQL.
- Validar el funcionamiento mediante consultas SQL.

---

# 🛠 Tecnologías utilizadas

- PostgreSQL
- pgAdmin 4
- SQL
- Draw.io (diagrams.net)
- Git & GitHub

---

# 📂 Estructura del proyecto

```text
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
````

---

# 🗄 Modelo implementado

El modelo final está compuesto por las siguientes entidades:

* Clientes
* Vendedores
* Categorías
* Productos
* Ventas
* Detalle_Venta

El modelo garantiza la integridad referencial mediante claves primarias y claves foráneas.

---

# ▶ Ejecución

Ejecutar los archivos en el siguiente orden:

### 1️⃣ Tabla original

```sql
00_tabla_cruda.sql
```

Crea la tabla original con los datos suministrados en el caso de estudio.

---

### 2️⃣ Modelo normalizado

```sql
01_modelo_normalizado.sql
```

Crea:

* Schema
* Tablas
* Claves primarias
* Claves foráneas
* Restricciones

---

### 3️⃣ Datos normalizados

```sql
02_datos_normalizados.sql
```

Inserta la información normalizada evitando registros duplicados.

---

### 4️⃣ Validación

```sql
03_consultas_validacion.sql
```

Ejecuta las consultas para comprobar el correcto funcionamiento del modelo.

---

# 🔎 Consultas de validación

El proyecto incluye las siguientes consultas:

* Total calculado por cada venta.
* Productos más vendidos.
* Ventas realizadas por vendedor.
* Historial de compras por cliente.
* Verificación de registros huérfanos.

---

# ✅ Resultados

Con la normalización se logró:

* Eliminar atributos multivaluados.
* Reducir la redundancia de datos.
* Eliminar anomalías de inserción, actualización y eliminación.
* Garantizar la integridad referencial.
* Obtener un modelo relacional organizado y escalable.

---

# 👨‍💻 Autor

**Maicol Mayor**

Ingeniería de Software

Proyecto desarrollado con fines académicos.

```
```
