select * from cuenta

delete from cuenta
delete from usuario

drop table usuario

create table usuario(
	cedula_propietario char (10),
	nombre varchar (25) not null,
	apellido varchar (25) not null,
	tipo_cuenta varchar (20),
	limite_credito decimal (10,2),
	constraint usuario_key primary key (cedula_propietario)
)

alter table cuenta
add constraint usuario_cedula_propietario_fk 
foreign key (cedula_propietario)
references usuario(cedula_propietario)

insert into usuario(cedula_propietario,nombre,apellido,tipo_cuenta,limite_credito)
values('1762678631','Nataly','Pozo','null','0');
insert into usuario(cedula_propietario,nombre,apellido,tipo_cuenta,limite_credito)
values('1723231212','Andres','Quijije','null','0');
insert into usuario(cedula_propietario,nombre,apellido,tipo_cuenta,limite_credito)
values ('0844124212','Jose','Andrango','null','0');

select * from usuario

select * from cuenta