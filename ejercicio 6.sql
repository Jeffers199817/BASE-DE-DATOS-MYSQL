CREATE DATABASE escuela_de_musica;

CREATE TABLE alumnos(
    id_alumnos INT(4) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    apellido VARCHAR(30),
    nombre VARCHAR(30),
    edad INT(3),
    direccion VARCHAR(30),
    telefono VARCHAR(12),
    email VARCHAR(40)); 
    
CREATE TABLE cursos(
    id_curso INT(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(25),
    nivel_habilidad VARCHAR(40),
    tipo_instrumento VARCHAR(30));
    
    
CREATE TABLE inscripciones ( 
    id_inscripcion INT(5) NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    fecha_insc DATE,
    abono_inscrip DOUBLE(4,3),
    fk_id_alumno INT(5),
    fk_id_curso INT(5),
    CONSTRAINT fk_id_alumno FOREIGN KEY (fk_id_alumno) REFERENCES alumnos(id_alumnos),
    CONSTRAINT fk_id_curso FOREIGN KEY (fk_id_curso) REFERENCES cursos(id_curso));



    INSERT INTO alumnos (apellido, nombre, edad, direccion, telefono, email) VALUES
('García', 'Juan', 20, 'Calle Falsa 123', '1234567890', 'juan.garcia@example.com'),
('Martínez', 'Ana', 22, 'Avenida Siempre Viva 456', '0987654321', 'ana.martinez@example.com'),
('López', 'Carlos', 19, 'Calle Luna 789', '1122334455', 'carlos.lopez@example.com'),
-- Add 27 more entries similarly
('Pérez', 'María', 21, 'Calle Sol 101', '6677889900', 'maria.perez@example.com');

INSERT INTO alumnos (apellido, nombre, edad, direccion, telefono, email) VALUES
('García', 'Juan', 20, 'Calle Falsa 123', '1234567890', 'juan.garcia@example.com'),
('Martínez', 'Ana', 22, 'Avenida Siempre Viva 456', '0987654321', 'ana.martinez@example.com'),
('López', 'Carlos', 19, 'Calle Luna 789', '1122334455', 'carlos.lopez@example.com'),
('Pérez', 'María', 21, 'Calle Sol 101', '6677889900', 'maria.perez@example.com'),
('Rodríguez', 'Luis', 23, 'Calle Estrella 202', '3344556677', 'luis.rodriguez@example.com'),
('Fernández', 'Lucía', 20, 'Avenida Libertad 303', '4455667788', 'lucia.fernandez@example.com'),
('Gómez', 'Miguel', 22, 'Calle Victoria 404', '5566778899', 'miguel.gomez@example.com'),
('Sánchez', 'Laura', 19, 'Calle Esperanza 505', '6677889900', 'laura.sanchez@example.com'),
('Díaz', 'Pedro', 21, 'Avenida Paz 606', '7788990011', 'pedro.diaz@example.com'),
('Torres', 'Sofía', 20, 'Calle Alegría 707', '8899001122', 'sofia.torres@example.com'),
('Ramírez', 'Jorge', 23, 'Calle Amistad 808', '9900112233', 'jorge.ramirez@example.com'),
('Flores', 'Elena', 22, 'Avenida Unión 909', '0011223344', 'elena.flores@example.com'),
('Rivera', 'Andrés', 19, 'Calle Progreso 1010', '1122334455', 'andres.rivera@example.com'),
('Gutiérrez', 'Marta', 21, 'Calle Futuro 1111', '2233445566', 'marta.gutierrez@example.com'),
('Ramos', 'Diego', 20, 'Avenida Triunfo 1212', '3344556677', 'diego.ramos@example.com'),
('Morales', 'Clara', 23, 'Calle Victoria 1313', '4455667788', 'clara.morales@example.com'),
('Ortiz', 'Raúl', 22, 'Calle Libertad 1414', '5566778899', 'raul.ortiz@example.com'),
('Jiménez', 'Paula', 19, 'Avenida Esperanza 1515', '6677889900', 'paula.jimenez@example.com'),
('Ruiz', 'Hugo', 21, 'Calle Alegría 1616', '7788990011', 'hugo.ruiz@example.com'),
('Hernández', 'Isabel', 20, 'Calle Amistad 1717', '8899001122', 'isabel.hernandez@example.com'),
('Muñoz', 'Alberto', 23, 'Avenida Paz 1818', '9900112233', 'alberto.munoz@example.com'),
('Castro', 'Carmen', 22, 'Calle Progreso 1919', '0011223344', 'carmen.castro@example.com'),
('Vargas', 'Ricardo', 19, 'Calle Futuro 2020', '1122334455', 'ricardo.vargas@example.com'),
('Álvarez', 'Patricia', 21, 'Avenida Triunfo 2121', '2233445566', 'patricia.alvarez@example.com'),
('Mendoza', 'Manuel', 20, 'Calle Victoria 2222', '3344556677', 'manuel.mendoza@example.com'),
('Romero', 'Gloria', 23, 'Calle Libertad 2323', '4455667788', 'gloria.romero@example.com'),
('Herrera', 'Antonio', 22, 'Avenida Esperanza 2424', '5566778899', 'antonio.herrera@example.com'),
('Medina', 'Rosa', 19, 'Calle Alegría 2525', '6677889900', 'rosa.medina@example.com'),
('Vega', 'José', 21, 'Calle Amistad 2626', '7788990011', 'jose.vega@example.com'),
('Guerrero', 'Teresa', 20, 'Avenida Paz 2727', '8899001122', 'teresa.guerrero@example.com');



INSERT INTO cursos (nombre, nivel_habilidad, tipo_instrumento) VALUES
('Guitarra Básica', 'Principiante', 'Guitarra'),
('Piano Intermedio', 'Intermedio', 'Piano'),
('Batería Avanzada', 'Avanzado', 'Batería'),
-- Add 27 more entries similarly
('Violín Profesional', 'Profesional', 'Violín');

INSERT INTO cursos (nombre, nivel_habilidad, tipo_instrumento) VALUES
('Guitarra Básica', 'Principiante', 'Guitarra'),
('Piano Intermedio', 'Intermedio', 'Piano'),
('Batería Avanzada', 'Avanzado', 'Batería'),
('Violín Profesional', 'Profesional', 'Violín'),
('Flauta Principiante', 'Principiante', 'Flauta'),
('Saxofón Intermedio', 'Intermedio', 'Saxofón'),
('Trompeta Avanzada', 'Avanzado', 'Trompeta'),
('Clarinete Profesional', 'Profesional', 'Clarinete'),
('Bajo Básico', 'Principiante', 'Bajo'),
('Teclado Intermedio', 'Intermedio', 'Teclado'),
('Percusión Avanzada', 'Avanzado', 'Percusión'),
('Canto Profesional', 'Profesional', 'Canto'),
('Arpa Principiante', 'Principiante', 'Arpa'),
('Oboe Intermedio', 'Intermedio', 'Oboe'),
('Trombón Avanzado', 'Avanzado', 'Trombón'),
('Contrabajo Profesional', 'Profesional', 'Contrabajo'),
('Mandolina Básica', 'Principiante', 'Mandolina'),
('Banjo Intermedio', 'Intermedio', 'Banjo'),
('Ukelele Avanzado', 'Avanzado', 'Ukelele'),
('Acordeón Profesional', 'Profesional', 'Acordeón'),
('Viola Principiante', 'Principiante', 'Viola'),
('Cello Intermedio', 'Intermedio', 'Cello'),
('Fagot Avanzado', 'Avanzado', 'Fagot'),
('Corneta Profesional', 'Profesional', 'Corneta'),
('Guitarra Eléctrica Básica', 'Principiante', 'Guitarra Eléctrica'),
('Piano Clásico Intermedio', 'Intermedio', 'Piano Clásico'),
('Batería Jazz Avanzada', 'Avanzado', 'Batería Jazz'),
('Violín Clásico Profesional', 'Profesional', 'Violín Clásico'),
('Flauta Traversa Principiante', 'Principiante', 'Flauta Traversa'),
('Saxofón Alto Intermedio', 'Intermedio', 'Saxofón Alto');



INSERT INTO inscripciones (fecha_insc, abono_inscrip, fk_id_alumno, fk_id_curso) VALUES
('2024-01-15', 100.000, 1, 1),
('2024-01-16', 150.000, 2, 2),
('2024-01-17', 200.000, 3, 3),
-- Add 27 more entries similarly
('2024-02-15', 250.000, 30, 30);


INSERT INTO inscripciones (fecha_insc, abono_inscrip, fk_id_alumno, fk_id_curso) VALUES
('2024-01-15', 100.000, 1, 1),
('2024-01-16', 150.000, 2, 2),
('2024-01-17', 200.000, 3, 3),
('2024-01-18', 120.000, 4, 4),
('2024-01-19', 130.000, 5, 5),
('2024-01-20', 140.000, 6, 6),
('2024-01-21', 110.000, 7, 7),
('2024-01-22', 160.000, 8, 8),
('2024-01-23', 170.000, 9, 9),
('2024-01-24', 180.000, 10, 10),
('2024-01-25', 190.000, 11, 11),
('2024-01-26', 200.000, 12, 12),
('2024-01-27', 210.000, 13, 13),
('2024-01-28', 220.000, 14, 14),
('2024-01-29', 230.000, 15, 15),
('2024-01-30', 240.000, 16, 16),
('2024-01-31', 250.000, 17, 17),
('2024-02-01', 260.000, 18, 18),
('2024-02-02', 270.000, 19, 19),
('2024-02-03', 280.000, 20, 20),
('2024-02-04', 290.000, 21, 21),
('2024-02-05', 300.000, 22, 22),
('2024-02-06', 310.000, 23, 23),
('2024-02-07', 320.000, 24, 24),
('2024-02-08', 330.000, 25, 25),
('2024-02-09', 340.000, 26, 26),
('2024-02-10', 350.000, 27, 27),
('2024-02-11', 360.000, 28, 28),
('2024-02-12', 370.000, 29, 29),
('2024-02-15', 250.000, 30, 30);




-- PREGUNTA 1 

SELECT alumnos.id_alumnos , alumnos.nombre , alumnos.apellido , alumnos.edad , cursos.id_curso,cursos.nombre,cursos.nivel_habilidad,cursos.tipo_instrumento 
FROM alumnos
INNER JOIN inscripciones 
ON alumnos.id_alumnos = inscripciones.fk_id_alumno
INNER JOIN cursos
ON inscripciones.fk_id_curso = cursos.id_curso
WHERE cursos.tipo_instrumento = 'Guitarra' AND cursos.nivel_habilidad = 'Intermedio';




-- PREGUNTA 1 

SELECT alumnos.id_alumnos , alumnos.nombre , alumnos.apellido , alumnos.edad , cursos.id_curso,cursos.nombre,cursos.nivel_habilidad,cursos.tipo_instrumento 
FROM alumnos
INNER JOIN inscripciones 
ON alumnos.id_alumnos = inscripciones.fk_id_alumno
INNER JOIN cursos
ON inscripciones.fk_id_curso = cursos.id_curso
WHERE cursos.tipo_instrumento = 'Guitarra' AND cursos.nivel_habilidad = 'Intermedio';



-- Pregunta 2 

SELECT inscripciones.id_inscripcion , inscripciones.fecha_insc , alumnos.id_alumnos, alumnos.nombre , alumnos.apellido FROM
inscripciones
INNER JOIN alumnos
ON inscripciones.fk_id_curso = alumnos.id_alumnos
WHERE inscripciones.fecha_insc > "2024-01-01";

SELECT inscripciones.id_inscripcion , inscripciones.fecha_insc , alumnos.id_alumnos, alumnos.nombre , alumnos.apellido FROM
inscripciones
INNER JOIN alumnos
ON inscripciones.fk_id_curso = alumnos.id_alumnos
WHERE inscripciones.fecha_insc < "2024-01-01";


SELECT COUNT(alumnos.nombre) , inscripciones.abono_inscrip FROM
inscripciones
INNER JOIN alumnos
ON inscripciones.fk_id_alumno = alumnos.id_alumnos
WHERE inscripciones.abono_inscrip > 2;


SELECT cursos.id_curso, cursos.nombre, cursos.nivel_habilidad , cursos.tipo_instrumento FROM cursos WHERE cursos.nivel_habilidad = "Avanzado";


-- Ejercicio 1 nivel 2 

SELECT alumnos.nombre, alumnos.apellido , cursos.nombre, inscripciones.fecha_insc FROM
alumnos
INNER JOIN inscripciones
ON alumnos.id_alumnos = inscripciones.fk_id_alumno
INNER JOIN cursos 
ON 
 inscripciones.fk_id_curso = cursos.id_curso;
 
 
 -- Ejercicio 2 nivel 2 
 -- Ejercicio 1 nivel 2 

SELECT alumnos.nombre, alumnos.apellido , cursos.nombre, inscripciones.fecha_insc FROM
alumnos
INNER JOIN inscripciones
ON alumnos.id_alumnos = inscripciones.fk_id_alumno
INNER JOIN cursos 
ON 
 inscripciones.fk_id_curso = cursos.id_curso;
 
 
 -- Ejercicio 2 nivel 2 
 
SELECT 
    alumnos.nombre, 
    alumnos.apellido,
    inscripciones.fk_id_alumno,
    inscripciones.fk_id_curso
 
    
FROM 
    alumnos
INNER JOIN 
    inscripciones ON alumnos.id_alumnos = inscripciones.fk_id_alumno
GROUP BY 
    alumnos.id_alumnos, 
    alumnos.nombre, 
    alumnos.apellido
HAVING 
    COUNT(inscripciones.fk_id_curso) > 1;



-- listar los nombres y apellidos de los alumos junto con los nombres de los crusos al os que están incritos 

SELECT inscripciones.id_inscripcion, inscripciones.fecha_insc ,alumnos.id_alumnos, alumnos.nombre, alumnos.apellido, cursos.id_curso, cursos.nombre
FROM alumnos
INNER JOIN 	inscripciones 
ON inscripciones.fk_id_alumno = alumnos.id_alumnos
INNER JOIN cursos
ON cursos.id_curso = inscripciones.fk_id_curso
;

-- OBTENER EL NOMBRE Y APELLIDO DE LOS ALUMNOS QUE ESTÁN INSCRITOS EN MÁS DE UN CURSO


SELECT inscripciones.id_inscripcion, inscripciones.fecha_insc, alumnos.id_alumnos, inscripciones.fk_id_alumno, alumnos.nombre , alumnos.apellido ,inscripciones.fk_id_curso, COUNT(inscripciones.fk_id_curso) AS numero_de_repeticiones
FROM alumnos
INNER JOIN inscripciones
ON inscripciones.fk_id_alumno = alumnos.id_alumnos
GROUP BY
alumnos.id_alumnos,
alumnos.nombre,
alumnos.apellido

HAVING
COUNT( inscripciones.fk_id_curso)>1
 ;


 -- listar los nombres y apellidos de los alumos junto con los nombres de los crusos al os que están incritos 

SELECT inscripciones.id_inscripcion, inscripciones.fecha_insc ,alumnos.id_alumnos, alumnos.nombre, alumnos.apellido, cursos.id_curso, cursos.nombre
FROM alumnos
INNER JOIN 	inscripciones 
ON inscripciones.fk_id_alumno = alumnos.id_alumnos
INNER JOIN cursos
ON cursos.id_curso = inscripciones.fk_id_curso
;

-- OBTENER EL NOMBRE Y APELLIDO DE LOS ALUMNOS QUE ESTÁN INSCRITOS EN MÁS DE UN CURSO


SELECT inscripciones.id_inscripcion, inscripciones.fecha_insc, alumnos.id_alumnos, inscripciones.fk_id_alumno, alumnos.nombre , alumnos.apellido ,inscripciones.fk_id_curso, COUNT(inscripciones.fk_id_curso) AS numero_de_repeticiones
FROM alumnos
INNER JOIN inscripciones
ON inscripciones.fk_id_alumno = alumnos.id_alumnos
GROUP BY
alumnos.id_alumnos,
alumnos.nombre,
alumnos.apellido

HAVING
COUNT( inscripciones.fk_id_curso)>1
 ;
 
 SELECT cursos.id_curso, cursos.nombre, COUNT(inscripciones.fk_id_alumno) AS cantidad_de_alumnos_inscritos
 FROM cursos
 INNER JOIN inscripciones
 ON cursos.id_curso = inscripciones.fk_id_curso
 GROUP BY 
 cursos.id_curso,
 cursos.nombre
 HAVING
 COUNT(inscripciones.fk_id_alumno);



 -- listar los nombres y apellidos de los alumos junto con los nombres de los crusos al os que están incritos 

SELECT inscripciones.id_inscripcion, inscripciones.fecha_insc ,alumnos.id_alumnos, alumnos.nombre, alumnos.apellido, cursos.id_curso, cursos.nombre
FROM alumnos
INNER JOIN 	inscripciones 
ON inscripciones.fk_id_alumno = alumnos.id_alumnos
INNER JOIN cursos
ON cursos.id_curso = inscripciones.fk_id_curso
;

-- OBTENER EL NOMBRE Y APELLIDO DE LOS ALUMNOS QUE ESTÁN INSCRITOS EN MÁS DE UN CURSO


SELECT inscripciones.id_inscripcion, inscripciones.fecha_insc, alumnos.id_alumnos, inscripciones.fk_id_alumno, alumnos.nombre , alumnos.apellido ,inscripciones.fk_id_curso, COUNT(inscripciones.fk_id_curso) AS numero_de_repeticiones
FROM alumnos
INNER JOIN inscripciones
ON inscripciones.fk_id_alumno = alumnos.id_alumnos
GROUP BY
alumnos.id_alumnos,
alumnos.nombre,
alumnos.apellido

HAVING
COUNT( inscripciones.fk_id_curso)>1
 ;
 
 SELECT cursos.id_curso, cursos.nombre, COUNT(inscripciones.fk_id_alumno) AS cantidad_de_alumnos_inscritos
 FROM cursos
 INNER JOIN inscripciones
 ON cursos.id_curso = inscripciones.fk_id_curso
 GROUP BY 
 cursos.id_curso,
 cursos.nombre
 HAVING
 COUNT(inscripciones.fk_id_alumno);
 
 
 
 -- LISTAR LOS ALUMNOS QUE NO HAN ABONADO LA INSCRIPCIÓN
 
 SELECT alumnos.id_alumnos, alumnos.nombre, alumnos.apellido, inscripciones.id_inscripcion, inscripciones.abono_inscrip
 FROM alumnos
 INNER JOIN inscripciones
 ON inscripciones.fk_id_alumno = alumnos.id_alumnos
 WHERE inscripciones.abono_inscrip = 0;
 
 -- OBTENER LOS NOMBRES DE LOS CURSOS QUE TIENEN AL MENOS UN ALUMNO MAYOR DE 20 AÑOS INSCRITO.
 
 
 SELECT alumnos.id_alumnos, alumnos.nombre, alumnos.apellido, alumnos.edad, inscripciones.id_inscripcion, cursos.nombre
 FROM alumnos
 INNER JOIN inscripciones
 ON inscripciones.fk_id_alumno = alumnos.id_alumnos
 INNER JOIN cursos
 ON inscripciones.fk_id_curso = cursos.id_curso
 WHERE alumnos.edad > 20;
 
  SELECT alumnos.id_alumnos, alumnos.nombre, alumnos.apellido, alumnos.edad, inscripciones.id_inscripcion, cursos.nombre
 FROM alumnos
 INNER JOIN inscripciones
 ON inscripciones.fk_id_alumno = alumnos.id_alumnos
 INNER JOIN cursos
 ON inscripciones.fk_id_curso = cursos.id_curso;
 -- WHERE DATEDIFF( CURRENT, alumnos.edad) / 365 >20;
 
 
 -- LISTAR EL NOMBRE Y APELLIDO DE LOS ALUMNOS JUNTO CON LOS NOMBRE S DE LOS CURSOS EN LOS QUE ESTÁN INSCRITOS, PER SOLO PARA QUELOOS QUE SE INSCRIBIERON EN 2024 
 
 SELECT alumnos.id_alumnos, alumnos.nombre, alumnos.apellido,inscripciones.id_inscripcion, inscripciones.fecha_insc,cursos.id_curso,cursos.nombre AS nombre_del_curso
 FROM alumnos
 INNER JOIN inscripciones
 ON inscripciones.fk_id_alumno = alumnos.id_alumnos
 INNER JOIN cursos
 ON inscripciones.fk_id_curso = cursos.id_curso
 WHERE inscripciones.fecha_insc > "2024-00-00"  ORDER BY alumnos.id_alumnos ASC;
 
 
  SELECT alumnos.id_alumnos, alumnos.nombre, alumnos.apellido,inscripciones.id_inscripcion, inscripciones.fecha_insc,cursos.id_curso,cursos.nombre AS nombre_del_curso
 FROM alumnos
 INNER JOIN inscripciones
 ON inscripciones.fk_id_alumno = alumnos.id_alumnos
 INNER JOIN cursos
 ON inscripciones.fk_id_curso = cursos.id_curso
 WHERE inscripciones.fecha_insc < "2024-00-00"  ORDER BY alumnos.id_alumnos ASC;
 
   SELECT alumnos.id_alumnos, alumnos.nombre, alumnos.apellido,inscripciones.id_inscripcion, inscripciones.fecha_insc,cursos.id_curso,cursos.nombre AS nombre_del_curso
 FROM alumnos
 INNER JOIN inscripciones
 ON inscripciones.fk_id_alumno = alumnos.id_alumnos
 INNER JOIN cursos
 ON inscripciones.fk_id_curso = cursos.id_curso
 WHERE YEAR( inscripciones.fecha_insc) >= 2024 ORDER BY alumnos.id_alumnos ASC;