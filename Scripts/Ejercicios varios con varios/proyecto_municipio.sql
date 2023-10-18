create table ciudad(
	id int,
	nombre varchar (45) not null,
	constraint ciudad_pk primary key (id)
)

create table municipio(
	id int,
	nombre varchar (45) not null,
	ciudad_id int,
	constraint municipio_pk primary key (id)
)

create table proyecto(
	id int,
	proyecto varchar (50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	constraint proyecto_pk primary key (id)
)

create table proyecto_municipio(
	municipio_id int not null,
	proyecto_id int not null,
	constraint proyecto_fk foreign (proyecto_id) references proyecto(id)
	constraint municipio_fk foreign (municipio_id) references municipio(id)
	constraint reservas_pk primary key (habitacion,huesped_id)
)

insert into ciudad values   (1,'Quito'),
							(2,'Ambato'),
							(3,'Guayaquil'),
							(4,'Machala'),
							(5,'Manta'),
							(6,'Loja'),
							(7,'Otavalo'),
							(8,'Cuenca'),
							(9,'Latacunga'),
							(10,'Tena');


insert into municipio values (1,'GAD MUNICIPAL QUITO',1),
							 (2,'GAD MUNICIPAL DE CUENCA',8),
							 (3,'GAD MUNICIPALIDAD DE AMBATO',2),
							 (4,'MUNICIPALIDAD DE MACAHALA ',4),
							 (5,'MUNIUCIPIO DE GUAYAQUIL',3),
							 (6,'MUNICIPIO DE OTAVALO',7),
							 (7,'MUNICIPIO DE LOJA',6),
							 (8,'MUNICIPIO DE MANTA',5),
							 (9,'MUNICIPIO DE LATACUNGA',9),
							 (10,'MUNICIPIO DE TENA',10);


insert into proyecto values (1,'Proyectos de Gestión Ambiental',9543.327,'10/02/2022','10/02/2023'),
							(2,'Proyectos en Fomento y Desarrollo Productivo',26553.264,'25/06/2022','10/08/2022'),
							(3,'Proyectos en Cambio Climático',1292.194,'01/02/2021','10/12/2023');
							

insert into proyecto_municipio values (1,1,5),
									  (2,3,5),
									  (3,1,2),
									  (4,2,1),
									  (5,1,4),
									  (6,2,9),
									  (7,1,10),
									  (8,3,6),
									  (9,1,3),
									  (10,2,7);