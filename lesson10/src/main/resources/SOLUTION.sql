SELECT * FROM Subject WHERE id IN (SELECT subject_id FROM Mark GROUP BY subject_id HAVING AVG(mark) > (SELECT AVG(mark) FROM Mark));
SELECT s.name FROM student s JOIN payment p ON p.student_id = s.id WHERE p.amount < (SELECT AVG(amount) FROM payment);
