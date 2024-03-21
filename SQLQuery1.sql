-- PROCEDIMIENTOS ALMACENADOS

use NORTHWND
go

--SP pasa visualizar los clientes
create proc visualizarClientes
as
select * from Customers
end
go

Alter create proc visualizarClientes
as
select * from Customers
end
go

--eliminar sp
drop proc visualizarClientes

--Ejecutar so
exec proc visualizarClientes
execute proc visualizarClientes
go

-- cambiar un sp 
create proc listaclientesporciudad
@cuidad nvarchar(15)
as
begin
select  * from Customers
where City - @cuidad
end
go

exec listaclientesporciudad

--Realizar un sp para Calcular el Total de una orden.
CREATE PROCEDURE CalcularTotalOrden
    @NumeroOrden INT
AS
BEGIN
    DECLARE @Total DECIMAL(18, 2)
    SELECT @Total = SUM(UnitPrice * Quantity)
    FROM [Order Details]
    WHERE  = @NumeroOrden
	SELECT @Total AS TotalOrden
END


--












