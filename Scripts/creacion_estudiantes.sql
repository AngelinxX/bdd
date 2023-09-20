--crea tabla estudiantes
drop table estudiantes

create table estudiantes(
	cedula char (10) not null,
	nombre varchar (50) not null,
	apellido varchar (50) not null,
	email varchar (50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key (cedula)
)

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1763589765,'Pedro','Gonzalez','p.gonzalez@gmail','13/04/1958')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1723498523,'Alex','Barba','a.barba@gmail','23/06/1978')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1362598362,'Jefferson','Cheza','j.cheza@gmail','08/09/1980')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1892374833,'Edwin','Basantes','e.basantes@gmail','27/08/1982')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1874812453,'Carolina','Perez','c.perez@gmail','17/08/1990')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1782348509,'Domenica','Quinga','d.quinga@gmail','09/09/1978')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1723454236,'Janeth','Chavez','j.chavez@gmail','22/07/1975')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values (1782374623,'Edison','Gonzalez','e.gonzalez@gmail','30/01/1989')

select * from estudiantes
