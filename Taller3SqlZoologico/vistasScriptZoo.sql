-- Vista CuidadorVsAnimal
create view VistaCuidadoresVsAnimales
as
SELECT cuidador.cuidador_id, cuidador.cuidador_nombre, animal.animal_nombre_comun, cuidador.preferencia_horario
from cuidador join especialidadcuidador on cuidador.cuidador_id = especialidadcuidador.cuidador_id
              join familia on especialidadcuidador.familia_id = familia.familia_id
              join animal on familia.familia_id = animal.familia_id;


-- Vista AnimalesSusDietasYHorarios
create view VistaAnimalesSusDietasYHorarios
as
SELECT animal.animal_ID, animal.animal_nombre_comun, actividad.jornada, animal.tamaño, dieta.proteina_gr,
       dieta.carbohidratos_gr, dieta.grasa_gr, dieta.minerales_gr, dieta.fibra_gr
from animal join comportamientoanimales on animal.animal_id = comportamientoanimales.animal_id
            join actividad on comportamientoanimales.comportamiento = actividad.actividad_id
            join dieta on comportamientoanimales.dieta_id = dieta.dieta_id
