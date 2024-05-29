-- Procedimiento general para llenar un combo
CREATE PROCEDURE sp_ctr_combo
    @tipo CHAR(2) -- 'F' para fuentes, 'TC' para tipo de cliente
AS
BEGIN
    SET NOCOUNT ON;

    IF @tipo = 'F'
    BEGIN
        SELECT id_fuente AS id, nombre_fuente AS nombre FROM [dbo].[tb_ctr_fuentes_c] WHERE estatus = 1;
    END
    ELSE IF @tipo = 'TC'
    BEGIN
        SELECT id_tipo_cliente AS id, nombre_tipo AS nombre FROM [dbo].[tb_ctr_tipo_cliente_c] WHERE estatus = 1;
    END
END
GO

-- Procedimiento para crear, obtener y modificar tipos de cliente
CREATE PROCEDURE sp_ctr_crear_obtener_modificar_tipoCliente
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

-- Procedimiento para crear, obtener y modificar fuentes
CREATE PROCEDURE sp_ctr_crear_obtener_modificar_fuentes
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

USE [app_contratos]
GO

-- Procedimiento para crear, obtener y modificar contratos
CREATE PROCEDURE sp_ctr_crear_obtener_modificar_contratos
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
