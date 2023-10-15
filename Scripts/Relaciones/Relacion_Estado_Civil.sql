select * from personas

delete from personas

alter table personas
add column estado_civil_codigo char (1) not null

create table estado_civil(
	codigo char (1) not null,
	descripcion varchar (20) not null,
	constraint estado_civil_pk primary key (codigo)
)

alter table personas
add constraint personas_estado_civil_fk 
foreign key (estado_civil_codigo)
references estado_civil(codigo)

insert into personas (cedula,nombre,apellido,estado_civil_codigo)
values ('1723187323','Santiago','Mosquera','U')

select * from personas

insert into estado_civil(codigo, descripcion)
values('U', 'Union Libre');
insert into estado_civil(codigo, descripcion)
values('C', 'Casado');
insert into estado_civil(codigo, descripcion)
values('S', 'Soltero');

select * from estado_civil
