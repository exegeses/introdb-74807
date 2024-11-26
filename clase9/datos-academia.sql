-- Insertar 10 registros en la tabla areas
INSERT INTO areas
            (area)
    VALUES
             ('Matemáticas'),
             ('Lengua'),
             ('Inglés'),
             ('Historia'),
             ('Geografía'),
             ('Física'),
             ('Química'),
             ('Biología'),
             ('Tecnología'),
             ('Artes');

-- Insertar 10 registros en la tabla niveles
INSERT INTO niveles
            (nivel)
    VALUES
            ('Primaria'),
            ('Secundaria'),
            ('Bachillerato'),
            ('Grado Universitario'),
            ('Máster'),
            ('Doctorado'),
            ('Formación Profesional Básica'),
            ('Formación Profesional Grado Medio'),
            ('Formación Profesional Grado Superior'),
            ('Educación de Adultos');

-- Insertar 10 registros en la tabla cursos
INSERT INTO cursos
            (curso, idArea, idNivel)
    VALUES
            ('Matemáticas I', 1, 1),
            ('Lengua Española', 2, 1),
            ('Inglés Básico', 3, 1),
            ('Historia de España', 4, 2),
            ('Geografía Humana', 5, 2),
            ('Física I', 6, 3),
            ('Química Orgánica', 7, 3),
            ('Biología Celular', 8, 4),
            ('Programación Básica', 9, 7),
            ('Dibujo Artístico', 10, 2);

-- Insertar 10 registros en la tabla alumnos
INSERT INTO alumnos
            (apellido, nombre, dni, email, fecha)
    VALUES
          ('García', 'Juan', 12345678, 'juan.garcia@example.com', '2005-09-15'),
          ('Martínez', 'María', 87654321, 'maria.martinez@example.com', '2004-03-28'),
          ('Pérez', 'Pedro', 45678912, 'pedro.perez@example.com', '2006-11-07'),
          ('Fernández', 'Ana', 98765432, 'ana.fernandez@example.com', '2007-05-23'),
          ('Gómez', 'Luis', 23456789, 'luis.gomez@example.com', '2008-02-11'),
          ('Ruiz', 'Marta', 67890123, 'marta.ruiz@example.com', '2009-08-19'),
          ('Sánchez', 'David', 34567890, 'david.sanchez@example.com', '2010-04-06'),
          ('Torres', 'Carmen', 89012345, 'carmen.torres@example.com', '2011-12-30'),
          ('Jiménez', 'Alberto', 56789012, 'alberto.jimenez@example.com', '2012-07-14'),
          ('Moreno', 'Laura', 90123456, 'laura.moreno@example.com', '2013-10-22');

-- Insertar 10 registros en la tabla cursos_alumnos
INSERT INTO cursos_alumnos
        (idCursoAlumno, idCurso, idAlumno, activo)
    VALUES
          (1, 1, 1, TRUE),
          (2, 2, 2, TRUE),
          (3, 3, 3, TRUE),
          (4, 4, 4, TRUE),
          (5, 5, 5, TRUE),
          (6, 6, 6, TRUE),
          (7, 7, 7, TRUE),
          (8, 8, 8, TRUE),
          (9, 9, 9, FALSE),
          (10, 10, 10, TRUE);