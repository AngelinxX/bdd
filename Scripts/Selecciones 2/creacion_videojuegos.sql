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
values ('1','Resident Evil','Muertos vivientes','10');

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('3','Call of duty','Arenas del tiempor','8');

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('4','Final Fantasy','Juego RPG','9');

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('7','crash','Player VS Player','8');

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('9','Assasin','Asesinatos','4');

insert into videojuegos(codigo,nombre,valoracion)
values ('10','Lost Planet c','7');

insert into videojuegos(codigo,nombre,valoracion)
values ('24','Mario','8');

insert into videojuegos(codigo,nombre,valoracion)
values ('16','Rabbit','10');

select * from videojuegos

select * from videojuegos where nombre like 'C%'

select * from videojuegos where valoracion between '9' and '10'

select * from videojuegos where descripcion is null 

update videojuegos set descripcion = 'Mejor Puntuado'
where valoracion >= '9'

delete from videojuegos
where valoracion < '7'


select * from videojuegos
where nombre like '%c%'
or valoracion = '7'

select * from videojuegos
where codigo between '3' and '7'
or valoracion = '7'

select * from videojuegos
where descripcion = 'Guerra'
and (valoracion > '7'
 and nombre like 'C%')
 or (valoracion>'8'
 and nombre like 'D%')