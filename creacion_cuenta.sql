--crea la tabla cuenta
drop table cuenta

create table cuenta(
	numero_cuenta char(10) not null,
	cedula_propietario char(10) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuenta_pk primary key (numero_cuenta)
)