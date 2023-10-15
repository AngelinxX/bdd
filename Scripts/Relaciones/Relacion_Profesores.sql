--crea la tabla clientes
drop table profesores 

select * from estudiantes

delete from estudiantes

alter table estudiantes
add column codigo_profesor int

create table profesores(
	codigo int,
	nombre varchar (50) not null,
	constraint profesores_pk primary key(codigo)
)

alter table estudiantes
add constraint profesores_estudiantes_fk 
foreign key (codigo_profesor)
references profesores(codigo)

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1763589765,'Pedro','Gonzalez','p.gonzalez@gmail','13/04/1958',002);

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1723498523,'Alex','Barba','a.barba@gmail','23/06/1978',001);

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1362598362,'Jefferson','Cheza','j.cheza@gmail','08/09/1980',002);

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1892332833,'Edwin','Basantes','e.basantes@gmail','27/08/1982',002);

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1874812405,'Carolina','Perez','c.perez@gmail','17/08/1990',001);

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1782348509,'Domenica','Quinga','d.quinga@gmail','09/09/1978',002);

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1723454205,'Janeth','Chavez','j.chavez@gmail','22/07/1975',001);

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1782374623,'Edison','Gonzalez','e.gonzalez@gmail','30/01/1989',001);

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1765653245,'Byron','cevallos','b.cevallos@gmail','14/01/1989',001);

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1798934235,'Carlos','Novillo','c.novillo@gmail','26/04/1999',001);

insert into profesores(codigo,nombre)
values('001','Mariana Felix');
insert into profesores(codigo,nombre)
values('002','Miguel Estupinan');

select * from estudiantes

select * from profesores