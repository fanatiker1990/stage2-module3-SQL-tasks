SELECT * FROM Payment WHERE amount >= 500;
SELECT * FROM Student WHERE DATEADD(YEAR, -20, CURRENT_DATE) > birthday;
SELECT * FROM student WHERE YEAR(birthday) > YEAR(CURRENT_DATE()) - 20 AND group_number = 10;
SELECT * FROM Student WHERE name LIKE 'Mike%' OR groupnumber IN (4, 5, 6);
SELECT * FROM payment WHERE MONTH(payment_date) < MONTH(CURRENT_DATE()) - 8;
SELECT * FROM Student WHERE name LIKE 'A%';
SELECT * FROM Student WHERE (name LIKE 'Roxi%' AND groupnumber = 4) OR (name LIKE 'Tallie%' AND groupnumber = 9);