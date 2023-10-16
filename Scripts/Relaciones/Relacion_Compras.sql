select * from clientes

delete from clientes

drop table compras

create table compras(
	id_compras int,
	cedula char (10) not null,
	fecha_compra date not null,
	monto decimal (10,2)not null,
	constraint compras_key primary key (id_compras)
)

insert into compras(id_compras,cedula,fecha_compra,monto)
values (001,'1762678631','13/10/2023',12.3);
insert into compras(id_compras,cedula,fecha_compra,monto)
values (002,'1723231212','12/03/2023',412.3);
insert into compras(id_compras,cedula,fecha_compra,monto)
values (003,'1762678631','14/02/2023',123.3);
insert into compras(id_compras,cedula,fecha_compra,monto)
values (004,'1762678631','17/05/2023',76.4);
insert into compras(id_compras,cedula,fecha_compra,monto)
values (005,'1762678631','20/05/2023',65.87);
insert into compras(id_compras,cedula,fecha_compra,monto)
values (006,'1762678631','02/08/2023',736.6);
insert into compras(id_compras,cedula,fecha_compra,monto)
values (007,'1723231212','03/04/2023',759.3);
insert into compras(id_compras,cedula,fecha_compra,monto)
values (008,'1723231212','07/07/2023',635.5);
insert into compras(id_compras,cedula,fecha_compra,monto)
values (009,'1723231212','06/05/2023',345.5);
insert into compras(id_compras,cedula,fecha_compra,monto)
values (010,'1723231212','12/03/2023',6453.8);


select nombre, apellido from clientes
where cedula like '%7%'

select * from clientes
where cedula = '1723231212'

