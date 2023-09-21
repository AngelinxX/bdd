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
values ('2135436','1234534612','12/08/2012','08:12')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('3252346','1234513567','04/09/2012','08:00')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('9897134','1721321452','10/08/2012','08:04')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('8978234','1723492134','10/08/2012','07:55')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('8718233','1782132454','10/08/2012','08:20')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('2134532','1712314952','12/08/2012','08:06')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('1237843','1732143244','12/08/2012','08:09')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('8412477','1723787342','11/08/2012','08:08')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('3127463','1724264673','11/08/2012','08:10')

insert into registro_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('7823164','1723143463','11/08/2012','08:01')

select * from registro_entrada