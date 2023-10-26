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
values('1724654598',345.65,'02/23/2022','09:23','FERNANDO LUCAS');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1724654598',434.32,'10/17/2022','10:42','FERNANDO BRAVO');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1724234576',684.89,'12/26/2022','12:32','EDUARDO APONTE');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1724234576',1467.78,'09/17/2022','05:23','MARIBEL CABRERA');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1724654598',845.67,'05/12/2022','09:23','SEBASTIÁN ORTEGA');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1724654598',1657.29,'12/21/2022','06:29','ROCÍO VALENCIA');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1724234576',1352.98,'08/16/2022','09:56','ALEJANDRO PICO');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1724654598',764.45,'06/23/2022','18:42','DANIEL MENDOZA');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1724234576',536.65,'08/23/2022','14:50','FABRICIO ALMEIDA');

select pe.cantidad_ahorrada, pr.monto, pr.garante
from prestamo pr, personas pe
where pr.cedula = pe.cedula
and pr.monto > '100.00'
and pr.monto< '1000.00'

select * from personas
where nombre = 'Rolando'

select pe.cedula, sum(pr.monto) 
from personas pe, prestamo pr
where pe.cedula = pr.cedula
and pe.cedula = '1724654598'
group by pe.cedula


select count (pe.numero_hijos) 
from personas pe, prestamo pr
where pe.cedula = pr.cedula
and pe.numero_hijos > '2'
