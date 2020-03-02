SELECT name, id, cohort_id
FROM students
WHERE email IS NULL or phone  IS NULL;