-- Script para ingresar los datos a la tabla "Students"
USE UniversityDB;

INSERT INTO Students (student_name, enrollment_year)
VALUES
('Luis Roma', 2022),
('Manuel Vasquez', 2021),
('Erika Diequez', 2023),
('Nacho Cano', 2021),
('Thalia Roma', 2023),
('Veronica Roma', 2023);

-- Script para ingresar los datos a la tabla "Professors"
INSERT INTO Professors (professor_name)
VALUES
('Jose Hernandez'),
('Maria Diaz'),
('Jorge Perez'),
('Ernesto Ruiz');

-- Script para ingresar los datos a la tabla "Courses"
INSERT INTO Courses (course_name, professor_id)
VALUES
('Mathematics', 1),
('History', 2),
('Computer Science', 3),
('Psychology', 4);

-- Script para ingresar los datos a la tabla "Grades"
INSERT INTO Grades (student_id, course_id, grade)
VALUES
(1, 1, 85.5),
(1, 3, 92.0),
(1, 4, 88.5),
(2, 1, 95.0),
(2, 2, 88.5),
(2, 4, 85.5),
(3, 3, 88.5),
(3, 4, 95.0),
(4, 1, 88.5),
(4, 2, 95.0),
(4, 4, 78.0),
(5, 1, 92.0),
(5, 4, 88.5),
(6, 1, 95.0),
(6, 2, 88.5),
(6, 3, 98.5),
(6, 4, 77.5);