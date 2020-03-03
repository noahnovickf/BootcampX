SELECT students.name, count(assistance_request.*) as assistance_request 
FROM students
JOIN assistance_request ON students.id = student_id
WHERE name ='Elliot Dickinson'
GROUP BY students.name;
