SELECT * FROM payment WHERE type_id IN (SELECT id FROM paymenttype WHERE name = 'MONTHLY');
select * from  mark where subject_id in (select id from subject where name like 'Art%');
select * from  student where id in ( select student_id  from payment where type_id in(select id  from paymenttype where name='WEEKLY'));
select * from  student where id in ( select student_id  from mark where subject_id in(select id  from subject where name like 'Math%'));