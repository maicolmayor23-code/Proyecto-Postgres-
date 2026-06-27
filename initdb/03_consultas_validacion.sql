-- ==========================================
-- CONSULTA 1: Total calculado por venta
-- ==========================================

SELECT
    venta_id,
    SUM((cantidad * precio_unitario) - descuento) AS total_calculado
FROM normalizacion_ventas.detalle_venta
GROUP BY venta_id;

--------------------------------------------------

-- ==========================================
-- CONSULTA 2: Productos más vendidos
-- ==========================================

SELECT
    p.producto_codigo,
    p.producto_nombre,
    SUM(d.cantidad) AS unidades_vendidas
FROM normalizacion_ventas.productos p
JOIN normalizacion_ventas.detalle_venta d
    ON p.producto_codigo = d.producto_codigo
GROUP BY
    p.producto_codigo,
    p.producto_nombre
ORDER BY unidades_vendidas DESC;

--------------------------------------------------

-- ==========================================
-- CONSULTA 3: Ventas por vendedor
-- ==========================================

SELECT
    v.vendedor_id,
    ve.vendedor_nombre,
    COUNT(DISTINCT v.venta_id) AS cantidad_ventas,
    SUM((d.cantidad * d.precio_unitario) - d.descuento) AS valor_total
FROM normalizacion_ventas.ventas v
JOIN normalizacion_ventas.vendedores ve
    ON v.vendedor_id = ve.vendedor_id
JOIN normalizacion_ventas.detalle_venta d
    ON v.venta_id = d.venta_id
GROUP BY
    v.vendedor_id,
    ve.vendedor_nombre;

--------------------------------------------------

-- ==========================================
-- CONSULTA 4: Historial de compras por cliente
-- ==========================================

SELECT
    c.cliente_doc,
    c.cliente_nombre,
    v.venta_id,
    v.fecha_venta,
    p.producto_nombre,
    d.cantidad
FROM normalizacion_ventas.clientes c
JOIN normalizacion_ventas.ventas v
    ON c.cliente_doc = v.cliente_doc
JOIN normalizacion_ventas.detalle_venta d
    ON v.venta_id = d.venta_id
JOIN normalizacion_ventas.productos p
    ON d.producto_codigo = p.producto_codigo
ORDER BY
    c.cliente_doc,
    v.fecha_venta;

--------------------------------------------------

-- ==========================================
-- CONSULTA 5: Verificar registros huérfanos
-- ==========================================

SELECT *
FROM normalizacion_ventas.detalle_venta d
LEFT JOIN normalizacion_ventas.ventas v
    ON d.venta_id = v.venta_id
LEFT JOIN normalizacion_ventas.productos p
    ON d.producto_codigo = p.producto_codigo
WHERE
    v.venta_id IS NULL
    OR p.producto_codigo IS NULL;