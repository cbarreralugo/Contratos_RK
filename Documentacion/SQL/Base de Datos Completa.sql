USE [app_contratos]
GO
/****** Object:  StoredProcedure [dbo].[sp_GuardarDatos]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_GuardarDatos]
GO
/****** Object:  StoredProcedure [dbo].[sp_guardar_contrato]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_guardar_contrato]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_portgroup_custodio]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_portgroup_custodio]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_obtener_usuarios]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_obtener_usuarios]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_obtener_tipo_golden_parent]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_obtener_tipo_golden_parent]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_obtener_tipo_bo]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_obtener_tipo_bo]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_obtener_sesion]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_obtener_sesion]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_obtener_portafolio_activo_samoa]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_obtener_portafolio_activo_samoa]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_obtener_port_group]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_obtener_port_group]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_obtener_modificar_configuraciones_sistema]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_obtener_modificar_configuraciones_sistema]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_obtener_custodio]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_obtener_custodio]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_obtener_configuraciones_sistema]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_obtener_configuraciones_sistema]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_eliminar_usuario]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_eliminar_usuario]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_eliminar_tipo_golden_parent]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_eliminar_tipo_golden_parent]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_eliminar_tipo_bo]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_eliminar_tipo_bo]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_eliminar_portafolio_activo_samoa]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_eliminar_portafolio_activo_samoa]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_eliminar_port_group]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_eliminar_port_group]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_eliminar_custodio]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_eliminar_custodio]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_crear_usuario]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_crear_usuario]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_crear_tipo_golden_parent]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_crear_tipo_golden_parent]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_crear_tipo_bo]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_crear_tipo_bo]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_crear_portafolio_activo_samoa]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_crear_portafolio_activo_samoa]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_crear_port_group]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_crear_port_group]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_crear_obtener_modificar_tipoCliente]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_crear_obtener_modificar_tipoCliente]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_crear_obtener_modificar_fuentes]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_crear_obtener_modificar_fuentes]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_crear_obtener_modificar_contratos]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_crear_obtener_modificar_contratos]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_crear_custodio]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_crear_custodio]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_combo]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_combo]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_actualizar_usuario]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_actualizar_usuario]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_actualizar_tipo_golden_parent]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_actualizar_tipo_golden_parent]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_actualizar_tipo_bo]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_actualizar_tipo_bo]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_actualizar_portafolio_activo_samoa]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_actualizar_portafolio_activo_samoa]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_actualizar_port_group]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_actualizar_port_group]
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_actualizar_custodio]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_ctr_actualizar_custodio]
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_contrato]    Script Date: 03/06/2024 10:21:32 a. m. ******/
DROP PROCEDURE [dbo].[sp_buscar_contrato]
GO
/****** Object:  Table [dbo].[tb_ctr_valor_plantilla_rk_c]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_valor_plantilla_rk_c]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_valor_plantilla_rk_c]
GO
/****** Object:  Table [dbo].[tb_ctr_usuario_w]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_usuario_w]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_usuario_w]
GO
/****** Object:  Table [dbo].[tb_ctr_tipo_valor_rk_c]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_tipo_valor_rk_c]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_tipo_valor_rk_c]
GO
/****** Object:  Table [dbo].[tb_ctr_tipo_group_rk_c]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_tipo_group_rk_c]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_tipo_group_rk_c]
GO
/****** Object:  Table [dbo].[tb_ctr_tipo_golden_parent_rk_c]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_tipo_golden_parent_rk_c]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_tipo_golden_parent_rk_c]
GO
/****** Object:  Table [dbo].[tb_ctr_tipo_custodio_rk_c]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_tipo_custodio_rk_c]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_tipo_custodio_rk_c]
GO
/****** Object:  Table [dbo].[tb_ctr_tipo_contrato_rk_c]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_tipo_contrato_rk_c]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_tipo_contrato_rk_c]
GO
/****** Object:  Table [dbo].[tb_ctr_tipo_cliente_c]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_tipo_cliente_c]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_tipo_cliente_c]
GO
/****** Object:  Table [dbo].[tb_ctr_tipo_bo_rk_c]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_tipo_bo_rk_c]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_tipo_bo_rk_c]
GO
/****** Object:  Table [dbo].[tb_ctr_sistema_c]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_sistema_c]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_sistema_c]
GO
/****** Object:  Table [dbo].[tb_ctr_rol_usuario_c]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_rol_usuario_c]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_rol_usuario_c]
GO
/****** Object:  Table [dbo].[tb_ctr_portafolio_activo_samoa_w]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_portafolio_activo_samoa_w]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_portafolio_activo_samoa_w]
GO
/****** Object:  Table [dbo].[tb_ctr_port_group_rk_w]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_port_group_rk_w]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_port_group_rk_w]
GO
/****** Object:  Table [dbo].[tb_ctr_plantilla_email_w]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_plantilla_email_w]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_plantilla_email_w]
GO
/****** Object:  Table [dbo].[tb_ctr_log_w]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_log_w]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_log_w]
GO
/****** Object:  Table [dbo].[tb_ctr_log_email_w]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_log_email_w]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_log_email_w]
GO
/****** Object:  Table [dbo].[tb_ctr_fuentes_c]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_fuentes_c]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_fuentes_c]
GO
/****** Object:  Table [dbo].[tb_ctr_email_usuarios_w]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_email_usuarios_w]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_email_usuarios_w]
GO
/****** Object:  Table [dbo].[tb_ctr_contratos_c]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_contratos_c]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_contratos_c]
GO
/****** Object:  Table [dbo].[tb_ctr_configuracion_sistema_w]    Script Date: 03/06/2024 10:21:32 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_ctr_configuracion_sistema_w]') AND type in (N'U'))
DROP TABLE [dbo].[tb_ctr_configuracion_sistema_w]
GO
/****** Object:  Table [dbo].[tb_ctr_configuracion_sistema_w]    Script Date: 03/06/2024 10:21:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_configuracion_sistema_w](
	[id_confg] [int] NULL,
	[configuracion] [varchar](150) NULL,
	[varlo] [varchar](max) NULL,
	[estatus] [bit] NULL,
	[id_sistema] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_contratos_c]    Script Date: 03/06/2024 10:21:33 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_contratos_c](
	[id_contratos] [int] NOT NULL,
	[id_tipo_cliente] [int] NULL,
	[cliente] [varchar](max) NULL,
	[contrato] [varchar](max) NOT NULL,
	[nombre_cliente] [varchar](max) NULL,
	[id_fuente] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_email_usuarios_w]    Script Date: 03/06/2024 10:21:34 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_email_usuarios_w](
	[id_email] [int] NULL,
	[nombre_usuario] [varchar](250) NULL,
	[email_usuario] [varchar](300) NULL,
	[id_sistema] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_fuentes_c]    Script Date: 03/06/2024 10:21:34 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_fuentes_c](
	[id_fuente] [int] NULL,
	[nombre_fuente] [varchar](150) NULL,
	[estatus] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_log_email_w]    Script Date: 03/06/2024 10:21:34 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_log_email_w](
	[id_log_email] [int] NULL,
	[id_plantilla] [int] NOT NULL,
	[id_sistema] [int] NULL,
	[id_usuario] [int] NULL,
	[fecha] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_log_w]    Script Date: 03/06/2024 10:21:34 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_log_w](
	[id_log] [int] NULL,
	[id_usuario] [int] NULL,
	[titulo] [varchar](250) NULL,
	[mensaje] [varchar](max) NULL,
	[nombre_equipo] [varchar](150) NULL,
	[fecha] [varchar](30) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_plantilla_email_w]    Script Date: 03/06/2024 10:21:34 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_plantilla_email_w](
	[id_plantilla_email] [int] NULL,
	[id_sistema] [int] NULL,
	[nombre_plantilla] [varchar](50) NULL,
	[para] [varchar](max) NULL,
	[copia] [varchar](max) NULL,
	[asunto] [varchar](500) NULL,
	[mensaje] [varchar](max) NULL,
	[archivoAdjunto] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_port_group_rk_w]    Script Date: 03/06/2024 10:21:34 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_port_group_rk_w](
	[id_port_group] [int] NULL,
	[id_tipo_port] [int] NULL,
	[id_tipo_bo] [int] NULL,
	[activo] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_portafolio_activo_samoa_w]    Script Date: 03/06/2024 10:21:34 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_portafolio_activo_samoa_w](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bo_code] [nvarchar](50) NOT NULL,
	[contrato] [nvarchar](50) NOT NULL,
	[denominacion] [nvarchar](255) NOT NULL,
	[moneda] [nvarchar](10) NOT NULL,
	[numero_contrato] [nvarchar](50) NOT NULL,
	[denominacion_contrato] [nvarchar](255) NOT NULL,
	[fecha_contrato] [nvarchar](10) NOT NULL,
	[tipo_port] [nvarchar](255) NOT NULL,
	[tipo_custodio] [nvarchar](255) NOT NULL,
	[tipo_fondo] [nvarchar](255) NULL,
	[tipo_bo_code] [nvarchar](50) NULL,
	[contrato_externo] [nvarchar](50) NULL,
	[tipo_contrato] [nvarchar](50) NOT NULL,
	[tipo_golden_parent] [nvarchar](255) NOT NULL,
	[external_address] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_rol_usuario_c]    Script Date: 03/06/2024 10:21:34 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_rol_usuario_c](
	[id_rol] [int] NULL,
	[nombre_rol] [varchar](150) NULL,
	[estatus] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_sistema_c]    Script Date: 03/06/2024 10:21:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_sistema_c](
	[id_sistema] [int] NULL,
	[nombre_sistema] [varchar](50) NULL,
	[activo] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_tipo_bo_rk_c]    Script Date: 03/06/2024 10:21:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_tipo_bo_rk_c](
	[id_tipo_bo] [int] NULL,
	[nombre_bo] [varchar](50) NULL,
	[id_tipo_contrato] [int] NULL,
	[activo] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_tipo_cliente_c]    Script Date: 03/06/2024 10:21:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_tipo_cliente_c](
	[id_tipo_cliente] [int] NULL,
	[nombre_tipo] [varchar](200) NULL,
	[estatus] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_tipo_contrato_rk_c]    Script Date: 03/06/2024 10:21:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_tipo_contrato_rk_c](
	[id_tipo_contrato] [int] NULL,
	[nombre_contrato] [varchar](200) NULL,
	[activo] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_tipo_custodio_rk_c]    Script Date: 03/06/2024 10:21:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_tipo_custodio_rk_c](
	[id_tipo_custodio] [int] NULL,
	[nombre_custodio] [varchar](250) NULL,
	[id_valor_plantilla] [int] NULL,
	[relacion] [int] NULL,
	[activo] [bit] NULL,
	[id_contrato] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_tipo_golden_parent_rk_c]    Script Date: 03/06/2024 10:21:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_tipo_golden_parent_rk_c](
	[id_tipo_golden] [int] NULL,
	[nombre_golden] [varchar](50) NULL,
	[id_tipo_bo] [int] NULL,
	[activo] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_tipo_group_rk_c]    Script Date: 03/06/2024 10:21:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_tipo_group_rk_c](
	[id_tipo_gruop] [int] NULL,
	[nombre_group] [varchar](50) NULL,
	[activo] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_tipo_valor_rk_c]    Script Date: 03/06/2024 10:21:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_tipo_valor_rk_c](
	[id_tipo_valot] [int] NULL,
	[nombre_valor] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_usuario_w]    Script Date: 03/06/2024 10:21:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_usuario_w](
	[id_usuario] [int] NULL,
	[id_rol_usuario] [int] NULL,
	[nombre_usuario] [varchar](250) NULL,
	[estatus] [bit] NULL,
	[id_sistema] [int] NOT NULL,
	[emial] [varchar](200) NOT NULL,
	[activo] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ctr_valor_plantilla_rk_c]    Script Date: 03/06/2024 10:21:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ctr_valor_plantilla_rk_c](
	[id_valor_plantilla] [int] NULL,
	[nombre_plantilla] [varchar](max) NULL,
	[id_tipo_valor] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[tb_ctr_configuracion_sistema_w] ([id_confg], [configuracion], [varlo], [estatus], [id_sistema]) VALUES (1, N'Plantilla_Draft', N'C:/Temp_File/Contratos/Plantilla/Ejemplo_Plantilla_APP.xlsx', 1, 1)
INSERT [dbo].[tb_ctr_configuracion_sistema_w] ([id_confg], [configuracion], [varlo], [estatus], [id_sistema]) VALUES (2, N'Draft_Creado', N'C:/Temp_File/Contratos/Generado', 1, 1)
INSERT [dbo].[tb_ctr_configuracion_sistema_w] ([id_confg], [configuracion], [varlo], [estatus], [id_sistema]) VALUES (3, N'Email_To', N'test_sam1230@outlook.com', 1, 1)
INSERT [dbo].[tb_ctr_configuracion_sistema_w] ([id_confg], [configuracion], [varlo], [estatus], [id_sistema]) VALUES (4, N'Password_To', N'K10sm4rt', 1, 1)
INSERT [dbo].[tb_ctr_configuracion_sistema_w] ([id_confg], [configuracion], [varlo], [estatus], [id_sistema]) VALUES (5, N'image_status', N'true', 1, 1)
INSERT [dbo].[tb_ctr_configuracion_sistema_w] ([id_confg], [configuracion], [varlo], [estatus], [id_sistema]) VALUES (6, N'SesionTemporal', N'C:/Temp_File/Contratos/SesionTemporal', 1, 1)
GO
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (1, 1, N'BECAS', N'1024556', N'MEXICANA DE BECAS', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (2, 2, N'114', N'1005849', N'UADY CAJA AHORRO/BCO.SANTANDER MEXICO S.A FID.2001672-1', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (3, 2, N'RADIOPOLIS CA', N'1036723', N'RADIOPOLIS CA - RADIOPOLIS CAJA DE AHORRO', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (4, 2, N'IEST', N'2000926', N'IEST- INSTITUTO DE ESTUDIOS SUPERIORES TAMAULIPAS', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (5, 2, N'LC', N'2000534', N'LAFON LAUNAY COSMETICS', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (6, 2, N'SPC', N'2000722', N'SERVICIOS PAN AMERICANO DE PROTECCION CAJA DE AHORRO', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (7, 3, N'58', N'156622', N'58 - INFONAVIT 156622', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (8, 3, N'BREMBO', N'1031340', N'BREMBO MEXICO', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (9, 3, N'VIDANTA', N'1031341', N'VIDANTA DESARROLLO VALLARTA', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (10, 3, N'Palace', N'65507430562', N' Grupo Palace Resorts', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (11, 3, N'BOSECORP', N'65501372909', N'BOSE CORPORATION SA DE CV', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (12, 3, N'76', N'1033811', N'BOLSA MEXICANA AMIB', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (13, 3, N'OTISADMON', N'2001050', N'Elevadores OTIS Fondo de Ahorro Empleados', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (14, 3, N'OTISSIND', N'2001049', N'Elevadores OTIS Fondo de Ahorro Sindicalizados', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (15, 3, N'OFRA', N'2000467', N'DANONE OFR NO SINDICALIZADO FDO AHORRO', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (16, 3, N'Danone de Mexico Q', N'1037086', N'DANONE DE MEXICO QUINCENAL', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (17, 3, N'Danone de México S', N'1037085', N'DANONE DE MEXICO SEMANAL', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (18, 3, N'La suprema', N'1037113', N'SUPREMA', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (19, 3, N'61A0', N'1000003291', N'Robert Bosch México Sistemas Automotrices, S.A. de C.V. (Fondo de Ahorro 61A0)', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (20, 3, N'61A2', N'01000003292', N'Robert Bosch México Sistemas Automotrices, S.A. de C.V. (Fondo de Ahorro 61A2)', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (21, 3, N'61C0', N'01000003293', N'Robert Bosch México Sistemas Automotrices, S.A. de C.V. (Fondo de Ahorro 61C0)', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (22, 3, N'1528', N'01000003294', N'Robert Bosch México Sistemas de Seguridad, S.A. de C.V. (Fondo de Ahorro 1528)', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (23, 3, N'6981', N'01000003299', N'Robert Bosch Sistemas Automotrices S.A de C.V (Fondo de Ahorro 6981)', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (24, 3, N'CASA LEY SAPI SA DE CV ', N'65508881201', N'CASA LEY SAPI SA DE CV (FONDO DE AHORRO) ', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (25, 3, N'ANAHUAC', N'1018867', N'ANAHUAC - INVESTIGACIONES Y ESTUDIOS SUPERIORES SC', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (26, 3, N'86F0', N'01000003301', N'Frenados Mexicanos, S.A. de C.V. (Fondo de Ahorro 86F0)', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (27, 3, N'20', N'147313', N'UADY-113610', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (28, 3, N'22', N'147312', N'UADY-112800', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (29, 3, N'24', N'147310', N'UADY-208750', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (30, 3, N'105', N'152965', N'TRIBUNAL T.S.J.D.F  AHORRO FID 2112221', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (31, 3, N'75', N'1037124', N'BOLSA MEXICANA SIF-ICAP', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (32, 3, N'OASIS', N'2000597', N'OASIS SOUTH', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (33, 3, N'OASISAL', N'2000730', N'OASIS LATINOAMERICA ', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (34, 3, N'25D0', N'01000003295', N'Robert Bosch México, S.A. de C.V. (Fondo de Ahorro 25D0)', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (35, 3, N'25D1', N'01000003296', N'Robert Bosch México, S.A. de C.V. (Fondo de Ahorro 25D1)', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (36, 3, N'41D0', N'01000003297', N'Robert Bosch Tool de México, S.A de C.V. (Fondo de Ahorro 41D0)', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (37, 3, N'61A1', N'01000003298', N'Robert Bosch México Sistemas de Frenos, S. de R.L. de C.V. (Fondo de Ahorro 61A1)', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (38, 3, N'CFE', N'1000002861', N'CFE - CFEnergía', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (39, 3, N'SPA', N'2000569', N'SERV. PANAMERICANOS DE PROTECCIÓN', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (40, 3, N'BONAFONT QUIN', N'1037118', N'BONAFONT QUINENAL', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (41, 3, N'BONAFONT SEM', N'1037117', N'BONAFONT SEMANAL', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (42, 3, N'904W', N'01000003302', N'Robert Bosch S de RL de CV (Fondo de Ahorro 904W)', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (43, 3, N'MX10', N'01000003305', N'Bosch Rexroth S.A. de C.V. (Fondo de Ahorro MX10)', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (44, 3, N'BSH', N'01000003307', N'BSH Home Appliances, S.A de C.V. (Fondo de Ahorro', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (45, 3, N'698W', N'01000003300', N'Robert Bosch Sistemas Automotrices S.A. de C.V. (Fondo de Ahorro 698W)', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (46, 3, N'117', N'2000205', N'PRESIDENTE 2000205', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (47, 3, N'1031547', N'1031547', N'DISTRIBUCION MARZAM S.A. DE C.V.', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (48, 3, N'1031548', N'1031548', N'MARZAM DEL PACÍFICO S.A. DE C.V.', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (49, 3, N'1031549', N'1031549', N'ASESORIA Y DIRECCION MARZAM S.A. DE C.V.', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (50, 3, N'1031550', N'1031550', N'MARZAM S.A. DE C.V.', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (51, 3, N'1031551', N'1031551', N'DISTRIBUCION GUERRA ZAMUDIO S.A. DE C.V.', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (52, 3, N'LIQA', N'2000470', N'DANONE LIQUIMEX FDO AHORRO', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (53, 3, N'NOMISER', N'65505285253', N'NOMISER', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (54, 3, N'OAA', N'2000469', N'DANONE OAM FDO AHORRO', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (55, 3, N'OFR', N'2000466', N'DANONE OFR SINDICALIZADO FDO AHORRO', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (56, 3, N'SPABM', N'2000725', N'BM CONTROL Y ADMINISTRACION DE PERSONAL SA DE CV', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (57, 3, N'Cocentro', N'1037925', N'Cocentro', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (58, 3, N'Ajemex Consultores', N'1036691', N'Ajemex Consultores', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (59, 3, N'Ajegroup', N'1037924', N'Ajegroup', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (60, 3, N'Ajemex', N'1037923', N'Ajemex', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (61, 3, N'Alpamayo', N'01000003968', N'Inmobiliaria Alpamayo, S.A. de C.V', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (62, 3, N'RADIOPOLIS FA', N'1036724', N'RADIOPOLIS FA - RADIOPOLIS FONDO DE AHORRO', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (63, 3, N'UDG', N'65508989338', N'UNIVERSIDAD DE GUADALAJARA', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (64, 3, N'AM', N'65509560409', N'Arcelor Mittal México', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (65, 3, N'AP', N'65509560426', N'Arcelor Mittal Portuarios', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (66, 3, N'AT', N'65509560457', N'Arcelor Mittal Las Truchas ', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (67, 3, N'CB', N'65509560443', N'Corporación del Balsas', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (68, 4, N'94', N'1002455', N'AFIANZADORA ASERTA', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (69, 4, N'1081', N'142481', N'AFIANZADORAP.F. DOLARES', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (70, 4, N'1082', N'142482', N'AFIANZADORA P.M. DOLARES', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (71, 4, N'1018014', N'1018014', N'AISA MANCOMUNADOS', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (72, 4, N'1018122', N'1018122', N'ASERTA MANCOMUNADOS', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (73, 4, N'1018302', N'1018302', N'ASERTA CANCELADAS', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (74, 5, N'1033795', N'1033795', N'Envasadora de Aguas Pensiones', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (75, 5, N'1033796', N'1033796', N'Envasabon Pensiones', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (76, 5, N'1033798', N'1033798', N'Envasadora Aguabon Pensiones', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (77, 5, N'Bonafont Pens', N'65502397418', N'Bonafont Pens - Bonafont Pensiones', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (78, 5, N'Danone Mex pensiones', N'65501285111', N'Danone de México', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (79, 5, N'93', N'65502425394', N'U.A.E.M UNIV EDO MEX', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (80, 5, N'1100', N'1013407', N'UNIV B. CALIFORNIA ', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (81, 5, N'92', N'65502313952', N'U.J.A.T UNIV TABASCO /BCO SANTANDER (MEXICO) FIDEICOMISO F/2001447-1', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (82, 5, N'1068', N'67715', N'AXALTO / GMALTO PRINTER', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (83, 5, N'2000905', N'2000905', N'FABRICA DE JABON LA CORONA', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (84, 5, N'CGA', N'1037087', N'CGA - Compañía General de Aguas', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (85, 5, N'EAMSIND', N'1037090', N'EAMSIND - Envasadoras de Aguas en México Sind', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (86, 5, N'IESTPS', N'2000928', N'IESTPS - IEST PLAN DE PENSIONES', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (87, 5, N'IESTPSCONT', N'2000927', N'IESTPSCONT - IEST PLAN DE PENSIONES CONTINGENCIA', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (88, 5, N'CASA LEY SAPI SA DE CV (PLAN DE PENSIONES) ', N'65508886089', N'CASA LEY SAPI SA DE CV (PLAN DE PENSIONES) ', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (89, 5, N'RODEO CESANTIA', N'65507143699', N'RODEO CESANTIA', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (90, 5, N'RODEO RETIRO', N'65507143745', N'RODEO RETIRO', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (91, 5, N'RODEO VIVIENDA', N'65507142173', N'RODEO VIVIENDA', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (92, 5, N'UTDCESANTIA', N'65507052215', N'UTD SUBCUENTA', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (93, 5, N'UTDRETIRO', N'65507052277', N'UTD SUBCUENTA', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (94, 5, N'UTDVIVIENDA', N'65507052294', N'UTD SUBCUENTA', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (95, 5, N'POA', N'2000480', N'DANONE OAM FDO PENSIONES', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (96, 5, N'21', N'147309', N'UADY-1002461', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (97, 5, N'23', N'147311', N'UADY-112720', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (98, 5, N'25', N'147314', N'UADY-204410', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (99, 5, N'127', N'1013187', N'ISSSTEP 1013187', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (100, 5, N'1800', N'75146', N'SAP ADI', 1)
GO
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (101, 5, N'INVERCAPAFORE', N'65503691935', N'INVERCAP AFORE', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (102, 5, N'1074', N'1031627', N'EL POTOSI EMPL', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (103, 5, N'60', N'154702', N'CHARTIS (', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (104, 5, N'63', N'80820', N'MANTARA', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (105, 5, N'118', N'78665', N'BANCO  SANTANDER', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (106, 5, N'2500', N'2000183', N'GESBAN-AEMP', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (107, 5, N'2600', N'1012260', N'GESTION EMPL', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (108, 5, N'2700', N'2000424', N'C.B. EMPL', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (109, 5, N'2779', N'2001047', N'BANCO S3 CIA', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (110, 5, N'2901', N'1033545', N'INCLUSION FINANCIERA', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (111, 5, N'SOFOM', N'2183', N'SANTANDER CONSUMO S.A DE C.V. SOFOM', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (112, 5, N'UAA', N'65507684389', N'UNIVERSIDAD AUTONOMA DE AGUASCALIENTES', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (113, 5, N'EAMEMP', N'65501902345', N'EAMEMP - Envasadoras de Aguas en México Empl', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (114, 5, N'SP', N'2000581', N'SERV. PANAMERICANOS DE PROTECCIÓN', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (115, 5, N'HEB', N'2000574', N'HEB SUPER MERCADOS INT', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (116, 5, N'119', N'1008496', N'MOTOROLA MOBILITY DE MEXICO /  BCO SANTANDER MEXICO FIDEICOMISO F/2001807 2', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (117, 5, N'122', N'65501387259', N'FORTE TABASCO', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (118, 6, N'PPR', N'147492', N'AP NO DEDUCIBLE ', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (119, 7, N'UAA', N'65507528400', N'UNIVERSIDAD AUTONOMA DE AGUASCALIENTES', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (120, 7, N'UAA', N'65507671187', N'UNIVERSIDAD AUTONOMA DE AGUASCALIENTES', 1)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (121, 5, N'STAHL', N'65506131264', N'Stahl de México', 2)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (122, 5, N'AUDI', N'01000003633', N'AUDI', 2)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (123, 5, N'FTM', N'01000002677', N' FUNDACION TELEFONICA MEXICO AC (PLAN DE PENSIONES CONTRIBUCION DEFINIDA', 2)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (124, 5, N'CONSTITUCION', N'65507895505', N'CONSTITUCION', 2)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (125, 5, N'PEGASO', N'01000001249', N'PEGASO PCS SA DE CV (PLAN DE PENSIONES CONTRIBUCION DEFINIDA', 2)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (126, 5, N'64', N'80862', N'TRIBUNAL ( FID. 2001213) MAGISTRADOS', 3)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (127, 5, N'2000795', N'2000795', N'TRIBUNAL JUECES ', 3)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (128, 5, N'POFR', N'2000465', N'DANONE OFR FDO PENSIONES', 3)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (129, 5, N'1096', N'152981', N'JOHNSON-1-(152971)', 3)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (130, 2, N'2074', N'2074', N'Borgwarner Componentes PDS S. de R.L. de C.V. (Caja de Ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (131, 2, N'2195', N'2195', N'Borgwarner Comercializadora PDS S de RL de CV (Caja de Ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (132, 2, N'2279', N'2279', N'Borgwarner SLP S. de R.L. de C.V. (Caja de Ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (133, 2, N'2225', N'2225', N'DERIVADOS DE LECHE LA ESMERALDA', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (134, 2, N'2226', N'2226', N'DISTRIBUIDORA DE LACTEOS AGIL, S.A. DE C.V. (DILASA)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (135, 2, N'2303', N'2303', N'ALUMINIO DE BAJA CALIFORNIA, S.A. DE C.V.', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (136, 2, N'2248', N'2248', N'AHORRO GRUPO PLASENCIA SC', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (137, 2, N'2250', N'2250', N'CAJA DE AHORRO PHILLIPS', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (138, 2, N'2242', N'2242', N'CAJA DE AHORRO DE LOS TRABAJADORES DEL GRUPO CAF', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (139, 2, N'2262', N'2262', N'TRABAJANDO DURO PARA NUESTROS INTERESES AC', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (140, 2, N'Open MX', N'2275', N'Open MX Servicios Administrativos CA', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (141, 2, N'2313', N'2313', N' COOPER-STANDARD TECHNICAL SERVICES DE MEXICOS S. DE R.L. DE C.V. (CA)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (142, 2, N'2314', N'2314', N'COOPER-STANDARD AUTOMOTIVE FLUID SYSTEMS DE MEXICO S DE RL DE CV (CA)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (143, 3, N'2107', N'2107', N'Prosegur Consultoria y Servicios Administrativos', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (144, 3, N'2023', N'2023', N'GAS CONDITIONING OF MEXICO', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (145, 3, N'2170', N'2170', N'MAZDA Logística de México SA de CV (Fondo de Ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (146, 3, N'2040', N'2040', N'BW San Luis Sindicalizados', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (147, 3, N'2037', N'2037', N'GRUPO COMERCIAL YAZBEK', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (148, 3, N'2086', N'2086', N' LAFON MANUFACTURING', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (149, 3, N'2088', N'2088', N'Corporación Atlas S.A. de C.V. (Fondo de Ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (150, 3, N'2043', N'2043', N'INMAGUSA', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (151, 3, N'2080', N'2080', N'GAS LICUADO', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (152, 3, N'2082', N'2082', N'Prestadora de Servicios Hércules (Fondo de Ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (153, 3, N'2084', N'2084', N'THERMOGAS', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (154, 3, N'2041', N'2041', N'BW COMERCIALIZADORA', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (155, 3, N'2052', N'2052', N'Campari Mexico FA', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (156, 3, N'2033', N'2033', N'Grupo AF OPERADORA', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (157, 3, N'2047', N'2047', N'ELEKTRISOLA', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (158, 3, N'2071', N'2071', N'ENVASES DE ACERO, S.A. DE C.V. (Fondo de Ahorro Sindicalizados)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (159, 3, N'2067', N'2067', N'CRYOINFRA, S.A. DE C.V. (Fondo de Ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (160, 3, N'2068', N'2068', N'ENVASES DE ACERO, S.A. DE C.V. (Fondo de Ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (161, 3, N'2069', N'2069', N'TAXIS AEREOS DEL VALLE DE TOLUCA (Fondo de Ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (162, 3, N'2070', N'2070', N'CRYOINFRA, S.A. DE C.V.  (Fondo de Ahorro Sindicalizados)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (163, 3, N'2306', N'2306', N' COOPER-STANDARD AUTOMOTIVE FLUID SYSTEMS DE MEXICO S DE RL DE CV', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (164, 3, N'2034', N'2034', N'BW PDS IRAPUATO', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (165, 3, N'2153', N'2153', N'Borgwarner Turbo and Emissions Systems de México SA de CV (Fondo de Ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (166, 3, N'BANK OF CHINA', N'2015', N' BANK OF CHINA MEXICO', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (167, 3, N'2081', N'2081', N'MULTIGAS', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (168, 3, N'2083', N'2083', N'TANQUES DE ACERO DEL BRAVO', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (169, 3, N'2089', N'2089', N'VISCOFAN DE MEXICO SERVICIOS S DE RL DE CV (Fondo de Ahorro Planta Zacapu)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (170, 3, N'2018', N'2018', N'GRAMMER AUTOMOTIVE PUEBLA SA DE CV (QUERETARO)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (171, 3, N'2046', N'2046', N'UNIVERSIDAD DE IXTLAHUACA', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (172, 3, N'2075', N'2075', N'FABRICA DE INSTRUMENTOS Y EQUIPOS EMPL', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (173, 3, N'2076', N'2076', N'FABRICA DE INSTRUMENTOS Y EQUIPOS SIND', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (174, 3, N'2038', N'2038', N'INFONACOT FONDO DE AHORRO', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (175, 3, N'2085', N'2085', N'VISCOFAN DE MEXICO SERVICIOS S DE RL DE CV (Fondo de Ahorro Planta San Luis)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (176, 3, N'2035', N'2035', N'REPSOL SERVICES MEXICO', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (177, 3, N'2087', N'2087', N'ADVANCED STERILIZATION', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (178, 3, N'2305', N'2305', N' COOPER-STANDARD TECHNICAL SERVICES DE MEXICO S DE RL DE CV ', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (179, 3, N'2125', N'2125', N'Beam Suntory México S. de R.L. de C.V.', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (180, 3, N'2039', N'2039', N'GENERAL MOTORS ', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (181, 3, N'2017', N'2017', N'GRAMMER AUTOMOTIVE PUEBLA SA DE CV', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (182, 3, N'2304', N'2304', N' COOPER-STANDARD DE MEXICO S DE RL DE CV ', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (183, 3, N'2196', N'2196', N'CONSTRUCCION MANTENIMIENTO FERROVIAS Y SUBSISTEMAS, S.A. DE C.V', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (184, 3, N'2197', N'2197', N'Ferrocarriles Suburbanos SAPI de CV (Fondo de Ahorr)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (185, 3, N'2292', N'2292', N'LAFON LAUNAY COSMETICS SA DE CV (FONDO DE AHORRO)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (186, 3, N'2113', N'2113', N'PRODUCTOS FARMACEUTICOS COLLINS', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (187, 3, N'2114', N'2114', N'COLLINS DIVISION VETERINARIA', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (188, 3, N'2103', N'2103', N'DERIVADOS DE LECHE ESMERALSA', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (189, 3, N'2219', N'2219', N'SECRETOS MOXCHE  SA DE CV (FONDO DE AHORRO)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (190, 3, N'2201', N'2201', N'Parker Servicios de México SA de CV (FA)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (191, 3, N'2237', N'2237', N'PROSEGUR COMPAÑÍA DE SEGURIDAD PRIVADA', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (192, 3, N'2291', N'2291', N'GOBIERNO DEL ESTADO LIBRE Y SOBERANO DE QUINTANA ROO', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (193, 3, N'2244', N'2244', N'THYSSENKRUP PRESTA', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (194, 3, N'2100', N'2100', N'GENERAL MOTORS FINANCIAL ', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (195, 3, N'2278', N'2278', N'MUNICIPIO DE TEPATITLAN DE MORELOS JALISCO', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (196, 3, N'2092', N'2092', N'Johnson and Son Fondo de Ahorro', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (197, 3, N'1934', N'2258', N'PRESTOLITE DE MÉXICO S.A. DE C.V.        ', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (198, 3, N'2205', N'2205', N'PUMA MEXICO SPORT', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (199, 3, N'2206', N'2206', N'IMPORTACIONES RDS', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (200, 3, N'2131', N'2131', N'TEQUILA SAUZA FA', 4)
GO
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (201, 3, N'2158', N'2158', N'Borgwarner Morse Systems México SA de CV (Fondo de Ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (202, 3, N'2165', N'2165', N'AVON Cosmetics Manufacturing S. de R.L. de C.V. (Fondo de Ahorro Sindicalizados)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (203, 3, N'2203', N'2203', N'Parker Industrial S de RL de CV (FA FC Stiva)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (204, 3, N'2108', N'2108', N'PROSEGUR CUSTODIAS SA DE CV', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (205, 3, N'2146', N'2146', N'ADMINISTRADORA DE CENTROS COMERCIALES SANTA FE', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (206, 3, N'2252', N'2252', N' CERRAMEX', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (207, 3, N'2280', N'2280', N'RAIMSA', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (208, 3, N'2161', N'2161', N'Nitropet S.A de C.V. (fondo de ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (209, 3, N'2162', N'2162', N'Praxair México S de RL de Cv (fondo de ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (210, 3, N'2163', N'2163', N'Linde SSC S de RL de CV. (fondo de ahorro', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (211, 3, N'2272', N'2272', N'FEDERAL MOGUL DE MATAMOROS', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (212, 3, N'2223', N'2223', N'CASA MARZAM', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (213, 3, N'2247', N'2247', N'KYOCERA FONDO DE AHORRO', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (214, 3, N'2270', N'2270', N'GUNDERSON-GIMSA', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (215, 3, N'2251', N'2251', N' CERRADURAS Y CANDADOS PHILLIPS', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (216, 3, N'2193', N'2193', N'PROKARMA TECHNOLOGY MEXICO SA DE CV (FA)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (217, 3, N'2150', N'2150', N'CRYOINFRA DEL NORTE SA DE CV (Fondo de Ahorro Empleados de Confianza)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (218, 3, N'2152', N'2152', N'ENERGIA INFRA SAPI de CV (Fondo de Ahorro Empleados de confianza)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (219, 3, N'2263', N'2263', N'2263 - Baldwin Filters', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (220, 3, N'PAGONXT', N'2311', N' PAGONXT PAYMENTS PLATAFORM MEXICO, S.A. DE C.V. (FA)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (221, 3, N'2128', N'2128', N'PROMOCIÓN Y FOMENTO DE AGAVE', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (222, 3, N'1720', N'2256', N'DRAKA DURAGO S. DE R.L. DE C.V.', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (223, 3, N'1932', N'2257', N'GENERAL DE CABLE DE MÉXICO DEL NORTE S.A. DE C.V.', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (224, 3, N'2164', N'2164', N'AVON Cosmetics Manufacturing S. de R.L. de C.V. (Fondo de Ahorro Empleados)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (225, 3, N'2173', N'2173', N'NGK CERAMICS MEXICO, S. DE R.L. DE C.V.', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (226, 3, N'2079', N'2079', N'Eurogas S.A. de C.V. (Fondo de Ahorro', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (227, 3, N'2139', N'2139', N'B&M Fresh', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (228, 3, N'2245', N'2245', N'OMYA FONDO DE AHORRO', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (229, 3, N'MERCHANT', N'2171 2172', N'SMPS Merchant Platform Solutions Mexico SA de CV (Fondo de Ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (230, 3, N'2142', N'2142', N'NA  TRANSPORT QUINCENAL', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (231, 3, N'2249', N'2249', N'ASSA ABLOY MEXICO', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (232, 3, N'2241', N'2241', N'Abent 3T', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (233, 3, N'2281', N'2281', N'SERVICIOS ADMINISTRATIVOS INDUSTRIALES', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (234, 3, N'2282', N'2282', N'SERVICIO DE COMPONENTES AUTOMOTRICES', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (235, 3, N'2276', N'2276', N'Borgwarner SLP S. de R.L. de C.V. (Fondo de Ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (236, 3, N'2298', N'2298', N'MERCADOTECNIA, IDEAS Y TECNOLOGIA SA DE CV (FONDO DE AHORRO)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (237, 3, N'2232', N'2232', N'BITRON DE MEXICO', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (238, 3, N'2283', N'2283', N'DRIV DE MEXICO OE', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (239, 3, N'2180', N'2180', N'PRODUCTOS AGROPECUARIOS DE TEHUACAN S DE RL DE CV (FONDO DE AHORRO)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (240, 3, N'2233', N'2233', N'VUELOS CORPORATIVOS DE TEHUACAN S. DE R.L. DE C.V.', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (241, 3, N'2235', N'2235', N'CENTRAL DE ABASTOS DE TEHUACAN S. DE R.L. DE C.V.', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (242, 3, N'2198', N'2198', N'ISU INMOBILIARIA DEL SUDESTE', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (243, 3, N'2155', N'2155', N'Logistica Sese Mexico S.A de C.V', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (244, 3, N'2143', N'2143', N'BETTERWARE DE MEXICO', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (245, 3, N'2120', N'2120', N'NUTRI HEALTH', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (246, 3, N'2137', N'2137', N'Protección General Activa S.A. de C.V. (Fondo de Ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (247, 3, N'2138', N'2138', N'Poder Germinado, S.A. de C.V. ', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (248, 3, N'2168', N'2168', N'REPSOL EXPLORACIÓN MEXICO SA DE CV', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (249, 3, N'2169', N'2169', N'REPSOL DOWSNTREAM MEXICO SA de CV', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (250, 3, N'2267', N'2267', N'PROMOCIONES Y DESARROLLOS RIBERA MUJERES SA DE CV (FONDO DE AHORRO)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (251, 3, N'2268', N'2268', N'DESARROLLO DINE SA DE CV (VALLARTA) (FONDO DE AHORRO)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (252, 3, N'2269', N'2269', N'DESARROLLO DINE SA DE CV (RIBIERA) (FONDO DE AHORRO)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (253, 3, N'2297', N'2297', N'REFACCIONARIA AUTOMOTRIZ ANCONA S.A. DE C.V.', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (254, 3, N'2302', N'2302', N'ALUMINIO DE BAJA CALIFORNIA, S.A. DE C.V.', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (255, 3, N'2265', N'2265', N'Parker Brownsville Servicios', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (256, 3, N'2202', N'2202', N'Parker Industrial S de RL de CV (FA Apodaca)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (257, 3, N'2109', N'2109', N'PROSEGUR TECNOLOGIA SA DE CV', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (258, 3, N'2156', N'2156', N' BONATTI SPA', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (259, 3, N'2204', N'2204', N'Parker Industrial S de RL de CV (FA Baja)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (260, 3, N'2124', N'2124', N'SC Johnson S. de R.L. de C.V. (Fondo de Ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (261, 3, N'2119', N'2119', N'Servicios de Operaciones de Nitroqeno S.A. deC.V. (SONITSA -FA) ', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (262, 3, N'2159', N'2159', N'Linde Hidrógeno S.A de C.V. (Fondo de ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (263, 3, N'2160', N'2160', N'Compañía de Nitrógeno de Cantarell S.A. de C.v. (fondo de Ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (264, 3, N'2273', N'2273', N'STELLANTIS MEXICO', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (265, 3, N'1781', N'2254', N'PRYSMIAN CABLES Y SISTEMAS DE MÉXICO S DE R.L. DE C.V', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (266, 3, N'1931', N'2255', N'GENERAL CABLE DE MÉXICO S.A. DE C.V.', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (267, 3, N'2259', N'2259', N' MALTEUROP MEXICO', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (268, 3, N'2236', N'2236', N'Bonatti México S.A de C.V (fondo de ahorro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (269, 3, N'2284', N'2284', N'DRIV DE MEXICO AM', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (270, 3, N'2277', N'2277', N'Parker Industrial S de RL de CV (Fondo de Ahorro Queretaro)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (271, 3, N'2264', N'2264', N'PARKER HANNIFIN MEXICO S.A. DE C.V.', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (272, 3, N'2261', N'2261', N'Kiekert de México', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (273, 3, N'2301', N'2301', N'HOTELES Y CENTROS ESPECIALIZADOS, S.A.', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (274, 3, N'2315', N'2315', N'TENNECO CA MÉXICO, S. DE R.L. DE C.V. (FONDO DE AHORRO)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (275, 3, N'2316', N'2316', N'AUTOPARTES WALKER, S. DE R.L. DE C.V. (FONDO DE AHORRO)', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (276, 5, N'2053', N'2053', N'Campari Mexico FP', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (277, 5, N'PAGONXT', N'2312', N' PAGONXT PAYMENTS PLATAFORM MEXICO, S.A. DE C.V. ', 4)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (278, 5, N'2054', N'2054', N'DYSTAR DE MEXICO', 5)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (279, 5, N'2059', N'2059', N'Eni México', 5)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (280, 5, N'2099', N'2099', N'GENERAL MOTORS FINANCIAL ', 5)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (281, 5, N'2126', N'2126', N'Servicios Corporativos Sauza S.A. de C.V. (Pensiones Contribución Definida)', 5)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (282, 5, N'2129', N'2129', N'PROMOCIÓN Y FOMENTO DE AGAVE', 5)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (283, 5, N'2132', N'2132', N'TEQUILA SAUZA PENS', 5)
INSERT [dbo].[tb_ctr_contratos_c] ([id_contratos], [id_tipo_cliente], [cliente], [contrato], [nombre_cliente], [id_fuente]) VALUES (284, 5, N'2260', N'2260', N'MALTEROPU PLAN DE PENSIONES', 5)
GO
INSERT [dbo].[tb_ctr_fuentes_c] ([id_fuente], [nombre_fuente], [estatus]) VALUES (1, N'FRONT NORMAL', 1)
INSERT [dbo].[tb_ctr_fuentes_c] ([id_fuente], [nombre_fuente], [estatus]) VALUES (2, N'FRONT VIVES', 1)
INSERT [dbo].[tb_ctr_fuentes_c] ([id_fuente], [nombre_fuente], [estatus]) VALUES (3, N'FRONT EDC', 1)
INSERT [dbo].[tb_ctr_fuentes_c] ([id_fuente], [nombre_fuente], [estatus]) VALUES (4, N'CITRIX NORMAL', 1)
INSERT [dbo].[tb_ctr_fuentes_c] ([id_fuente], [nombre_fuente], [estatus]) VALUES (5, N'CITRIX VIVES', 1)
GO
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (1, 1, 3, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (2, 1, 3, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (3, 1, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (4, 1, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (5, 1, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (6, 1, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (7, 2, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (8, 3, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (9, 4, 3, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (10, 4, 3, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (11, 5, 2, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (12, 5, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (13, 6, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (14, 7, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (15, 8, 2, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (16, 9, 3, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (17, 10, 3, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (18, 11, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (19, 12, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (20, 13, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (21, 14, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (22, 14, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (23, 14, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (24, 15, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (25, 16, 3, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (26, 17, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (27, 17, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (28, 17, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (29, 18, 3, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (30, 18, 3, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (31, 18, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (32, 18, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (33, 18, 1, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (34, 19, 3, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (35, 20, 2, 1)
INSERT [dbo].[tb_ctr_port_group_rk_w] ([id_port_group], [id_tipo_port], [id_tipo_bo], [activo]) VALUES (36, 20, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[tb_ctr_portafolio_activo_samoa_w] ON 

INSERT [dbo].[tb_ctr_portafolio_activo_samoa_w] ([id], [bo_code], [contrato], [denominacion], [moneda], [numero_contrato], [denominacion_contrato], [fecha_contrato], [tipo_port], [tipo_custodio], [tipo_fondo], [tipo_bo_code], [contrato_externo], [tipo_contrato], [tipo_golden_parent], [external_address]) VALUES (1, N'SCBMX', N'56', N'654', N'MXN', N'56', N'654', N'Jun  3 202', N'Custodio|Custodio|Custodio|Custodio|Banco', N'RK_Negocio.Modelo.CB', N'', N'SCBMX', N'', N'Mandatos', N'MX-B2', N'456')
INSERT [dbo].[tb_ctr_portafolio_activo_samoa_w] ([id], [bo_code], [contrato], [denominacion], [moneda], [numero_contrato], [denominacion_contrato], [fecha_contrato], [tipo_port], [tipo_custodio], [tipo_fondo], [tipo_bo_code], [contrato_externo], [tipo_contrato], [tipo_golden_parent], [external_address]) VALUES (2, N'SCBMX', N'456', N'654', N'MXN', N'456', N'654', N'Jun  3 202', N'Custodio|Custodio|Custodio|Custodio|Banco', N'RK_Negocio.Modelo.CB', N'', N'SCBMX', N'', N'Mandatos', N'MX-B2', N'456')
SET IDENTITY_INSERT [dbo].[tb_ctr_portafolio_activo_samoa_w] OFF
GO
INSERT [dbo].[tb_ctr_sistema_c] ([id_sistema], [nombre_sistema], [activo]) VALUES (1, N'SAMOA', 1)
INSERT [dbo].[tb_ctr_sistema_c] ([id_sistema], [nombre_sistema], [activo]) VALUES (2, N'RK', 0)
GO
INSERT [dbo].[tb_ctr_tipo_bo_rk_c] ([id_tipo_bo], [nombre_bo], [id_tipo_contrato], [activo]) VALUES (1, N'SCBMX', 1, N'1         ')
INSERT [dbo].[tb_ctr_tipo_bo_rk_c] ([id_tipo_bo], [nombre_bo], [id_tipo_contrato], [activo]) VALUES (2, N'SANMX', 1, N'1         ')
INSERT [dbo].[tb_ctr_tipo_bo_rk_c] ([id_tipo_bo], [nombre_bo], [id_tipo_contrato], [activo]) VALUES (3, N'SAMMX', 2, N'1         ')
INSERT [dbo].[tb_ctr_tipo_bo_rk_c] ([id_tipo_bo], [nombre_bo], [id_tipo_contrato], [activo]) VALUES (4, N'CITISAMMX', 1, N'1         ')
INSERT [dbo].[tb_ctr_tipo_bo_rk_c] ([id_tipo_bo], [nombre_bo], [id_tipo_contrato], [activo]) VALUES (5, N'BBVAMX', 1, N'1         ')
INSERT [dbo].[tb_ctr_tipo_bo_rk_c] ([id_tipo_bo], [nombre_bo], [id_tipo_contrato], [activo]) VALUES (6, N'BBAXMM', 1, N'1         ')
INSERT [dbo].[tb_ctr_tipo_bo_rk_c] ([id_tipo_bo], [nombre_bo], [id_tipo_contrato], [activo]) VALUES (7, N'Fondo Deuda', 3, N'1         ')
INSERT [dbo].[tb_ctr_tipo_bo_rk_c] ([id_tipo_bo], [nombre_bo], [id_tipo_contrato], [activo]) VALUES (8, N'Fondo Renta Variable', 3, N'1         ')
GO
INSERT [dbo].[tb_ctr_tipo_cliente_c] ([id_tipo_cliente], [nombre_tipo], [estatus]) VALUES (1, N'BECAS', 1)
INSERT [dbo].[tb_ctr_tipo_cliente_c] ([id_tipo_cliente], [nombre_tipo], [estatus]) VALUES (2, N'CAJA DE AHORRO', 1)
INSERT [dbo].[tb_ctr_tipo_cliente_c] ([id_tipo_cliente], [nombre_tipo], [estatus]) VALUES (3, N'F. AHORRO ', 1)
INSERT [dbo].[tb_ctr_tipo_cliente_c] ([id_tipo_cliente], [nombre_tipo], [estatus]) VALUES (4, N'FINANZAS', 1)
INSERT [dbo].[tb_ctr_tipo_cliente_c] ([id_tipo_cliente], [nombre_tipo], [estatus]) VALUES (5, N'PENCIONES', 1)
INSERT [dbo].[tb_ctr_tipo_cliente_c] ([id_tipo_cliente], [nombre_tipo], [estatus]) VALUES (6, N'PPR', 1)
GO
INSERT [dbo].[tb_ctr_tipo_contrato_rk_c] ([id_tipo_contrato], [nombre_contrato], [activo]) VALUES (1, N'Mandatos', 1)
INSERT [dbo].[tb_ctr_tipo_contrato_rk_c] ([id_tipo_contrato], [nombre_contrato], [activo]) VALUES (2, N'Clientes en directo', 1)
INSERT [dbo].[tb_ctr_tipo_contrato_rk_c] ([id_tipo_contrato], [nombre_contrato], [activo]) VALUES (3, N'Fondos', 1)
GO
INSERT [dbo].[tb_ctr_tipo_custodio_rk_c] ([id_tipo_custodio], [nombre_custodio], [id_valor_plantilla], [relacion], [activo], [id_contrato]) VALUES (1, N'Custodio Banco Santander', 1, 1, 1, 1)
INSERT [dbo].[tb_ctr_tipo_custodio_rk_c] ([id_tipo_custodio], [nombre_custodio], [id_valor_plantilla], [relacion], [activo], [id_contrato]) VALUES (2, N'Cash Banco Santander', 2, 1, 1, 1)
INSERT [dbo].[tb_ctr_tipo_custodio_rk_c] ([id_tipo_custodio], [nombre_custodio], [id_valor_plantilla], [relacion], [activo], [id_contrato]) VALUES (3, N'Custodio CB Santander', 3, 2, 1, 1)
INSERT [dbo].[tb_ctr_tipo_custodio_rk_c] ([id_tipo_custodio], [nombre_custodio], [id_valor_plantilla], [relacion], [activo], [id_contrato]) VALUES (4, N'CB Santander', 4, 2, 1, 1)
INSERT [dbo].[tb_ctr_tipo_custodio_rk_c] ([id_tipo_custodio], [nombre_custodio], [id_valor_plantilla], [relacion], [activo], [id_contrato]) VALUES (5, N'Custodio Banco BBVA', 5, 3, 1, 1)
INSERT [dbo].[tb_ctr_tipo_custodio_rk_c] ([id_tipo_custodio], [nombre_custodio], [id_valor_plantilla], [relacion], [activo], [id_contrato]) VALUES (6, N'Banco BBVA 3', 6, 3, 1, 1)
INSERT [dbo].[tb_ctr_tipo_custodio_rk_c] ([id_tipo_custodio], [nombre_custodio], [id_valor_plantilla], [relacion], [activo], [id_contrato]) VALUES (7, N'Custodio Banco Citi', 7, 4, 1, 1)
INSERT [dbo].[tb_ctr_tipo_custodio_rk_c] ([id_tipo_custodio], [nombre_custodio], [id_valor_plantilla], [relacion], [activo], [id_contrato]) VALUES (8, N'Banco Citi', 8, 4, 1, 1)
INSERT [dbo].[tb_ctr_tipo_custodio_rk_c] ([id_tipo_custodio], [nombre_custodio], [id_valor_plantilla], [relacion], [activo], [id_contrato]) VALUES (9, N'Custodio Banco S3', 9, 5, 1, 3)
INSERT [dbo].[tb_ctr_tipo_custodio_rk_c] ([id_tipo_custodio], [nombre_custodio], [id_valor_plantilla], [relacion], [activo], [id_contrato]) VALUES (10, N'Banco S3', 10, 5, 1, 3)
INSERT [dbo].[tb_ctr_tipo_custodio_rk_c] ([id_tipo_custodio], [nombre_custodio], [id_valor_plantilla], [relacion], [activo], [id_contrato]) VALUES (11, N'Custodio Banco Santander', 1, 6, 1, 3)
INSERT [dbo].[tb_ctr_tipo_custodio_rk_c] ([id_tipo_custodio], [nombre_custodio], [id_valor_plantilla], [relacion], [activo], [id_contrato]) VALUES (12, N'Cash Banco Santander', 2, 6, 1, 3)
INSERT [dbo].[tb_ctr_tipo_custodio_rk_c] ([id_tipo_custodio], [nombre_custodio], [id_valor_plantilla], [relacion], [activo], [id_contrato]) VALUES (13, N'Custodio SAM', 11, 7, 1, 2)
INSERT [dbo].[tb_ctr_tipo_custodio_rk_c] ([id_tipo_custodio], [nombre_custodio], [id_valor_plantilla], [relacion], [activo], [id_contrato]) VALUES (14, N'Cash SAM', 12, 7, 1, 2)
GO
INSERT [dbo].[tb_ctr_tipo_golden_parent_rk_c] ([id_tipo_golden], [nombre_golden], [id_tipo_bo], [activo]) VALUES (1, N'MX-CD', 3, 1)
INSERT [dbo].[tb_ctr_tipo_golden_parent_rk_c] ([id_tipo_golden], [nombre_golden], [id_tipo_bo], [activo]) VALUES (2, N'MX-B1', 2, 1)
INSERT [dbo].[tb_ctr_tipo_golden_parent_rk_c] ([id_tipo_golden], [nombre_golden], [id_tipo_bo], [activo]) VALUES (3, N'MX-B2', 1, 1)
INSERT [dbo].[tb_ctr_tipo_golden_parent_rk_c] ([id_tipo_golden], [nombre_golden], [id_tipo_bo], [activo]) VALUES (4, N'MX-MANDATE', 1, 1)
INSERT [dbo].[tb_ctr_tipo_golden_parent_rk_c] ([id_tipo_golden], [nombre_golden], [id_tipo_bo], [activo]) VALUES (5, N'MX-EQ', 7, 1)
INSERT [dbo].[tb_ctr_tipo_golden_parent_rk_c] ([id_tipo_golden], [nombre_golden], [id_tipo_bo], [activo]) VALUES (6, N'MX-FI', 8, 1)
GO
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (1, N'GP|INST-AMRS', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (2, N'GP|ISSSTE-RFA', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (3, N'GP|ISSSTE-ROC', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (4, N'GP|MX-AGG', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (5, N'GP|MX-ALCAP', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (6, N'GP|MX-B1', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (7, N'GP|MX-B2', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (8, N'GP|MX-CD', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (9, N'GP|MX-EQUITY', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (10, N'GP|MX-FI-DIN', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (11, N'GP|MX-MANDATE', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (12, N'GP|MX-MAN-EXT', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (13, N'GP|MX-RISKP', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (14, N'GP|MX-STMM', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (15, N'GP|VALFX-UAT', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (16, N'PORT_GRP|MX-FI-FNDS', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (17, N'PORT_GRP|SAM_B1_5', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (18, N'PORT_GRP|SAM_B1_6', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (19, N'PORT_GRP|SAM_B1_B', 1)
INSERT [dbo].[tb_ctr_tipo_group_rk_c] ([id_tipo_gruop], [nombre_group], [activo]) VALUES (20, N'PORT_GRP|TEST-AMRS', 1)
GO
INSERT [dbo].[tb_ctr_tipo_valor_rk_c] ([id_tipo_valot], [nombre_valor]) VALUES (1, N'Custodio')
INSERT [dbo].[tb_ctr_tipo_valor_rk_c] ([id_tipo_valot], [nombre_valor]) VALUES (2, N'Banco')
GO
INSERT [dbo].[tb_ctr_usuario_w] ([id_usuario], [id_rol_usuario], [nombre_usuario], [estatus], [id_sistema], [emial], [activo]) VALUES (1, 1, N'Carlos Alberto', 1, 1, N'carlosalberto.barreralugo1230@hotmail.com', 1)
GO
INSERT [dbo].[tb_ctr_valor_plantilla_rk_c] ([id_valor_plantilla], [nombre_plantilla], [id_tipo_valor]) VALUES (1, N'Banco Santander (Mexico) S.A. Institucion de Banca', 1)
INSERT [dbo].[tb_ctr_valor_plantilla_rk_c] ([id_valor_plantilla], [nombre_plantilla], [id_tipo_valor]) VALUES (2, N'Banco Santander (Mexico) S.A. Institucion de Banca', 2)
INSERT [dbo].[tb_ctr_valor_plantilla_rk_c] ([id_valor_plantilla], [nombre_plantilla], [id_tipo_valor]) VALUES (3, N'Casa de olsa Santander, S.A. De C.V.', 1)
INSERT [dbo].[tb_ctr_valor_plantilla_rk_c] ([id_valor_plantilla], [nombre_plantilla], [id_tipo_valor]) VALUES (4, N'Casa de olsa Santander, S.A. De C.V.', 2)
INSERT [dbo].[tb_ctr_valor_plantilla_rk_c] ([id_valor_plantilla], [nombre_plantilla], [id_tipo_valor]) VALUES (5, N'BBVA Bancomer, S. A', 1)
INSERT [dbo].[tb_ctr_valor_plantilla_rk_c] ([id_valor_plantilla], [nombre_plantilla], [id_tipo_valor]) VALUES (6, N'BBVA Bancomer, S. A', 2)
INSERT [dbo].[tb_ctr_valor_plantilla_rk_c] ([id_valor_plantilla], [nombre_plantilla], [id_tipo_valor]) VALUES (7, N'Banco Nacional De Mexico S.A.', 1)
INSERT [dbo].[tb_ctr_valor_plantilla_rk_c] ([id_valor_plantilla], [nombre_plantilla], [id_tipo_valor]) VALUES (8, N'Banco Nacional De Mexico S.A.', 2)
INSERT [dbo].[tb_ctr_valor_plantilla_rk_c] ([id_valor_plantilla], [nombre_plantilla], [id_tipo_valor]) VALUES (9, N'Banco S3 Mexico S.A. Institucion de Banca Multiple', 1)
INSERT [dbo].[tb_ctr_valor_plantilla_rk_c] ([id_valor_plantilla], [nombre_plantilla], [id_tipo_valor]) VALUES (10, N'Banco S3 Mexico S.A. Institucion de Banca Multiple', 2)
INSERT [dbo].[tb_ctr_valor_plantilla_rk_c] ([id_valor_plantilla], [nombre_plantilla], [id_tipo_valor]) VALUES (11, N'SAM ASSET MANAGEMENT, S.A. DE C.V. SOFI', 1)
INSERT [dbo].[tb_ctr_valor_plantilla_rk_c] ([id_valor_plantilla], [nombre_plantilla], [id_tipo_valor]) VALUES (12, N'SAM ASSET MANAGEMENT, S.A. DE C.V. SOFI', 2)
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_contrato]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_buscar_contrato]
    @numeroContrato NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        bo_code,
        Contrato,
        Denominacion,
        Moneda,
        numero_contrato,
        denominacion_contrato,
        fecha_contrato,
        tipo_port,
        tipo_custodio,
        tipo_fondo,
        tipo_bo_code,
        contrato_externo,
        tipo_contrato,
        tipo_golden_parent,
        external_address
   FROM 
        tb_ctr_portafolio_activo_samoa_w
    WHERE 
        numero_contrato = @numeroContrato;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_actualizar_custodio]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Actualizar
CREATE PROCEDURE [dbo].[sp_ctr_actualizar_custodio]
    @id_custodio INT,
    @nombre_custodio NVARCHAR(50),
    @activo BIT
AS
BEGIN
    UPDATE tb_ctr_custodio_rk_c
    SET nombre_custodio = @nombre_custodio,
        activo = @activo
    WHERE id_custodio = @id_custodio
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_actualizar_port_group]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Actualizar
CREATE PROCEDURE [dbo].[sp_ctr_actualizar_port_group]
    @id_port_group INT,
    @id_tipo_port INT,
    @id_tipo_bo INT,
    @activo BIT
AS
BEGIN
    UPDATE tb_ctr_port_group_rk_w
    SET id_tipo_port = @id_tipo_port,
        id_tipo_bo = @id_tipo_bo,
        activo = @activo
    WHERE id_port_group = @id_port_group
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_actualizar_portafolio_activo_samoa]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Actualizar
CREATE PROCEDURE [dbo].[sp_ctr_actualizar_portafolio_activo_samoa]
    @id INT,
    @bo_code NVARCHAR(50),
    @contrato NVARCHAR(50),
    @denominacion NVARCHAR(255),
    @moneda NVARCHAR(10),
    @numero_contrato NVARCHAR(50),
    @denominacion_contrato NVARCHAR(255),
    @fecha_contrato DATE,
    @tipo_port NVARCHAR(255),
    @tipo_custodio NVARCHAR(255),
    @tipo_fondo NVARCHAR(255),
    @tipo_bo_code NVARCHAR(255),
    @contrato_externo NVARCHAR(50),
    @tipo_contrato NVARCHAR(50),
    @tipo_golden_parent NVARCHAR(255),
    @external_address NVARCHAR(255)
AS
BEGIN
    UPDATE tb_ctr_portafolio_activo_samoa_w
    SET bo_code = @bo_code,
        contrato = @contrato,
        denominacion = @denominacion,
        moneda = @moneda,
        numero_contrato = @numero_contrato,
        denominacion_contrato = @denominacion_contrato,
        fecha_contrato = @fecha_contrato,
        tipo_port = @tipo_port,
        tipo_custodio = @tipo_custodio,
        tipo_fondo = @tipo_fondo,
        tipo_bo_code = @tipo_bo_code,
        contrato_externo = @contrato_externo,
        tipo_contrato = @tipo_contrato,
        tipo_golden_parent = @tipo_golden_parent,
        external_address = @external_address
    WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_actualizar_tipo_bo]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Actualizar
CREATE PROCEDURE [dbo].[sp_ctr_actualizar_tipo_bo]
    @id_tipo_bo INT,
    @nombre_bo NVARCHAR(50),
    @id_tipo_contrato INT,
    @activo BIT
AS
BEGIN
    UPDATE tb_ctr_tipo_bo_rk_c
    SET nombre_bo = @nombre_bo,
        id_tipo_contrato = @id_tipo_contrato,
        activo = @activo
    WHERE id_tipo_bo = @id_tipo_bo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_actualizar_tipo_golden_parent]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Actualizar
CREATE PROCEDURE [dbo].[sp_ctr_actualizar_tipo_golden_parent]
    @id_tipo_golden_parent INT,
    @nombre_golden_parent NVARCHAR(50),
    @activo BIT
AS
BEGIN
    UPDATE tb_ctr_tipo_golden_parent_rk_c
    SET nombre_golden = @nombre_golden_parent,
        activo = @activo
    WHERE id_tipo_golden = @id_tipo_golden_parent
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_actualizar_usuario]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Actualizar
CREATE PROCEDURE [dbo].[sp_ctr_actualizar_usuario]
    @id_usuario INT,
    @nombre_usuario NVARCHAR(50),
    @email NVARCHAR(100),
    @password NVARCHAR(255),
    @rol NVARCHAR(50),
    @activo BIT
AS
BEGIN
    UPDATE tb_ctr_usuarios_w
    SET nombre_usuario = @nombre_usuario,
        email = @email,
        password = @password,
        rol = @rol,
        activo = @activo
    WHERE id_usuario = @id_usuario
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_combo]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Procedimiento general para llenar un combo
CREATE PROCEDURE [dbo].[sp_ctr_combo]
    @tipo INT,
    @condicion INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    IF @tipo = 0
    BEGIN
        SELECT 0 AS 'id', '--' AS 'valor'
    END
    ELSE IF @tipo = 1
    BEGIN
        SELECT id_fuente AS 'id', nombre_fuente AS 'valor' FROM [dbo].[tb_ctr_fuentes_c] WHERE estatus = 1
    END
    ELSE IF @tipo = 2
    BEGIN
        SELECT id_tipo_cliente AS 'id', nombre_tipo AS 'valor' FROM [dbo].[tb_ctr_tipo_cliente_c] WHERE estatus = 1
    END
    ELSE IF @tipo = 3
    BEGIN
        SELECT id_tipo_contrato as 'id', nombre_contrato as 'valor' FROM tb_ctr_tipo_contrato_rk_c WHERE activo = 1
    END
    ELSE IF @tipo = 4
    BEGIN
        SELECT id_tipo_bo as 'id', nombre_bo as 'valor' FROM tb_ctr_tipo_bo_rk_c WHERE activo = 1 AND id_tipo_contrato = @condicion
    END
    ELSE IF @tipo = 5
    BEGIN
        SELECT id_tipo_bo as 'id', nombre_bo as 'valor' FROM tb_ctr_tipo_bo_rk_c WHERE activo = 1 AND id_tipo_contrato = @condicion
    END
    ELSE IF @tipo = 6
    BEGIN
        SELECT id_tipo_golden as 'id', nombre_golden as 'valor' FROM tb_ctr_tipo_golden_parent_rk_c WHERE activo = 1 AND id_tipo_bo = @condicion
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_crear_custodio]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Crear
CREATE PROCEDURE [dbo].[sp_ctr_crear_custodio]
    @nombre_custodio NVARCHAR(50),
    @activo BIT
AS
BEGIN
    INSERT INTO tb_ctr_custodio_rk_c (nombre_custodio, activo)
    VALUES (@nombre_custodio, @activo)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_crear_obtener_modificar_contratos]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Procedimiento para crear, obtener y modificar contratos
CREATE PROCEDURE [dbo].[sp_ctr_crear_obtener_modificar_contratos]
    @accion CHAR(1), -- 'C' para crear, 'M' para modificar, 'T' para obtener todos, 'O' para obtener uno
    @id_contratos INT = NULL,
    @id_tipo_cliente INT = NULL,
    @cliente VARCHAR(MAX) = NULL,
    @contrato VARCHAR(MAX) = NULL,
    @nombre_cliente VARCHAR(MAX) = NULL,
    @id_fuente INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    IF @accion = 'C'
    BEGIN
        INSERT INTO [dbo].[tb_ctr_contratos_c] (id_tipo_cliente, cliente, contrato, nombre_cliente, id_fuente)
        VALUES (@id_tipo_cliente, @cliente, @contrato, @nombre_cliente, @id_fuente);
    END
    ELSE IF @accion = 'M' AND @id_contratos IS NOT NULL
    BEGIN
        UPDATE [dbo].[tb_ctr_contratos_c]
        SET id_tipo_cliente = @id_tipo_cliente,
            cliente = @cliente,
            contrato = @contrato,
            nombre_cliente = @nombre_cliente,
            id_fuente = @id_fuente
        WHERE id_contratos = @id_contratos;
    END
    ELSE IF @accion = 'T'
    BEGIN
        SELECT * FROM [dbo].[tb_ctr_contratos_c];
    END
    ELSE IF @accion = 'O' AND @id_contratos IS NOT NULL
    BEGIN
        SELECT * FROM [dbo].[tb_ctr_contratos_c] WHERE id_contratos = @id_contratos;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_crear_obtener_modificar_fuentes]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Procedimiento para crear, obtener y modificar fuentes
CREATE PROCEDURE [dbo].[sp_ctr_crear_obtener_modificar_fuentes]
    @accion CHAR(1), -- 'C' para crear, 'M' para modificar, 'T' para obtener todas
    @id_fuente INT = NULL,
    @nombre_fuente VARCHAR(150) = NULL,
    @estatus BIT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    IF @accion = 'C'
    BEGIN
        INSERT INTO [dbo].[tb_ctr_fuentes_c] (nombre_fuente, estatus)
        VALUES (@nombre_fuente, @estatus);
    END
    ELSE IF @accion = 'M' AND @id_fuente IS NOT NULL
    BEGIN
        UPDATE [dbo].[tb_ctr_fuentes_c]
        SET nombre_fuente = @nombre_fuente,
            estatus = @estatus
        WHERE id_fuente = @id_fuente;
    END
    ELSE IF @accion = 'T'
    BEGIN
        SELECT * FROM [dbo].[tb_ctr_fuentes_c];
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_crear_obtener_modificar_tipoCliente]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Procedimiento para crear, obtener y modificar tipos de cliente
CREATE PROCEDURE [dbo].[sp_ctr_crear_obtener_modificar_tipoCliente]
    @accion CHAR(1), -- 'C' para crear, 'M' para modificar, 'T' para obtener todos
    @id_tipo_cliente INT = NULL,
    @nombre_tipo VARCHAR(200) = NULL,
    @estatus BIT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    IF @accion = 'C'
    BEGIN
        INSERT INTO [dbo].[tb_ctr_tipo_cliente_c] (nombre_tipo, estatus)
        VALUES (@nombre_tipo, @estatus);
    END
    ELSE IF @accion = 'M' AND @id_tipo_cliente IS NOT NULL
    BEGIN
        UPDATE [dbo].[tb_ctr_tipo_cliente_c]
        SET nombre_tipo = @nombre_tipo,
            estatus = @estatus
        WHERE id_tipo_cliente = @id_tipo_cliente;
    END
    ELSE IF @accion = 'T'
    BEGIN
        SELECT * FROM [dbo].[tb_ctr_tipo_cliente_c];
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_crear_port_group]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Crear
CREATE PROCEDURE [dbo].[sp_ctr_crear_port_group]
    @id_tipo_port INT,
    @id_tipo_bo INT,
    @activo BIT
AS
BEGIN
    INSERT INTO tb_ctr_port_group_rk_w (id_tipo_port, id_tipo_bo, activo)
    VALUES (@id_tipo_port, @id_tipo_bo, @activo)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_crear_portafolio_activo_samoa]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Crear
CREATE PROCEDURE [dbo].[sp_ctr_crear_portafolio_activo_samoa]
    @bo_code NVARCHAR(50),
    @contrato NVARCHAR(50),
    @denominacion NVARCHAR(255),
    @moneda NVARCHAR(10),
    @numero_contrato NVARCHAR(50),
    @denominacion_contrato NVARCHAR(255),
    @fecha_contrato DATE,
    @tipo_port NVARCHAR(255),
    @tipo_custodio NVARCHAR(255),
    @tipo_fondo NVARCHAR(255),
    @tipo_bo_code NVARCHAR(255),
    @contrato_externo NVARCHAR(50),
    @tipo_contrato NVARCHAR(50),
    @tipo_golden_parent NVARCHAR(255),
    @external_address NVARCHAR(255)
AS
BEGIN
    INSERT INTO tb_ctr_portafolio_activo_samoa_w
    (bo_code, contrato, denominacion, moneda, numero_contrato, denominacion_contrato, fecha_contrato, tipo_port, tipo_custodio, tipo_fondo, tipo_bo_code, contrato_externo, tipo_contrato, tipo_golden_parent, external_address)
    VALUES
    (@bo_code, @contrato, @denominacion, @moneda, @numero_contrato, @denominacion_contrato, @fecha_contrato, @tipo_port, @tipo_custodio, @tipo_fondo, @tipo_bo_code, @contrato_externo, @tipo_contrato, @tipo_golden_parent, @external_address)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_crear_tipo_bo]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Crear
CREATE PROCEDURE [dbo].[sp_ctr_crear_tipo_bo]
    @nombre_bo NVARCHAR(50),
    @id_tipo_contrato INT,
    @activo BIT
AS
BEGIN
    INSERT INTO tb_ctr_tipo_bo_rk_c (nombre_bo, id_tipo_contrato, activo)
    VALUES (@nombre_bo, @id_tipo_contrato, @activo)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_crear_tipo_golden_parent]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Crear
CREATE PROCEDURE [dbo].[sp_ctr_crear_tipo_golden_parent]
    @nombre_golden_parent NVARCHAR(50),
    @activo BIT
AS
BEGIN
    INSERT INTO tb_ctr_tipo_golden_parent_rk_c (nombre_golden, activo)
    VALUES (@nombre_golden_parent, @activo)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_crear_usuario]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Crear
CREATE PROCEDURE [dbo].[sp_ctr_crear_usuario]
    @nombre_usuario NVARCHAR(50),
    @email NVARCHAR(100),
    @password NVARCHAR(255),
    @rol NVARCHAR(50),
    @activo BIT
AS
BEGIN
    INSERT INTO tb_ctr_usuarios_w (nombre_usuario, email, password, rol, activo)
    VALUES (@nombre_usuario, @email, @password, @rol, @activo)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_eliminar_custodio]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Eliminar
CREATE PROCEDURE [dbo].[sp_ctr_eliminar_custodio]
    @id_custodio INT
AS
BEGIN
    DELETE FROM tb_ctr_custodio_rk_c
    WHERE id_custodio = @id_custodio
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_eliminar_port_group]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Eliminar
CREATE PROCEDURE [dbo].[sp_ctr_eliminar_port_group]
    @id_port_group INT
AS
BEGIN
    DELETE FROM tb_ctr_port_group_rk_w
    WHERE id_port_group = @id_port_group
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_eliminar_portafolio_activo_samoa]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Eliminar
CREATE PROCEDURE [dbo].[sp_ctr_eliminar_portafolio_activo_samoa]
    @id INT
AS
BEGIN
    DELETE FROM tb_ctr_portafolio_activo_samoa_w
    WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_eliminar_tipo_bo]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Eliminar
CREATE PROCEDURE [dbo].[sp_ctr_eliminar_tipo_bo]
    @id_tipo_bo INT
AS
BEGIN
    DELETE FROM tb_ctr_tipo_bo_rk_c
    WHERE id_tipo_bo = @id_tipo_bo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_eliminar_tipo_golden_parent]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Eliminar
CREATE PROCEDURE [dbo].[sp_ctr_eliminar_tipo_golden_parent]
    @id_tipo_golden_parent INT
AS
BEGIN
    DELETE FROM tb_ctr_tipo_golden_parent_rk_c
    WHERE id_tipo_golden = @id_tipo_golden_parent
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_eliminar_usuario]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Eliminar
CREATE PROCEDURE [dbo].[sp_ctr_eliminar_usuario]
    @id_usuario INT
AS
BEGIN
    DELETE FROM tb_ctr_usuarios_w
    WHERE id_usuario = @id_usuario
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_obtener_configuraciones_sistema]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ctr_obtener_configuraciones_sistema]
AS
BEGIN
    SELECT s.configuracion,
	s.varlo as Valor,
	s.estatus,
	ts.nombre_sistema as Sistema
	FROM tb_ctr_configuracion_sistema_w s
	inner join tb_ctr_sistema_c ts on s.id_sistema=ts.id_sistema

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_obtener_custodio]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ctr_obtener_custodio]
AS
BEGIN
    SELECT c.id_tipo_custodio as id,
	c.nombre_custodio as 'Nombre custodio',
	p.nombre_plantilla as 'Nombre plantilla',
	c.relacion as 'Relación',
	c.activo as activo,
	tc.nombre_contrato as 'Tipo contrato'
	FROM tb_ctr_tipo_custodio_rk_c c
	inner join tb_ctr_valor_plantilla_rk_c p on c.id_valor_plantilla=p.id_valor_plantilla
	inner join tb_ctr_tipo_contrato_rk_c tc on c.id_contrato= tc.id_tipo_contrato
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_obtener_modificar_configuraciones_sistema]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ctr_obtener_modificar_configuraciones_sistema] 
				(
				@accion as char(2), 
				@id_sistema as int=null, 
				@Plantilla_Draf varchar (50) =null,
				@Draft_Creado varchar (50)=null,
				@Email_To varchar (50) =null , 
				@Password_To varchar (50) = NULL,
				@image_status varchar(50) = null
				--@escribir_log INT = NULL,
				--@ruta_log VARCHAR(200) = NULL,
				--@ruta_sesion_temporal varchar(200) =NULL
				)
AS
BEGIN
    SET NOCOUNT ON;
	--execute sp_ctr_obtener_modificar_configuraciones_sistema  'G'
    IF @accion = 'G' -- Obtener la configuración
    BEGIN
        SELECT configuracion, varlo
        FROM dbo.tb_ctr_configuracion_sistema_w
        WHERE id_sistema=@id_sistema and estatus=1
    END
    ELSE IF @accion = 'U' -- Actualizar la configuración
    BEGIN
        -- Actualizamos los registros correspondientes
        IF @Plantilla_Draf IS NOT NULL
        BEGIN
            UPDATE dbo.tb_ctr_configuracion_sistema_w
            SET varlo = @Plantilla_Draf
            WHERE configuracion = 'Plantilla_Draft'
			and id_sistema=@id_sistema and estatus=1
        END

        IF @Draft_Creado IS NOT NULL
        BEGIN
            UPDATE dbo.tb_ctr_configuracion_sistema_w
            SET varlo = @Draft_Creado
            WHERE configuracion = 'Draft_Creado'
			and id_sistema=@id_sistema and estatus=1
        END

        IF @Email_To IS NOT NULL
        BEGIN
            UPDATE dbo.tb_ctr_configuracion_sistema_w
            SET varlo = @Email_To
            WHERE configuracion = 'Email_To'
			and id_sistema=@id_sistema and estatus=1
        END

        IF @Password_To IS NOT NULL
        BEGIN
            UPDATE dbo.tb_ctr_configuracion_sistema_w
            SET varlo = @Password_To
            WHERE configuracion = 'Password_To'
			and id_sistema=@id_sistema and estatus=1
        END

		 IF @image_status IS NOT NULL
        BEGIN
            UPDATE dbo.tb_ctr_configuracion_sistema_w
            SET varlo = @image_status
            WHERE configuracion = 'image_status'
			and id_sistema=@id_sistema and estatus=1
        END

        -- Devolvemos la configuración actualizada
        SELECT configuracion, varlo
        FROM dbo.tb_ctr_configuracion_sistema_w
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_obtener_port_group]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Obtener todos
CREATE PROCEDURE [dbo].[sp_ctr_obtener_port_group]
AS
BEGIN
    SELECT 
	pg.id_port_group as id,
	tg.nombre_group as 'Tipo Port Group',
	bo.nombre_bo as 'Tipo de BO',
	pg.activo
	FROM tb_ctr_port_group_rk_w pg
	inner join tb_ctr_tipo_group_rk_c tg on pg.id_tipo_port = tg.id_tipo_gruop
	inner join tb_ctr_tipo_bo_rk_c bo on pg.id_tipo_bo=bo.id_tipo_bo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_obtener_portafolio_activo_samoa]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Obtener todos
CREATE PROCEDURE [dbo].[sp_ctr_obtener_portafolio_activo_samoa]
AS
BEGIN
    SELECT * FROM tb_ctr_portafolio_activo_samoa_w
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_obtener_sesion]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ctr_obtener_sesion]
    @usuario VARCHAR(50),
    @email VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;
	--execute sp_ctr_obtener_sesion 'Carlos Alberto','carlosalberto.barreralugo1230@hotmail.com'
    --select * from tb_ctr_usuario_w
       SELECT 
        id_usuario, 
        id_rol_usuario as id_tipoUser, 
        nombre_usuario as nombre,
		estatus,
		id_sistema,
		emial as email
    FROM tb_ctr_usuario_w
    WHERE nombre_usuario = @usuario AND emial = @email;
END;
 
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_obtener_tipo_bo]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Obtener todos
CREATE PROCEDURE [dbo].[sp_ctr_obtener_tipo_bo]
AS
BEGIN
    SELECT bo.nombre_bo as 'Nombre BO',
	tc.nombre_contrato as 'Tipo de Contrato',
	bo.activo
	FROM tb_ctr_tipo_bo_rk_c bo
	inner join tb_ctr_tipo_contrato_rk_c tc on bo.id_tipo_contrato = tc.id_tipo_contrato
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_obtener_tipo_golden_parent]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Obtener todos
CREATE PROCEDURE [dbo].[sp_ctr_obtener_tipo_golden_parent]
AS
BEGIN
    SELECT 
	nombre_golden as 'Nombre Golden Parent',
	bo.nombre_bo as 'Tipo de BO',
	g.activo
	FROM tb_ctr_tipo_golden_parent_rk_c g
	inner join tb_ctr_tipo_bo_rk_c bo on g.id_tipo_bo = bo.id_tipo_bo
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_obtener_usuarios]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Obtener todos
CREATE PROCEDURE [dbo].[sp_ctr_obtener_usuarios]
AS
BEGIN
    SELECT * FROM tb_ctr_usuario_w
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ctr_portgroup_custodio]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ctr_portgroup_custodio]
    @tipoContratoId INT,
    @tipoBoId INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Obtener "Tipo Port Group"
    SELECT 'PortGroup' AS Tipo, pg.id_port_group AS 'id', tp.nombre_valor AS 'valor'
    FROM tb_ctr_port_group_rk_w pg
    JOIN tb_ctr_tipo_valor_rk_c tp ON pg.id_tipo_port = tp.id_tipo_valot
    WHERE pg.id_tipo_bo = @tipoBoId
      AND pg.activo = 1

    UNION ALL

    -- Obtener "Custodio"
    SELECT 'Custodio' AS Tipo, tc.id_tipo_custodio AS 'id', tc.nombre_custodio AS 'valor'
    FROM tb_ctr_tipo_custodio_rk_c tc
    WHERE tc.id_contrato = @tipoContratoId
      AND tc.activo = 1
END
GO
/****** Object:  StoredProcedure [dbo].[sp_guardar_contrato]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_guardar_contrato]
    @bo_code NVARCHAR(50),
    @contrato NVARCHAR(50),
    @denominacion NVARCHAR(255),
    @moneda NVARCHAR(10),
    @numero_contrato NVARCHAR(50),
    @denominacion_contrato NVARCHAR(255),
    @tipo_port NVARCHAR(255),
    @tipo_custodio NVARCHAR(255),
    @tipo_fondo NVARCHAR(255) = NULL,
    @tipo_bo_code NVARCHAR(50) = NULL,
    @contrato_externo NVARCHAR(50) = NULL,
    @tipo_contrato NVARCHAR(50),
    @tipo_golden_parent NVARCHAR(255),
    @external_address NVARCHAR(255) = NULL -- Default value
AS
BEGIN
    SET NOCOUNT ON;

    -- Usar la fecha actual si no se proporciona una fecha específica
    DECLARE @fecha NVARCHAR(10) = ISNULL(GETDATE(), CONVERT(NVARCHAR(10), GETDATE(), 103));

    -- Verificar si el contrato ya existe
    IF EXISTS (SELECT 1 FROM tb_ctr_portafolio_activo_samoa_w WHERE contrato = @contrato)
    BEGIN
        -- Actualizar el contrato existente
        UPDATE tb_ctr_portafolio_activo_samoa_w
        SET 
            bo_code = @bo_code,
            denominacion = @denominacion,
            moneda = @moneda,
            numero_contrato = @numero_contrato,
            denominacion_contrato = @denominacion_contrato,
            fecha_contrato = @fecha,
            tipo_port = @tipo_port,
            tipo_custodio = @tipo_custodio,
            tipo_fondo = @tipo_fondo,
            tipo_bo_code = @tipo_bo_code,
            contrato_externo = @contrato_externo,
            tipo_contrato = @tipo_contrato,
            tipo_golden_parent = @tipo_golden_parent,
            external_address = @external_address
        WHERE contrato = @contrato;
    END
    ELSE
    BEGIN
        -- Insertar un nuevo contrato
        INSERT INTO tb_ctr_portafolio_activo_samoa_w (
            bo_code, contrato, denominacion, moneda, numero_contrato,
            denominacion_contrato, fecha_contrato, tipo_port, tipo_custodio,
            tipo_fondo, tipo_bo_code, contrato_externo, tipo_contrato, 
            tipo_golden_parent, external_address
        ) VALUES (
            @bo_code, @contrato, @denominacion, @moneda, @numero_contrato,
            @denominacion_contrato, @fecha, @tipo_port, @tipo_custodio,
            @tipo_fondo, @tipo_bo_code, @contrato_externo, @tipo_contrato,
            @tipo_golden_parent, @external_address
        );
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GuardarDatos]    Script Date: 03/06/2024 10:21:39 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GuardarDatos]
    @tipoContratoId INT,
    @tipoFondoId INT = NULL,
    @tipoBoCodeId INT,
    @goldenParentId INT,
    @portGroups VARCHAR(MAX),
    @custodioId INT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO tb_ctr_portafolio_activo_samoa_w (
        tipo_contrato_id, 
        tipo_fondo_id, 
        tipo_bo_code_id, 
        golden_parent_id, 
        port_groups, 
        custodio_id
    )
    VALUES (
        @tipoContratoId, 
        @tipoFondoId, 
        @tipoBoCodeId, 
        @goldenParentId, 
        @portGroups, 
        @custodioId
    );
END
GO
