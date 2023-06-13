INSERT INTO db_factura.tbl_cliente
(cliente_rsocial, cliente_ruc, cliente_direccion, cliente_estado, cliente_fecha_log, cliente_usuario_log)
values
('PANADERIA LAS AMERICAS', '2020202020', 'CALLE NUEVA 123', '1', CURRENT_TIMESTAMP, 'ADMIN'),
('LIBRERIA LAURITA S.A.C', '1010101010', 'CALLE ANTIGUA 123', '1', CURRENT_TIMESTAMP, 'ADMIN')


ALTER TABLE db_factura.tbl_producto 
CHANGE producto_codigo producto_descripcion varchar(255) 
CHARACTER SET utf8 COLLATE utf8_bin NOT NULL;

INSERT INTO db_factura.tbl_producto
(producto_descripcion, producto_precio, producto_estado, producto_fecha_log, producto_usuario_log)
values
('XIOMI REDMI 12', 1500, '1', CURRENT_TIMESTAMP, 'ADMIN'),
('MOTOROLA MOTO G10', 1000, '1', CURRENT_TIMESTAMP, 'ADMIN');

INSERT INTO db_factura.tbl_factura_cab
(factura_cab_serie, factura_cab_nro, factura_cab_fvencimiento, factura_cab_femision,
factura_cab_tipo_moneda, factura_cab_observacion, 
factura_cab_valorventa, factura_cab_valorigv, factura_cab_valortotal, factura_cab_estado, factura_cab_fecha_log, factura_cab_usuario_log, cliente_id)
values
('F01', '001', '2023-06-30', '2023-06-09', 'SOLES', '', 1000, 180, 1180, '1', CURRENT_TIMESTAMP, 'ADMIN', 1),
('F01', '002', '2023-06-30', '2023-06-09', 'SOLES', '', 2500, 450, 2950, '1', CURRENT_TIMESTAMP, 'ADMIN', 1);

INSERT INTO db_factura.tbl_factura_det
(factura_det_precio, factura_det_cantidad, 
factura_det_subtotal, factura_det_fecha_log, factura_det_usuario_log, producto_id, factura_cab_id)
values
(1000, 1, 1000, CURRENT_TIMESTAMP, 'ADMIN', 1, 1),
(1500, 1, 1500, CURRENT_TIMESTAMP, 'ADMIN', 2, 2),
(1000, 1, 1000, CURRENT_TIMESTAMP, 'ADMIN', 3, 2);




