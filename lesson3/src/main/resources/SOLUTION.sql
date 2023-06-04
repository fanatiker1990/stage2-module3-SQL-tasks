--UPDATE Student SET birthday = DATE_ADD('1900-01-01', INTERVAL FLOOR(RAND() * 100) YEAR) WHERE birthday IS NULL;
ALTER TABLE Student MODIFY birthday DATE NOT NULL;

ALTER TABLE Mark MODIFY mark INT NOT NULL CHECK (mark >= 1 AND mark <= 10);
ALTER TABLE Mark MODIFY student_id BIGINT NOT NULL;
ALTER TABLE Mark MODIFY subject_id BIGINT NOT NULL;

alter table subject modify grade int not null check(grade>=1 and grade<=5);

alter table paymenttype add unique(name);

--update payment set payment_date=date_add('1900-01-01', INTERVAL FLOOR(RAND() * 100) YEAR) where payment_date is null;
alter table payment modify type_id  bigint not null;
alter table payment modify amount decimal not null;
alter table payment modify payment_date datetime not null;
