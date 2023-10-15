--crea la tabla cuenta
drop table personas

create table personas(
	cedula char(10)not null,
	nombre char(20),
	apellido char(20),
	estatura int,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint personas_pk primary key (cedula)
)

insert into personas(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values ('1724234576','Messi','Aguinaga',null,null,null,null,null);

insert into personas(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values ('1724654598','Rolando','Perez',null,null,null,null,null);

select * from personas