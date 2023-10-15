--crea la tabla clientes
drop table clientes 

select * from compras

create table clientes(
	cedula char(10),
	nombre varchar (50) not null,
	apellido varchar (50) not null,
	constraint clientes_pk primary key(cedula)
)

alter table compras
add constraint compras_cliente_fk 
foreign key (cedula)
references clientes(cedula)

insert into clientes(cedula,nombre,apellido)
values('1762678631','Angel','Fajardo');
insert into clientes(cedula,nombre,apellido)
values('1723231212','Maria','Tomala');

select * from compras

select * from clientes