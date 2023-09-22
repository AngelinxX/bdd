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
values ('34567','09014','07/08/2023',450.60)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('56345','17232','06/05/2023',574.89)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('78324','09412','20/09/2023',1984.89)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('89812','17124','05/07/2023',7863.90)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('21776','10341','15/08/2023',887.23)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('23445','09321','15/08/2023',240.89)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('78672','17234','28/04/2023',2130.89)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12343','09214','25/07/2023',312.59)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('21344','17243','17/03/2023',892.38)

insert into cuenta(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('32532','10124','29/05/2023',213.67)

select * from cuenta 

select numero_cuenta, saldo from cuenta

select * from cuenta where fecha_creacion >= '21/07/2023'

select numero_cuenta,saldo from cuenta where fecha_creacion >= '21/07/2023'

update cuenta set saldo = '10'
where cedula_propietario like '17%'

delete from cuenta
where cedula_propietario like '10%'