-- Create FUNCTION dbo.fnGetNumClientesByApellidos (@apellido VARCHAR(50))
-- Despues de crear la funcion y agregar "ALTER" DEBEMOS PRESIONAR "CRTL+SHIFT+R"
ALTER FUNCTION dbo.fnGetNumClientesByApellido (@apellido VARCHAR(50))
RETURNS INT
AS
BEGIN

DECLARE @numClientes INT = (
    SELECT COUNT(*)
    FROM dbo.Clientes
    WHERE ApellidosCliente = @apellido
);

RETURN @numClientes;

END;

SELECT dbo.fnGetNumClientesByApellido('Hernández Castillo') Numero_de_cliente_con_el_mismo_apellido ;
