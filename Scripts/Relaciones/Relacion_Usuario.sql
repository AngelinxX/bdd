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
values('1762678631','Nataly','Pozo','c','0');
insert into usuario(cedula_propietario,nombre,apellido,tipo_cuenta,limite_credito)
values('1723231212','Andres','Quijije','c','0');
insert into usuario(cedula_propietario,nombre,apellido,tipo_cuenta,limite_credito)
values ('0844124212','Jose','Andrango','d','0');

select cu.numero_cuenta, us.nombre  from
cuenta cu, usuario us
where
cu.cedula_propietario = us.cedula_propietario
and saldo > '100' 
and saldo < '1000'

select *  from cuenta
where fecha_creacion > '2022/09/21' 
and fecha_creacion < '2023/09/21' 

select AVG(cast(saldo as numeric))  from cuenta

select *  from cuenta
where cedula_propietario like '0844124212'

select count (numero_cuenta) from cuenta

select tipo_cuenta, count (tipo_cuenta) from usuario
group by tipo_cuenta
