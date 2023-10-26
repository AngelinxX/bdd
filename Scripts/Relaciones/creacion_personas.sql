--crea la tabla cuenta
drop table personas

create table personas(
	cedula char(10)not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal(10,2),
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint personas_pk primary key (cedula)
)

alter table prestamo
add constraint personas_prestamo_fk 
foreign key (cedula)
references personas(cedula)

insert into personas(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values ('1724234576','Messi','Aguinaga',150.89,'02/14/1990','14:45',556.89,2);

insert into personas(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values ('1724654598','Rolando','Perez',170.80,'07/08/1997','16:35',8947.90,4);

select * from personas

insert into personas(cedula,nombre,apellido,estatura,cantidad_ahorrada,numero_hijos)
values ('1723827432','Mario','Jimenez',1.90,8947.90,4);

delete from personas where cedula = '1723827432'
