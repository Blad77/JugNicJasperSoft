--levantado de pedido
select 
	c.Categoria,
	p.producto,
	p.precio
from 
Producto p
inner join categoria c
on p.idCategoria = c.idCategoria
order by Categoria, Producto


--carta para el cliente
select  
	r.Region,
	r.Departamento,
	r.Municipio,
	c.idCliente,
	c.cedula,
	c.nombres + ' ' + c.apellidos as nombreapellido,
	c.direccion,
	c.celular,
	case c.idSexo when 'F' THEN 'Estimada Sra.' when 'M' then 'Estimado Sr.' else 'Estimad@'  end + ' ' + c.apellidos as saludo
from cliente c
inner join Region_Departamento_Municipio r
on c.idMunicipio = r.idmunicipio


