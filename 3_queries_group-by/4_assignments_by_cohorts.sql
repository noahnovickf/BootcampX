SELECT cohorts.name as cohorts_name, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = students_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts_name
ORDER BY total_submissions DESC;