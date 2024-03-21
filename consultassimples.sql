USE NORTHWND

select * from Customers

select CompanyName, ContactName, City from Customers

select country from Customers

select distinct country from Customers

-- selecciona el numero de paises de donde son mis clientes (count)

select count (*) from customers 

select count(country) from Customers

select count(distinct country) from Customers

--seleccionas el cliente que tenga un id 1 Anton

select * from Customers
where CustomerID = 'ANTON'

--Seleccionar todos los clientes de mexico

select * from Customers
where country = 'Mexico'

--seleccionar todos los registros de clientes en berlin 

select * from Customers
where City= 'Berlin'

--order by
-- seleccionar todos los productos por precio

select * from Products
order by UnitPrice

--seleccionar todos ls productos por el precio de mayor a menor

select * from Products
order by UnitPrice desc

-- seleccionar todos los productos alfabeticamente

select * from     
Products
order by ProductName

-- seleccionar  todos los clienes x ciudad y por nombre de forma acendente

select Country,CompanyName,City from Customers
ORDER BY Country, CompanyName DESC

-- SELECCIONAR TODOS LOS CLIENTES de espana y que su nombre comiece con G

select CompanyName, Country from Customers
where Country = 'spain' and CompanyName like 'g%' 

-- seleccionar todos los clientes de berlin con codigo postal mayor 

select * from Customers
where Country = 'Germany' and city ='Berlin' and PostalCode>1200 

--seleccionar todos los clientes de espana y que su nombre comience con 
--con g o r

select CompanyName, Country from Customers
where Country = 'Spain' and (CompanyName like 'g%' or CompanyName like 'r%') 

--seleccionar todos los clientes de alemania o espana

select * from Customers
where country ='Germany' or Country = 'Spain'

--seleccionar todos los clientes de berlin y o de noruega que comience con g

select * from Customers
where Country = 'Norway' or City ='Berlin' and (CompanyName like 'g%')

--Seleccionar todos los clientes que no sean de espana
select * from Customers
where not Country = 'spain'

--seleccionar todos los productos que no tengan un precio entre 18 y 20 dolares
select * from Products
where not (UnitPrice>18 and UnitPrice<=20)

select * from Products
where UnitPrice not between 18 and 20

--seleccionar todos los clientes que no son de paris o londres

select * from Customers
where city not in ('paris', 'londo')

--seleccionar todos los clientes con una cuidad con L y segido de tres
--cualqueria

select * from Products
where ProductName like '[act]%'

--seleccionar todos los productos que comiencen de la letra b a la g 

select * from Products
where ProductName like '[b-g]%'

--clausula in()

--seleccionr todos los clientes de alemania, espana, y reino unnido

select * from Customers
where Country in ('germany', 'spain',' uk')

--not in 
--seleccionar todos los clientes que no sean de alemania espana y reino unido




--instruccion between
--seleccionar todos los productos con uun precio entre 10 y 20 dolares

select * from Products
where UnitPrice>=10 and UnitPrice<=20


select * from Products
where UnitPrice between 10 and 20


--Alias de columnas y Alias de Tablas

-- Seleccionar el nombre del producto, su stock y su precio

select ProductName as 'Nombre del Producto',
UnitsInStock as existencia, UnitPrice precio from Products


select ProductName as 'Nombre del Producto',
UnitsInStock as existencia, p.UnitPrice precio 
from Products as p inner join [Order Details] as od
on p.ProductID = od.ProductID


--muestra el precio mas alto de los productos

select max (UnitPrice) as 'Precio maximo' from Products

--muestra el precio minimo de los productos

select min (UnitPrice) as 'Precio minimo' from Products

--seleccionar todas las ordenes de compra

select * from Orders

--seleccionar el numero total de ordenes (count)

select count (*) as 'total de ordenes' from Orders

select count (ShipRegion) as 'total de ordenes' from Orders

--seleccionar todas aquellas ordenes donde la region de envio no sea null

select * from Orders
where ShipRegion is not null 

--seleccionar de forma ascendente los productos por precio 

select * from Products
ORDER BY UnitPrice ASC;

-- seleccionar el numero de precios de los productos
SELECT COUNT(DISTINCT Unitprice) AS NumeroDePrecios
FROM Products;

-- cotar todos los diferentes paises de los clientes

SELECT COUNT(DISTINCT Country) AS 'NumeroDePaises'
FROM Customers

--seleccionar la suma total de cantidades de las ordenes de compra

SELECT SUM(Quantity) AS SumaTotalCantidades
FROM [Order Details]

--seleccionar todos los registros de ordenes details calculando su importe (Campo Calculado)

SELECT *(UnitPrice * Quantity) as ImporteCalculado FROM [OrderDetails]


select * from [Order Details]

--seleccionar su total de la empresa

select sum (UnitPrice * Quantity) as 'total' from [Order Details]


--seleccionar el total de venta del producto chang

SELECT SUM(UnitPrice * Quantity) AS TotalVentasChang FROM [Order Details]
WHERE ProductID = 2

--seleccionar el promedio de los precios de los productos

SELECT AVG(UnitPrice) AS PromedioPrecios
FROM Products


--seleccionar el promedio y el total de venta de los productos 41 60 y 31 

SELECT  SUM(UnitPrice*Quantity) AS TotalVentas
FROM [Order Details]
WHERE ProductID = 41 OR ProductID=60 or ProductID=31

--selecciionar el numero de ordenes realistas entre 1996 y 1997

select count (*) from Orders
where OrderDate between'1996-01-01' and '1997-12-31'

select year (OrderDate)>='1996' and orderDate<='1997'














