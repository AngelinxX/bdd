--productos
drop table productos

create table productos(
	codigo int not null,
	nombre varchar (50) not null,
	descripcion varchar (200),
	precio money not null,
	stock int not null,
	constraint producto_pk primary key (codigo) 
)

insert into productos (codigo,nombre,descripcion,precio,stock)
values ('321342','Quaker','Cereal para preparar',2.06,'1234')

insert into productos (codigo,nombre,descripcion,precio,stock)
values ('894213','Boligrafo','Boligrafo azul',4.25,'6732')

insert into productos (codigo,nombre,descripcion,precio,stock)
values ('562334','Quesadillas','Alimento preparado',3.45,'125')

insert into productos (codigo,nombre,descripcion,precio,stock)
values ('782134','Carpeta','Carpeta carton rojo',8.11,'62')

insert into productos (codigo,nombre,descripcion,precio,stock)
values ('783272','Archivador','Archivador negro',5.78,'89')

insert into productos (codigo,nombre,precio,stock)
values ('321415','Lapiz',3.00,'235')

insert into productos (codigo,nombre,precio,stock)
values ('781234','Papel Colores',2.55,'9867')

insert into productos (codigo,nombre,precio,stock)
values ('988972','Perforadora',12.56,'56')

select * from productos

select * from productos where nombre like 'Q%'

select * from productos where descripcion is null

select * from productos where precio between '2.00' and '3.00'

update productos set stock = '0'
where descripcion is null