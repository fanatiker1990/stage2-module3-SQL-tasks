SELECT * FROM Subject WHERE id IN (SELECT subject_id FROM Mark GROUP BY subject_id HAVING AVG(mark) > (SELECT AVG(mark) FROM Mark));
SELECT * FROM student WHERE id IN (
    SELECT student_id FROM (
        SELECT student_id, SUM(amount) AS sum_amount
        FROM payment
        GROUP BY student_id
    ) AS payment_totals
    WHERE sum_amount < (
        SELECT AVG(sum_amount)
        FROM (
            SELECT student_id, SUM(amount) AS sum_amount
            FROM payment
            GROUP BY student_id
        ) AS payment_totals_avg
    )
);