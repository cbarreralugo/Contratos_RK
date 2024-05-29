USE [app_contratos]
GO
/****** Object:  Table [dbo].[tb_ctr_contratos_c]    Script Date: 21/05/2024 04:32:11 p. m. ******/
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
/****** Object:  Table [dbo].[tb_ctr_fuentes_c]    Script Date: 21/05/2024 04:32:11 p. m. ******/
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
/****** Object:  Table [dbo].[tb_ctr_tipo_cliente_c]    Script Date: 21/05/2024 04:32:11 p. m. ******/
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
insert into tb_ctr_fuentes_c (id_fuente, nombre_fuente, estatus) VALUES (1,'FRONT NORMAL',1 )
insert into tb_ctr_fuentes_c (id_fuente, nombre_fuente, estatus) VALUES (2,'FRONT VIVES',1 )
insert into tb_ctr_fuentes_c (id_fuente, nombre_fuente, estatus) VALUES (3,'FRONT EDC',1 )
insert into tb_ctr_fuentes_c (id_fuente, nombre_fuente, estatus) VALUES (4,'CITRIX NORMAL',1 )
insert into tb_ctr_fuentes_c (id_fuente, nombre_fuente, estatus) VALUES (5,'CITRIX VIVES',1 )
select * from tb_ctr_fuentes_c
insert into tb_ctr_tipo_cliente_c (id_tipo_cliente,nombre_tipo,estatus) VALUES (1,'BECAS',1)
insert into tb_ctr_tipo_cliente_c (id_tipo_cliente,nombre_tipo,estatus) VALUES (2,'CAJA DE AHORRO',1)
insert into tb_ctr_tipo_cliente_c (id_tipo_cliente,nombre_tipo,estatus) VALUES (3,'F. AHORRO ',1)
insert into tb_ctr_tipo_cliente_c (id_tipo_cliente,nombre_tipo,estatus) VALUES (4,'FINANZAS',1)
insert into tb_ctr_tipo_cliente_c (id_tipo_cliente,nombre_tipo,estatus) VALUES (5,'PENCIONES',1)
insert into tb_ctr_tipo_cliente_c (id_tipo_cliente,nombre_tipo,estatus) VALUES (6,'PPR',1) 
select * from tb_ctr_tipo_cliente_c  

select * from tb_ctr_contratos_c









