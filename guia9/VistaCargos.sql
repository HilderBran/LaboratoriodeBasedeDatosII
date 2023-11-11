-- use tinedaElectronica

-- Consulta para unir Direcciones y Cargos
Select 
	emp.idEmpleado,
	emp.nombresEmpleado,
	emp.apellidosEmpleado,
	emp.fechaNacimiento,
	emp.dui,
	emp.ISSS,
	emp.telefono,
	emp.eMail,
	emp.idCargo,
	emp.idDireccion,
	dis.Distrito, 
	mu.Municipio,
	dep.Departamento,
	di.Linea1,
	di.Linea2,
	di.CodigoPostal,
	car.cargo
from Empleados as emp
inner join Direcciones as di on emp.idDireccion = di.idDireccion
inner join Distritos as dis on di.idDistrito = dis.idDistrito
inner join Municipios as mu on dis.idMunicipio = mu.idMunicipio
inner join Departamentos as dep on mu.idDepartamento = dep.idDepartamento
inner join Cargos as car on emp.idCargo = car.idCargo

-- Creacion de VistavcCargos
create view VistaCargos as
Select 
	emp.idEmpleado,
	emp.nombresEmpleado,
	emp.apellidosEmpleado,
	emp.fechaNacimiento,
	emp.dui,
	emp.ISSS,
	emp.telefono,
	emp.eMail,
	emp.idCargo,
	emp.idDireccion,
	dis.Distrito, 
	mu.Municipio,
	dep.Departamento,
	di.Linea1,
	di.Linea2,
	di.CodigoPostal,
	car.cargo
from Empleados as emp
inner join Direcciones as di on emp.idDireccion = di.idDireccion
inner join Distritos as dis on di.idDistrito = dis.idDistrito
inner join Municipios as mu on dis.idMunicipio = mu.idMunicipio
inner join Departamentos as dep on mu.idDepartamento = dep.idDepartamento
inner join Cargos as car on emp.idCargo = car.idCargo

select * from VistaCargos