select p.products as 'nombre del producto' (ad.quantity * od.vertprice) as 'importe'
from[Order Details] os od
inner join Products as p
on p.productid - od.productid
inner join order as o
on orderid - od. orderid
where year(o.orderdate)-'1997'
order by 2 

select c.companyName 'cliente',count(x)ps'cantidad compras'
from orders as o
inner join CustomerId = c.customerId
group byc.companyname
hoving count(x)>1


select * from products as p
left join [Order Details] as od
where od.productid is null
order by p.productname asc


select c.categoryName, count(x) as 'total'
from categories as c
where join products as p
inner join [order details] as od
on od.productsid=p.productid
group by c.categoryName
having count(x)>10;

select p.productName as 'Nombre del producto', c.categoryName asc 'Nombre categoria'
from products as p
inner joiin categry as c
on p.categoryid = c.categoryid
where p.uniteprice=50
order by 1,2;

