SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_request
JOIN students ON students.id = assistance_request.student_id
JOIN cohorts ON cohorts.id = cohorts_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;