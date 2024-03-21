create view vistaConsultal

as

select c.CompanyName as 'Nombre Cliente',
min(o.OrderDate) as 'Fecha Primera compra', sum(od.Quantity od.UnitPrice) as 'Total de compras del cliente' 
from Orders as o
inner join [Order Details] as od
on o. Order ID od.OrderID
inner join Customers as c
on c.CustomerID o.CustomerID
group by c.CompanyName
having sum(od.Quantity od.UnitPrice) >1000

select * from vistaConsulta
where [Nombre Cliente] = 'VaffleJernet'

select sum([total de commpras del cliente]) as total
from vistaConsulta1
Where year ([Fecha de primera compra]) = '1997'