select * from productos

delete from productos
delete from ventas

drop table ventas

create table ventas(
	id_ventas int,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint ventas_key primary key (id_ventas)
)

insert into ventas(id_ventas,codigo_producto,fecha_venta,cantidad)
values (001,'321342','13/10/2023',12);
insert into ventas(id_ventas,codigo_producto,fecha_venta,cantidad)
values (002,'894213','12/03/2023',412);
insert into ventas(id_ventas,codigo_producto,fecha_venta,cantidad)
values (003,'562334','14/02/2023',123);
insert into ventas(id_ventas,codigo_producto,fecha_venta,cantidad)
values (004,'782134','17/05/2023',76);
insert into ventas(id_ventas,codigo_producto,fecha_venta,cantidad)
values (005,'783272','20/05/2023',65);
insert into ventas(id_ventas,codigo_producto,fecha_venta,cantidad)
values (006,'321415','02/08/2023',736);
insert into ventas(id_ventas,codigo_producto,fecha_venta,cantidad)
values (007,'781234','03/04/2023',759);
insert into ventas(id_ventas,codigo_producto,fecha_venta,cantidad)
values (008,'988972','07/07/2023',635);
insert into ventas(id_ventas,codigo_producto,fecha_venta,cantidad)
values (009,'781234','06/05/2023',345);
insert into ventas(id_ventas,codigo_producto,fecha_venta,cantidad)
values (010,'783272','12/03/2023',6453);

