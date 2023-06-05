DELETE FROM student WHERE id IN (SELECT student_id FROM mark INNER JOIN subject ON mark.subject_id = subject.id WHERE subject.grade > 4);
DELETE FROM student
WHERE id IN (
    SELECT student_id
    FROM mark
    WHERE mark < 4
);
DELETE FROM PaymentType WHERE type = 'Daily';
DELETE FROM Mark WHERE mark < 7;