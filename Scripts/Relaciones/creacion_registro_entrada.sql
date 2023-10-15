--crea tabla registro_entrada
drop table registro_entrada

create table registro_entrada(
	codigo_registro int not null,
	cedula_empleado char (10) not null,
	fecha date not null,
	hora time not null,
	constraint registro_entrada_pk primary key (codigo_registro)
)

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('2135436','1234534612','12/08/2012','06:12');

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('3252346','1234513567','04/09/2012','10:00');

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('9897134','1721321452','10/09/2012','08:04');

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('8978234','1723492134','10/06/2012','18:55');

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('8718233','1782132454','10/08/2012','20:20');

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('2134532','1712314952','12/08/2012','09:06');

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('1237843','1732143244','12/06/2012','04:09');

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('8412477','1723787342','11/08/2012','16:08');

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('3127463','1724264673','11/08/2012','13:10');

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('7823164','1723143463','11/06/2012','11:01');

select * from registro_entrada

select cedula_empleado,fecha,hora from registro_entrada

select * from registro_entrada where hora between '07:00' and '14:00'

select * from registro_entrada where hora >= '08:00'

update registro_entrada set cedula_empleado = '082345679'
where extract (month from fecha)= '08' 

delete from  registro_entrada
where extract(month from fecha) = '6'

select * from registro_entrada
where extract (month from fecha)= '9'
or cedula_empleado like '17%'

select * from registro_entrada
where extract (month from fecha)= '8'
and cedula_empleado like '17%'
and hora between '08:00' and '12:00'

select * from registro_entrada
where (extract (month from fecha)= '8'
and cedula_empleado like '17%'
and hora between '08:00' and '12:00')
or (extract (month from fecha)= '9'
and cedula_empleado like '08%'
and hora between '09:00' and '13:00')