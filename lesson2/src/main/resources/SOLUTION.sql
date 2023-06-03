
INSERT INTO Student (id, name, group) VALUES
(1, 'John', 1),
(2, 'Chris', 1),
(3, 'Carl', 1),
(4, 'Oliver', 2),
(5, 'James', 2),
(6, 'Lucas', 2),
(7, 'Henry', 2),
(8, 'Jacob', 3),
(9, 'Logan', 3);


INSERT INTO Subject (id, name, description, grade) VALUES
(1, 'Art', 'Art subject', 1),
(2, 'Music', 'Music subject', 1),
(3, 'Geography', 'Geography subject', 2),
(4, 'History', 'History subject', 2),
(5, 'PE', 'Physical Education subject', 3),
(6, 'Math', 'Math subject', 3),
(7, 'Science', 'Science subject', 4),
(8, 'IT', 'Information Technology subject', 4),
(9, 'Subject 1', 'Subject 1 for grade 5', 5),
(10, 'Subject 2', 'Subject 2 for grade 5', 5);


INSERT INTO PaymentType (id, name) VALUES
(1, 'DAILY'),
(2, 'WEEKLY'),
(3, 'MONTHLY');


INSERT INTO Payment (id, type_id, amount, student_id, payment_date) VALUES
(1, 2, 100.00, (SELECT id FROM Student WHERE name = 'John'), CURRENT_TIMESTAMP),
(2, 3, 500.00, (SELECT id FROM Student WHERE name = 'Oliver'), CURRENT_TIMESTAMP),
(3, 2, 200.00, (SELECT id FROM Student WHERE name = 'Henry'), CURRENT_TIMESTAMP),
(4, 1, 50.00, (SELECT id FROM Student WHERE name = 'James'), CURRENT_TIMESTAMP);


INSERT INTO Mark (id, student_id, subject_id, mark) VALUES
(1, (SELECT id FROM Student WHERE name = 'Chris'), (SELECT id FROM Subject WHERE name = 'Art'), 8),
(2, (SELECT id FROM Student WHERE name = 'Oliver'), (SELECT id FROM Subject WHERE name = 'History'), 5),
(3, (SELECT id FROM Student WHERE name = 'James'), (SELECT id FROM Subject WHERE name = 'Geography'), 9),
(4, (SELECT id FROM Student WHERE name = 'Jacob'), (SELECT id FROM Subject WHERE name = 'Math'), 4),
(5, (SELECT id FROM Student WHERE name = 'Logan'), (SELECT id FROM Subject WHERE name = 'PE'), 9);
