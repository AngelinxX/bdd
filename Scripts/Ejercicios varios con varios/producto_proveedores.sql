create table productos(
	codigo int not null,
	nombre  varchar (50) not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)

create table proveedores(
	codigo int not null,
	nombre varchar (50) not null,
	telefono char (10) not null,
	constraint proveedores_pk primary key (codigo)	
)

create table productos_por_proveedor(
	pp_codigo_productos int not null,
	pp_codigo_proveedores int not null,
	pp_precio money not null,
	constraint productos_fk foreign key (pp_codigo_productos) references productos(codigo),
	constraint proveedores_fk foreign key (pp_codigo_proveedores) references proveedores(codigo),
	constraint productos_por_proveedor_pk primary key (pp_codigo_productos,pp_codigo_proveedores)
)

insert into productos(codigo,nombre, stock)
values(100,'Doritos',100);
insert into productos(codigo,nombre, stock)
values(200,'Kchitos',200);
insert into productos(codigo,nombre, stock)
values(300,'Papas',300);
insert into productos(codigo,nombre, stock)
values(400,'Takis',0);

select * from productos

insert into proveedores(codigo,nombre,telefono)
values (1,'Snacks SA.',0993289438);
insert into proveedores(codigo,nombre,telefono)
values (2,'Distrisnacks',0987332465);

select * from proveedores

insert into productos_por_proveedor(pp_codigo_productos,pp_codigo_proveedores,pp_precio)
values (300,1,0.48);
insert into productos_por_proveedor(pp_codigo_productos,pp_codigo_proveedores,pp_precio)
values (300,2,0.49);
insert into productos_por_proveedor(pp_codigo_productos,pp_codigo_proveedores,pp_precio)
values (100,1,0.50);
insert into productos_por_proveedor(pp_codigo_productos,pp_codigo_proveedores,pp_precio)
values (200,1,0.51);
insert into productos_por_proveedor(pp_codigo_productos,pp_codigo_proveedores,pp_precio)
values (400,2,0.50);

select * from productos_por_proveedor


select prod.codigo,prod.nombre,prov.nombre,pp.pp_precio from productos prod,proveedores prov,productos_por_proveedor pp
where prod.codigo = pp.pp_codigo_productos 
and prov.codigo = pp.pp_codigo_proveedores
and prod.codigo = 300

