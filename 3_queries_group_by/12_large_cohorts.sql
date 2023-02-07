SELECT cohorts.name AS cohort_name, COUNT(students.cohort_id) AS student_count
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name, students.cohort_id
HAVING COUNT(students.cohort_id) >= 18
ORDER BY COUNT(students.cohort_id) ASC;