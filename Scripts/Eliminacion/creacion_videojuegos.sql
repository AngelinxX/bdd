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
values ('123142','Resident Evil','Muertos vivientes','10')

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('432232','Prince of Persia','Arenas del tiempor','7')

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('124322','Final Fantasy','Juego RPG','9')

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('784323','Crash','Player VS Player','8')

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('342423','Assasin','Asesinatos','4')

insert into videojuegos(codigo,nombre,valoracion)
values ('423425','Lost Planet','7')

insert into videojuegos(codigo,nombre,valoracion)
values ('787624','Mario','8')

insert into videojuegos(codigo,nombre,valoracion)
values ('487813','Rabbit','10')

select * from videojuegos

select * from videojuegos where nombre like 'C%'

select * from videojuegos where valoracion between '9' and '10'

select * from videojuegos where descripcion is null 

update videojuegos set descripcion = 'Mejor Puntuado'
where valoracion >= '9'