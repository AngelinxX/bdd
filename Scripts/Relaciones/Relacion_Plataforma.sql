--crea la tabla clientes y relacion
drop table plataforma 

select * from videojuegos

create table plataforma(
	id_plataforma int,
	nombre_plataforma varchar (50) not null,
	codigo_plataforma int,
	constraint plataforma_pk primary key(id_plataforma)
)

insert into plataforma(id_plataforma,nombre_plataforma,codigo_plataforma)
values(0001,'Playstation','1');
insert into plataforma(id_plataforma,nombre_plataforma,codigo_plataforma)
values(0002,'xbox','3');
insert into plataforma(id_plataforma,nombre_plataforma,codigo_plataforma)
values(0003,'nintendo','4');

select * from compras

select * from clientes