-- Llenar Cuidador
insert into Cuidador values('42´995.854', 'María Méndez', 'Diurno');
insert into Cuidador values('9´733.201', 'Pedro Pérez', 'Nocturno');
insert into Cuidador values('80´943.410', 'Álvaro Álvarez', 'Diurna');
insert into Cuidador values('100´029.981', 'Cecilia Cubillos', 'Nocturno');


-- Llenar Familia 
insert into Familia values(1, 'Camelidae');
insert into Familia values(2, 'Canidae');
insert into Familia values(3, 'Cheirogalaidae');
insert into Familia values(4, 'Felidae');
insert into Familia values(5, 'Lemuridae');


-- Llenar especialidadCuidador
insert into especialidadCuidador values(1, '42´995.854', 4);
insert into especialidadCuidador values(2, '42´995.854', 2);
insert into especialidadCuidador values(3, '9´733.201', 2);
insert into especialidadCuidador values(4, '9´733.201', 1);
insert into especialidadCuidador values(5, '80´943.410', 5);
insert into especialidadCuidador values(6, '80´943.410', 3);
insert into especialidadCuidador values(7, '100´029.981', 1);
insert into especialidadCuidador values(8, '100´029.981', 5);


-- Llenar Animal
insert into Animal values(1, 'Camello Dromedario', 'Camelus Dromedarius', 1);
insert into Animal values(2, 'Llama', 'Lama Glama', 1);
insert into Animal values(3, 'Ocelote', 'Leopardus Pardalis', 4);
insert into Animal values(4, 'Lemur de Sahamalza', 'Lepilemur Sahamalazensis', 5);
insert into Animal values(5, 'Zorro Gris Suramericano', 'Lycalopex Griseus', 2);
insert into Animal values(6, 'Zorro del Desierto Peruano', 'Lycalopex Sechuare', 2);
insert into Animal values(7, 'Lemur Ratón Pigmeo', 'Microcebus Myonixus', 3);
insert into Animal values(8, 'Lemur Ratón Gigante', 'Mirza Coquereli', 3);
insert into Animal values(9, 'Zorro Orejas de Murcielago', 'Otocyon Megalotis', 2);
insert into Animal values(10, 'León', 'Panthera Leo', 4);
insert into Animal values(11, 'Jaguar', 'Panthera Onca', 4);
insert into Animal values(12, 'Leopardo', 'Panthera Pardus', 4);
insert into Animal values(13, 'Gato Manchado Oxidado', 'Prionalirius Rubiginosus', 4);
insert into Animal values(14, 'Alpaca', 'Vicugna Pacos', 1);
insert into Animal values(15, 'Vicuña', 'Vicugna Vicugna', 1);
insert into Animal values(16, 'Zorro Rojo', 'Vulpes Vulpes', 2);


-- Llenar Dieta
insert into Dieta values(1, 'Hervíbora', 25, 60, 5, 22, 60);
insert into Dieta values(6, 'Frugívora', 10, 100, 25, 40, 80);
insert into Dieta values(5, 'Frugívora', 5.5, 55, 13.75, 22, 44);
insert into Dieta values(7, 'Frugívora', 3.025, 30.25, 7.5625, 12.1, 24.2);
insert into Dieta values(3, 'Carnívora', 60, 10, 45, 55, 15);
insert into Dieta values(2, 'Hervíbora', 20, 200, 15, 25, 180);
insert into Dieta values(11, 'Carnívora', 250, 50, 180, 70, 30);
insert into Dieta values(8, 'Carnívora', 375, 75, 270, 105, 45);
insert into Dieta values(9, 'Insectívora', 120, 27, 90, 45, 7.5);
insert into Dieta values(4, 'Insectívora', 80, 18, 60, 30, 5);
insert into Dieta values(15, 'Carnívora', 150, 75, 85, 65, 24);
insert into Dieta values(12, 'Hervíbora', 22.5, 130, 10, 23.5, 120);


-- Llenar Actividad
insert into Actividad values(1, 'Diurna', '07:00:00');
insert into Actividad values(2, 'Nocturna', '21:00:00');


-- Llenar comportamientoAnimales
insert into comportamientoAnimales values(1, 1, 2, 1);
insert into comportamientoAnimales values(2, 2, 2, 1);
insert into comportamientoAnimales values(3, 3, 15, 2);
insert into comportamientoAnimales values(4, 4, 4, 2);
insert into comportamientoAnimales values(5, 5, 15, 1);
insert into comportamientoAnimales values(6, 6, 15, 1);
insert into comportamientoAnimales values(7, 7, 7, 2);
insert into comportamientoAnimales values(8, 8, 9, 2);
insert into comportamientoAnimales values(9, 9, 15, 2);
insert into comportamientoAnimales values(10, 10, 8, 1);
insert into comportamientoAnimales values(11, 11, 15, 1);
insert into comportamientoAnimales values(12, 12, 11, 2);
insert into comportamientoAnimales values(13, 13, 15, 2);
insert into comportamientoAnimales values(14, 14, 2, 1);
insert into comportamientoAnimales values(15, 15, 12, 1);
insert into comportamientoAnimales values(16, 16, 15, 1);