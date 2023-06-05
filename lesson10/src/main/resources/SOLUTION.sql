SELECT * FROM Subject WHERE id IN (SELECT subject_id FROM Mark GROUP BY subject_id HAVING AVG(mark) > (SELECT AVG(mark) FROM Mark));
SELECT DISTINCT s.* FROM student s JOIN payment p ON s.id = p.student_id WHERE p.amount < (SELECT AVG(amount) FROM payment);
