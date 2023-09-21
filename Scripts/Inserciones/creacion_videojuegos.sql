-- crea tabla videojuegos
drop table videojuegos

create table videojuegos(
	codigo int not null,
	nombre varchar (100) not null,
	descripcion varchar (300),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('123142','Resident Evil','Muertos vivientes','32')

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('432232','Prince of Persia','Arenas del tiempor','24')

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('124322','Final Fantasy','Juego RPG','12')

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('784323','Dota','Player VS Player','14')

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('342423','Assasin','Asesinatos','54')

insert into videojuegos(codigo,nombre,valoracion)
values ('423425','Lost Planet','17')

insert into videojuegos(codigo,nombre,valoracion)
values ('787624','Mario','08')

insert into videojuegos(codigo,nombre,valoracion)
values ('487813','Rabbit','06')

select * from videojuegos