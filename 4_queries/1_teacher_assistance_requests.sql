SELECT teachers.name as name, count(assistance_requests.*) as total_assistances 
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;