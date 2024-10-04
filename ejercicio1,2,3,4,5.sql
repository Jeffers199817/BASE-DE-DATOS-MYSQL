-- 1 Esta consulta cuenta el número total de registros en la tabla 'participantes'
	
SELECT  id_participante,nombre FROM participantes;
-- 2 Esta consulta cuenta el número total de registros en la tabla 'participantes'
SELECT COUNT(id_participante) FROM participantes;

-- 3 pregunta

SELECT * FROM participantes;

-- 4 pregunta

SELECT * FROM categoria;

SELECT COUNT(id_participante), sexo FROM participantes WHERE sexo = "Mujer";

-- 5 Pregunta Selecciona el nombre y apellido de los participantes inscritos en la categoría "Caballeros B"
SELECT participantes.id_participante, participantes.nombre, participantes.apellido, categoria.nombre
FROM participantes
INNER JOIN inscripciones ON participantes.id_participante = inscripciones.num_inscripcion
INNER JOIN categoria ON inscripciones.num_inscripcion = categoria.id_categoria
WHERE categoria.nombre = 'Caballeros B';


-- Ejercicio 6

SELECT participantes.nombre, participantes.apellido , participantes.edad FROM participantes WHERE edad <= 37 AND edad >=25;
	SELECT COUNT(participantes.id_participante)FROM participantes WHERE edad <= 37 AND edad >=25;


-- EJERCICIO 7 
SELECT inscripciones.num_inscripcion,inscripciones.fecha_insc,inscripciones.abono_inscrip,participantes.nombre, participantes.apellido, categoria.nombre FROM participantes
INNER JOIN 
inscripciones 
ON
inscripciones.num_inscripcion = participantes.id_participante
INNER JOIN categoria 
ON inscripciones.fk_categoria = categoria.id_categoria;
