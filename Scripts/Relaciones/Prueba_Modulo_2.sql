drop table  if exists historial_movimientos;
drop table  if exists productos_prueba;
drop table  if exists categorias;

create table productos_prueba(
	id char(5) not null,
	nombre char (50) not null,
	precio_venta money not null,
	precio_compra money not null,
	id_categoria char(4) not null,
	constraint productos_prueba_pk primary key (id) 
);

create table categorias(
	id_categoria char(4) not null,
	nombre char (50) not null,
	constraint categorias_pk primary key (id_categoria) 
);

create table historial_movimientos(
	id_mov int not null,
	id_producto char(5) not null,
	cantidad int not null,
	fecha_movimiento date not null,
	constraint historial_movimientos_pk primary key (id_mov) 
);

alter table productos_prueba
add constraint productos_categorias_fk
foreign key (id_categoria)
references categorias(id_categoria);

alter table historial_movimientos
add constraint productos_historial_movimientos_fk
foreign key (id_producto)
references productos_prueba(id);

insert into categorias (id_categoria,nombre)
values ('C001','BEBIDAS');
insert into categorias (id_categoria,nombre)
values ('C002','SNACKS');
insert into categorias (id_categoria,nombre)
values ('C003','GOLOSINAS');

insert into productos_prueba (id, nombre,precio_venta,precio_compra,id_categoria)
values ('P0001','COCA COLA 300 ML',0.7,0.55,'C001');
insert into productos_prueba (id, nombre,precio_venta,precio_compra,id_categoria)
values ('P0002','COCA COLA 1000 ML',1,0.8,'C001');
insert into productos_prueba (id, nombre,precio_venta,precio_compra,id_categoria)
values ('P0003','DORITOS 50G',0.5,0.42,'C002');
insert into productos_prueba (id, nombre,precio_venta,precio_compra,id_categoria)
values ('P0004','MANICHO',0.25,0.21,'C003');
insert into productos_prueba (id, nombre,precio_venta,precio_compra,id_categoria)
values ('P0005','TANGO',0.5,0.42,'C003');

insert into historial_movimientos (id_mov,id_producto,cantidad,fecha_movimiento)
values (1,'P0001',10,'28/10/2022 9:45');
insert into historial_movimientos (id_mov,id_producto,cantidad,fecha_movimiento)
values (2,'P0002',-3,'28/10/2022 10:49');
insert into historial_movimientos (id_mov,id_producto,cantidad,fecha_movimiento)
values (3,'P0001',5,'28/10/2022 12:23');

select * from productos_prueba;
select * from categorias;
select * from historial_movimientos;

