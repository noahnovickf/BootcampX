const { Pool } = require("pg");

const pool = new Pool({
  user: "user",
  password: "123",
  host: "localhost",
  database: "bootcampx"
});

const cohortName = process.argv[2] || "JUL02";
const values = [`%${cohortName}%`];
const queryString = `
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE $1
ORDER BY teachers.name;
`;

pool
  .query(queryString, values)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.cohort}: ${user.teacher}`);
    });
  })
  .catch(err => console.error("query error", err.stack));
