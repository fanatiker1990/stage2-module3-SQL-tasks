SELECT * FROM Student WHERE id IN (SELECT student_id FROM Mark GROUP BY student_id HAVING AVG(mark) > 8);
SELECT id, name FROM Student WHERE id IN (SELECT student_id FROM Mark GROUP BY student_id HAVING min(mark) > 7);
SELECT id, name FROM Student WHERE id IN (SELECT student_id FROM payment where year(payment_date) = 2019 GROUP BY student_id HAVING count(*) > 2 );