DELETE FROM Mark WHERE student_id IN (SELECT id FROM Student WHERE grade > 4);
DELETE FROM Payment WHERE student_id IN (SELECT id FROM Student WHERE grade > 4);
DELETE FROM Student WHERE grade > 4;
DELETE FROM student WHERE id IN (SELECT student_id FROM mark GROUP BY student_id HAVING COUNT(*) > 0 AND MAX(mark) < 4);
DELETE FROM Payment WHERE type_id = (SELECT id FROM PaymentType WHERE type = 'Daily');
DELETE FROM PaymentType WHERE type = 'Daily';
DELETE FROM Mark WHERE mark < 7;