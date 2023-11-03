-- USE tiendaElectronica;
CREATE FUNCTION [dbo].[SumarPrecioUnidadYDescuentoUnidad]()
RETURNS TABLE
AS
RETURN
(
    SELECT
        IDCompra,
        IDProducto,
        IDPedido,
        Cantidad,
		PrecioUnidad,
		descuetoUnidad,
        (PrecioUnidad - DescuetoUnidad) AS PrecioTotal
    FROM
        [dbo].[Compras]
);

SELECT *
FROM [dbo].[SumarPrecioUnidadYDescuentoUnidad]();
