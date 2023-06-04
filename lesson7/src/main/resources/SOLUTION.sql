select*from mark where mark>6 order by  mark desc;
select* from payment where amount< 300 order by amount asc ;
select* from paymenttype order by name asc;
select *from student order by name desc;
SELECT * FROM Student WHERE id IN (SELECT student_id FROM Payment WHERE amount > 1000)ORDER BY birthday ASC;