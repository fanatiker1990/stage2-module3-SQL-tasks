
ALTER TABLE Student MODIFY birthday DATE NOT NULL;


ALTER TABLE Mark
    MODIFY mark INT NOT NULL CHECK (mark >= 1 AND mark <= 10),
    MODIFY student_id BIGINT NOT NULL,
    MODIFY subject_id BIGINT NOT NULL;


ALTER TABLE Subject MODIFY grade INT NOT NULL CHECK (grade >= 1 AND grade <= 5);


ALTER TABLE PaymentType ADD CONSTRAINT unique_name UNIQUE (name);


ALTER TABLE Payment
    MODIFY type_id BIGINT NOT NULL,
    MODIFY amount DECIMAL(10, 2) NOT NULL,
    MODIFY payment_date DATETIME NOT NULL;