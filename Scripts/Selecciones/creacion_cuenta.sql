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
values ('34567','11324','05/12/2022',450.60)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('56345','78234','04/09/2022',574.89)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('78324','67635','05/10/2022',1984.89)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('89812','98778','25/06/2022',7863.90)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('21776','41234','20/07/2022',887.23)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('23445','67231','15/08/2022',240.89)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('78672','31224','28/09/2022',2130.89)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12343','98987','12/05/2022',312.59)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('21344','54234','17/07/2022',892.38)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('32532','12354','29/05/2022',213.67)

select * from cuenta
