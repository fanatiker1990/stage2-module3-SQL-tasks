SELECT * FROM Payment WHERE amount >= 500;
SELECT * FROM Student WHERE DATEADD(YEAR, -20, CURRENT_DATE) > birthday;
SELECT * FROM Student WHERE groupnumber = 10 AND DATEADD(YEAR, -20, CURRENT_DATE) < birthday;
SELECT * FROM Student WHERE name LIKE 'Mike%' OR groupnumber IN (4, 5, 6);
SELECT * FROM payment WHERE payment_date > DATEADD(month, -8, CAST('2000-10-10' AS DATE));
SELECT * FROM Student WHERE name LIKE 'A%';
SELECT * FROM Student WHERE (name LIKE 'Roxi%' AND groupnumber = 4) OR (name LIKE 'Tallie%' AND groupnumber = 9);