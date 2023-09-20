--crea tabla transacciones
drop table transacciones

create table transacciones(
	codigo int not null,
	numero_cuenta char (5)not null,
	monto money not null,
	tipo char (1) not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key (codigo)
)

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('1231244','43234',782.76,'D','05/12/1978','08:31')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('2138742','12342',72.36,'C','05/12/1978','19:23')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('3124352','21341',22.42,'D','10/12/1990','05:09')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('3245213','98942',32.54,'C','09/06/2021','09:41')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('2412424','45423',24.75,'D','08/03/2000','07:41')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('3123124','89823',67.23,'D','07/02/1989','17:31')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('7421342','78463',412.21,'D','09/03/1999','14:12')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('3214432','31435',67.41,'C','08/09/1998','17:59')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('2145343','98782',65.41,'D','09/09/1995','13:31')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('8124235','12324',312.76,'D','03/04/2001','08:31')

select * from transacciones
