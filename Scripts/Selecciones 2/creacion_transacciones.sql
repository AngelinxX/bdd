--crea tabla transacciones
drop table transacciones

create table transacciones(
	codigo int not null,
	numero_cuenta char (6)not null,
	monto money not null,
	tipo char (1) not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key (codigo)
)

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('1','222003',782.76,'D','27/12/2023','08:31');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('12','222002',72.36,'C','05/12/2023','19:23');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('4','213411',867.42,'D','10/12/2022','05:09');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('11','222004',1089.54,'C','09/06/2021','09:41');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('16','454233',24.75,'D','08/03/2000','07:41');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('8','898232',1967.23,'D','07/02/2023','17:31');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('5','222008',412.21,'D','09/03/1999','14:12');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('6','314354',350.41,'C','08/08/2023','17:59');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('7','222010',125.67,'D','09/09/2023','13:31');

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('19','123244',312.76,'D','03/04/2001','08:31');

select * from transacciones

select * from transacciones where tipo='D'

select * from transacciones where monto between '200.00' and '2000.00'

select codigo,monto,tipo,fecha from transacciones where fecha is not null

update transacciones set tipo = 'T'
where monto between '100.00' and '500.00'
and hora between '14:00' and '20:00'
and extract (month from fecha)= '9'

delete from transacciones
where hora between '14:00' and '18:00'
and extract (month from fecha)= '8'
and extract (year from fecha)= '2023'

select * from transacciones
where hora between '14:00' and '18:00'
and extract (month from fecha)= '8'
and extract (year from fecha)= '2023'

select * from transacciones
where tipo = 'C'
and numero_cuenta between '222001' and '222004'

select * from transacciones
where tipo = 'D'
and numero_cuenta between '222007' and '222010'

select * from transacciones
where codigo between '1' and '5'
and numero_cuenta between '222002' and '22204'
and extract (day from fecha) between '26' and '29'