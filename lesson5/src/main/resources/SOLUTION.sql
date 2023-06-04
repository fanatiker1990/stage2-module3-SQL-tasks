select*from payment where amount>=500;

select*from student where year(birthday)<year(current_date())-20;

SELECT * FROM student WHERE YEAR(birthday) > YEAR(CURRENT_DATE()) - 20 AND group_number = 10;

SELECT
    *
FROM
    student
WHERE
    name = 'Mike'
        OR group_number IN (4 , 5, 6);

SELECT
    *
FROM
    payment
WHERE
    MONTH(payment_date) < MONTH(CURRENT_DATE()) - 8;

SELECT * FROM student WHERE name LIKE 'A%';

SELECT * FROM student WHERE (name = 'Roxi' AND group_number = 4) OR (name = 'Tallie' AND group_number = 9);