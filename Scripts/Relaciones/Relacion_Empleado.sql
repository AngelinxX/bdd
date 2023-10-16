--crea la tabla clientes y relaciones
drop table empleado 

select * from registro_entrada
delete from registro_entrada

alter table registro_entrada
add column codigo_empleado int not null

create table empleado(
	codigo_empleado int not null,
	nombre varchar (25) not null,
	fecha date not null,
	hora time not null,
	constraint empleado_pk primary key(codigo_empleado)
)

alter table registro_entrada
add constraint registro_entrada_empleado_fk 
foreign key (codigo_empleado)
references empleado(codigo_empleado)

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values ('2135436','1234534612','12/08/2012','06:12',001);

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values ('3252346','1234513567','04/09/2012','10:00',002);

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values ('9897134','1721321452','10/09/2012','08:04',001);

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values ('8978234','1723492134','10/06/2012','18:55',002);

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values ('8718233','1782132454','10/08/2012','20:20',002);

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values ('2134532','1712314952','12/08/2012','09:06',002);

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values ('1237843','1732143244','12/06/2012','04:09',001);

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values ('8412477','1723787342','11/08/2012','16:08',001);

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values ('3127463','1724264673','11/08/2012','13:10',002);

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values ('7823164','1723143463','11/06/2012','11:01',001);

insert into empleado(codigo_empleado,nombre,fecha,hora)
values('001','Mariana Felix','01/09/1999','11:59');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values('002','Miguel Estupinan','02/12/1989','10:00');

select  re.cedula_empleado,re.fecha,em.nombre
from registro_entrada re, empleado em
where re.codigo_empleado = em.codigo_empleado
and re.fecha between '2023/08/01' and '2023/08/31'
or re.cedula_empleado like '17%'
and re.hora between '08:00' and '12:00'
or re.fecha between '2023/10/06' and '2023/10/20'
or re.cedula_empleado like '%08%'
and re.hora between '09:00' and '13:00'

select  re.codigo_registro,em.nombre
from registro_entrada re, empleado em
where re.codigo_empleado = em.codigo_empleado
and re.cedula_empleado like '%2132%'