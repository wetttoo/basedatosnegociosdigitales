--Lengiaje sql de manipulacipon de datos sql-lmd(insert, delete, update and select)
--Seleccionar todos los datos de las tablas categoria

use dbentornosvip

select*from tblcategoria
--agregar una sola fila a tabal categoria

insert into tblcategoria
values (1, 'Carnes frias')
insert into tblcategoria
values (2, 'Lacteos')
insert into tblcategoria
values (3, 'Vinos y licores')
insert into tblcategoria
values (4, 'Ropa')

--insertar varios registros a la vez
insert into tblcategoria
values (7,'Carnes Buenas' ),
(8,'Dulces' ),
(9,'Panaderia' ),
(10,'Salchiconeria' )

use dbentornosvip
select categoriaid, descripcion from tblcategoria

--insertar datos a partir de una consulta
--aCTUALIZACION DE DATOS UTILIZANDO SQL-LMD

select * from 