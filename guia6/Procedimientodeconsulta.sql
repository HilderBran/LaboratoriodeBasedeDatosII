-- creando un prcedimiento almacenado consulta multitabla
create procedure planillaEmpleado
as 
begin

-- Query que se ejecutara 
	select
	empleado.dui, empleado.ISSS, concat(empleado.nombreEmpleado, ' ',empleado.apellidoEmpleado) as 'Nombre Completo',
	crago.cargo
	from Empleados as empleado, Cargos as crago
	where empleado.idcargo = crago.IDCargo
	order by empleado.idcargo;

end

exec planillaEmpleado