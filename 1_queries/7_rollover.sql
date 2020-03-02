SELECT students.name as student_name, cohorts.start_date as cohort_start, cohorts.name as cohort_name, cohort.start_date as cohort_start_date
FROM students 
JOIN cohorts ON cohort_id = cohorts.cohort_id
WHERE cohorts.start_date != student.start_date
ORDER BY cohort_name;
