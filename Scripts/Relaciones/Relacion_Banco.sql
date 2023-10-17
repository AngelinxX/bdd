select * from transacciones

delete from transacciones
delete from banco

drop table transacciones
drop table banco

create table banco(
	codigo_banco int,
	codigo_transaccion int,
	detalle varchar (100) not null,
	constraint banco_key primary key (codigo_banco)
)

insert into banco(codigo_banco,codigo_transaccion,detalle)
values('001','1','Pagos servicios');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values('002','12','Pagos servicios');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values('003','4','Pagos servicios');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values('004','11','Pagos servicios');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values('005','16','Pagos servicios');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values('006','8','Pagos servicios');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values('007','5','Pagos servicios');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values('008','6','Pagos servicios');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values('009','7','Pagos servicios');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values('010','19','Pagos servicios');

select * from transacciones
where tipo = 'C'
and numero_cuenta >= '222001'
and numero_cuenta <= '222004'

select * 
from transacciones 
where codigo in (select codigo_transaccion from banco where codigo_transaccion = '1')

select count (tr.codigo)
from transacciones tr, banco ba
where tr.codigo = ba.codigo_transaccion
and tr.tipo = 'C'


select tr.numero_cuenta, ROUND (AVG(cast (tr.monto as decimal)),2)
from transacciones tr, banco ba
where tr.codigo = ba.codigo_transaccion
group by tr.numero_cuenta