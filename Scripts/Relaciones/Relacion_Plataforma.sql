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

select * 
from videojuegos vi, plataforma pl
where vi.codigo = pl.codigo_plataforma
and vi.descripcion like '%Muertos%' and vi.valoracion > 7
or vi.nombre like 'C%' and vi.valoracion >= 8

select pl.id_plataforma,pl.nombre_plataforma, vi.codigo
from videojuegos vi, plataforma pl
where vi.codigo = pl.codigo_plataforma
and vi.nombre = 'Resident Evil'