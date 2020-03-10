create table Cuidador
	(cuidador_ID varchar(20), 
	cuidador_nombre varchar(80) not null,
	preferencia_horario varchar(10) not null,
	primary key (cuidador_ID));


create table Familia
	(familia_ID numeric(10, 0),
	nom_familia varchar(50) not null,
	primary key (familia_ID)); 


create table especialidadCuidador
	(especialidadCuidador_ID numeric(10, 0),
	cuidador_ID varchar(20),
	familia_ID numeric(10, 0),
	primary key (especialidadCuidador_ID),
	foreign key (cuidador_ID) references Cuidador,
	foreign key (familia_ID) references Familia);
	

create table Animal
	(animal_ID numeric(10, 0),
	animal_nombre_comun varchar(50) not null,
	animal_nombre_tecnico varchar(50) not null,
	familia_ID numeric(10, 0),
	primary key (animal_ID),
	foreign key (familia_ID) references Familia); 

create table Dieta 
	(dieta_ID numeric(10, 0),
	tipo_Dieta varchar(20) not null,
	proteina_gr numeric(10, 2) not null,
	carbohidratos_gr numeric(10, 2) not null,
	grasa_gr numeric(10, 2) not null,
	minerales_gr numeric(10, 2) not null,
	fibra_gr numeric(10, 2) not null,
	primary key (dieta_ID)); 


create table Actividad
	(actividad_ID numeric(10, 0),
	jornada varchar(20) not null,
	horaAlimentacion varchar(10) not null,
	primary key (actividad_ID));	


create table comportamientoAnimales
	(actividadAnimales_ID numeric(10, 0),
	animal_ID numeric(10, 0),
	dieta_ID numeric(10, 0),
	comportamiento numeric(10, 0),
	primary key (actividadAnimales_ID),
	foreign key (comportamiento) references Actividad,
	foreign key (dieta_ID) references Dieta,
	foreign key (animal_ID) references Animal);

