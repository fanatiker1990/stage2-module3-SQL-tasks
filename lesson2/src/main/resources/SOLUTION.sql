INSERT INTO Student (id, name, group_number) VALUES
(1, 'John', 1),
(2, 'Chris', 1),
(3, 'Carl', 1),
(4, 'Oliver', 2),
(5, 'James', 2),
(6, 'Lucas', 2),
(7, 'Henry', 2),
(8, 'Jacob', 3),
(9, 'Logan', 3),
(10,'Roman', 4),
(11,'Vlad', 4),
(12,'Sergey', 5),
(13,'Tima', 5);

INSERT INTO Subject (id, name, description, grade) VALUES
(1, 'Art', 'Art subject', 1),
(2, 'Music', 'Music subject', 1),
(3, 'Geography', 'Geography subject', 2),
(4, 'History', 'History subject', 2),
(5, 'PE', 'Physical Education subject', 3),
(6, 'Math', 'Math subject', 3),
(7, 'Science', 'Science subject', 4),
(8, 'IT', 'Information Technology subject', 4),
(9, 'Сhemistry', 'Сhemistry subject', 5),
(10, 'Pa', 'Patriotic education', 5);

INSERT INTO PaymentType (id, name) VALUES
(1, 'DAILY'),
(2, 'WEEKLY'),
(3, 'MONTHLY');

INSERT INTO Payment (id, type_id, amount,  student_id) VALUES
(1, 2, 100.00,1),
(2, 3, 500.00,4),
(3, 2, 200.00,7),
(4, 1, 50.00,6),
(5, 3, 800.00,2),
(6, 2, 600.00,3),
(7, 1, 400.00,5),
(8, 3, 250.00,8),
(9, 1, 50.00,9),
(10, 3, 700.00,10),
(11, 2, 900.00,11),
(12, 1, 1200.00,12),
(13, 3, 2580.00,13);

insert into mark(id,student_id,subject_id,mark) values
(1, 2, 1, 8),
(2, 4, 4, 5),
(3, 5, 3, 9),
(4, 8, 6, 4),
(5, 9, 5, 9),
(6, 1, 2, 8),
(7, 3, 7, 5),
(8, 6, 8, 9),
(9, 7, 9, 4),
(10, 10, 10, 9),
(11, 11, 1, 8),
(12, 12, 4, 5),
(13, 13, 3, 9);