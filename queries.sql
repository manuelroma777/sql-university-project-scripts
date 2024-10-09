-- Script para consultar promedio de notas por profesor"
SELECT 
    Professors.professor_name, 
    AVG(Grades.grade) AS average_grade
FROM 
    Grades
JOIN Courses ON Grades.course_id = Courses.course_id
JOIN Professors ON Courses.professor_id = Professors.professor_id
GROUP BY 
    Professors.professor_name;

-- Script para consultar mejores notas por estudiante"
SELECT 
    Students.student_name, 
    MAX(Grades.grade) AS top_grade
FROM 
    Grades
JOIN Students ON Grades.student_id = Students.student_id
GROUP BY 
    Students.student_name;

-- Script para ordenar estudiantes por los cursos en los que están inscritos"
SELECT 
    Students.student_name, 
    Courses.course_name
FROM 
    Grades
JOIN Students ON Grades.student_id = Students.student_id
JOIN Courses ON Grades.course_id = Courses.course_id
ORDER BY 
    Students.student_name, Courses.course_name;

-- Script para consultar resumen de cursos y sus promedios, ordenados por dificultad (de más difícil a más fácil)"
SELECT 
    Courses.course_name, 
    AVG(Grades.grade) AS average_grade
FROM 
    Grades
JOIN Courses ON Grades.course_id = Courses.course_id
GROUP BY 
    Courses.course_name
ORDER BY 
    average_grade ASC;

-- Script para encontrar qué estudiante y profesor tienen más cursos en común"
SELECT 
    Students.student_name, 
    Professors.professor_name, 
    COUNT(*) AS common_courses
FROM 
    Grades
JOIN Students ON Grades.student_id = Students.student_id
JOIN Courses ON Grades.course_id = Courses.course_id
JOIN Professors ON Courses.professor_id = Professors.professor_id
GROUP BY 
    Students.student_name, Professors.professor_name
ORDER BY 
    common_courses DESC
LIMIT 6;