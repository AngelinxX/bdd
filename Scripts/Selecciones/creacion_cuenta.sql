--crea la tabla cuenta
drop table cuenta

create table cuenta(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuenta_pk primary key (numero_cuenta)
)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('34567','11324','07/08/2023',450.60)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('56345','78234','06/05/2023',574.89)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('78324','67635','20/09/2023',1984.89)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('89812','98778','05/07/2023',7863.90)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('21776','41234','15/08/2023',887.23)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('23445','67231','15/08/2023',240.89)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('78672','31224','28/04/2023',2130.89)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12343','98987','25/07/2023',312.59)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('21344','54234','17/03/2023',892.38)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('32532','12354','29/05/2023',213.67)

select numero_cuenta, saldo from cuenta

select * from cuenta where fecha_creacion >= '21/07/2023'

select numero_cuenta,saldo from cuenta where fecha_creacion >= '21/07/2023'