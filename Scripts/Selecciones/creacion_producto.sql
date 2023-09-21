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
values ('321342','Papel','Papel xerox blanco',0.06,'1234')

insert into productos (codigo,nombre,descripcion,precio,stock)
values ('894213','Boligrafo','Boligrafo azul',0.25,'6732')

insert into productos (codigo,nombre,descripcion,precio,stock)
values ('562334','Cuaderno','Cuaderno cuadros 100H',0.45,'125')

insert into productos (codigo,nombre,descripcion,precio,stock)
values ('782134','Carpeta','Carpeta carton rojo',0.11,'62')

insert into productos (codigo,nombre,descripcion,precio,stock)
values ('783272','Archivador','Archivador negro',0.78,'89')

insert into productos (codigo,nombre,precio,stock)
values ('321415','Lapiz',0.09,'235')

insert into productos (codigo,nombre,precio,stock)
values ('781234','Papel Colores',0.05,'9867')

insert into productos (codigo,nombre,precio,stock)
values ('988972','Perforadora',12.56,'56')

select * from productos