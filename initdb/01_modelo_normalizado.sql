CREATE SCHEMA IF NOT EXISTS normalizacion_ventas;

SET search_path TO normalizacion_ventas;

CREATE TABLE clientes (
    cliente_doc VARCHAR(20) PRIMARY KEY,
    cliente_nombre VARCHAR(100) NOT NULL,
    cliente_email VARCHAR(120),
    cliente_telefono VARCHAR(30),
    cliente_direccion VARCHAR(150),
    cliente_ciudad VARCHAR(80)
);

CREATE TABLE vendedores (
    vendedor_id VARCHAR(10) PRIMARY KEY,
    vendedor_nombre VARCHAR(100) NOT NULL,
    vendedor_zona VARCHAR(80)
);

CREATE TABLE categorias (
    categoria_id SERIAL PRIMARY KEY,
    categoria_nombre VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE productos (
    producto_codigo VARCHAR(10) PRIMARY KEY,
    producto_nombre VARCHAR(100) NOT NULL,
    categoria_id INT NOT NULL,
    FOREIGN KEY (categoria_id)
        REFERENCES categorias(categoria_id)
);

CREATE TABLE ventas (
    venta_id VARCHAR(10) PRIMARY KEY,
    fecha_venta DATE NOT NULL,
    cliente_doc VARCHAR(20) NOT NULL,
    vendedor_id VARCHAR(10) NOT NULL,
    metodo_pago VARCHAR(80),
    entidad_pago VARCHAR(80),

    FOREIGN KEY (cliente_doc)
        REFERENCES clientes(cliente_doc),

    FOREIGN KEY (vendedor_id)
        REFERENCES vendedores(vendedor_id)
);

CREATE TABLE detalle_venta (
    venta_id VARCHAR(10),
    producto_codigo VARCHAR(10),

    cantidad INT NOT NULL
        CHECK (cantidad > 0),

    precio_unitario NUMERIC(12,2) NOT NULL
        CHECK (precio_unitario >= 0),

    descuento NUMERIC(12,2)
        DEFAULT 0
        CHECK (descuento >= 0),

    PRIMARY KEY (venta_id, producto_codigo),

    FOREIGN KEY (venta_id)
        REFERENCES ventas(venta_id),

    FOREIGN KEY (producto_codigo)
        REFERENCES productos(producto_codigo)
);