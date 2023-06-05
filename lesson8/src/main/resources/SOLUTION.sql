SELECT *
FROM payment
WHERE payment_date = (
    SELECT MIN(CAST(payment_date AS DATE))
    FROM payment
);
SELECT * FROM payment WHERE payment_date = (SELECT MIN(payment_date) FROM payment);
SELECT * FROM mark WHERE mark = (SELECT AVG(mark) FROM mark WHERE subject_id = (SELECT id FROM subject WHERE name LIKE 'Math%'));
SELECT * FROM payment WHERE amount = (SELECT MIN(amount) FROM payment WHERE type_id IN (SELECT id FROM paymenttype WHERE name = 'WEEKLY'));
