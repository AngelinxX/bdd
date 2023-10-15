--crea la tabla clientes
drop table prestamo 
drop table personas 

select * from personas

delete from personas

create table prestamo(
	cedula char(10),
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	garante varchar (40),
	constraint prestamo_pk primary key(garante)
)

insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1724234576',125.45,'12/12/2022','14:50','EDUARDO JARA');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1724654598',345.65,'23/02/2022','09:23','FERNANDO LUCAS');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1724654598',434.32,'17/10/2022','10:42','FERNANDO BRAVO');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1724234576',684.89,'26/12/2022','12:32','EDUARDO APONTE');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1724234576',1467.78,'17/09/2022','05:23','MARIBEL CABRERA');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1724654598',845.67,'12/05/2022','09:23','SEBASTIÁN ORTEGA');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1724654598',1657.29,'21/12/2022','06:29','ROCÍO VALENCIA');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1724234576',1352.98,'16/08/2022','09:56','ALEJANDRO PICO');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1724654598',764.45,'23/06/2022','18:42','DANIEL MENDOZA');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1724234576',536.65,'23/08/2022','14:50','FABRICIO ALMEIDA');

select * from personas

select * from prestamo