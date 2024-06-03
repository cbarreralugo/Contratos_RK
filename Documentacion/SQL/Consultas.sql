use app_contratos;
--select * from tb_ctr_configuracion_sistema_w --configuraciones y permisos al sistema
--select top(1) * from tb_ctr_contratos_c -- catalogo de contratos
--select * from tb_ctr_email_usuarios_w --usuarios registrados en el sistema
--select top(1) * from tb_ctr_fuentes_c --hojas de origen de los catalogos
--select * from tb_ctr_log_w --log de actividades
--select * from tb_ctr_rol_usuario_c -- roles que acepta el sistema
--select top(1) * from tb_ctr_tipo_cliente_c --catalogo de clientes 
--select * from tb_ctr_usuario_w --registro de usuarios
 
select * from tb_ctr_tipo_contrato_rk_c 
select * from tb_ctr_tipo_bo_rk_c
select * from tb_ctr_tipo_golden_parent_rk_c
select * from tb_ctr_tipo_group_rk_c
select * from tb_ctr_port_group_rk_w