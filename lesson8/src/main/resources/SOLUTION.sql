SELECT MAX(birthday) AS max_date_of_birth FROM student;
SELECT * FROM payment WHERE CAST(payment_date AS DATE) = (SELECT MIN(CAST(payment_date AS DATE)) FROM payment);
SELECT AVG(mark) AS average_mark FROM mark WHERE subject_id = (   SELECT id FROM subject WHERE name LIKE 'Math%') HAVING COUNT(*) > 0;
SELECT MIN(amount) AS min_payment_amount FROM payment WHERE type_id = ( SELECT id FROM paymenttype  WHERE name = 'WEEKLY');