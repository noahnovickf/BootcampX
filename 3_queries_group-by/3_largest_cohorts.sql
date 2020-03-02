SELECT cohorts.name as cohorts_name, count(students.*) as student_count
FROM cohorts
JOIN cohorts ON cohort_id = cohorts.cohort_id
GROUP BY cohort_name
HAVING (students.*) > 17
ORDER BY  student_count;