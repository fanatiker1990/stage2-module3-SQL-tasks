REATE TABLE Student (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255),
    birthday DATE,
    group_number INT);

CREATE TABLE Subject (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
    grade INT);

CREATE TABLE PaymentType (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255));

CREATE TABLE Payment (
    id BIGINT PRIMARY KEY,
    type_id BIGINT,
    amount DECIMAL,
    payment_date DATETIME,
    student_id BIGINT,
    FOREIGN KEY (type_id) REFERENCES PaymentType(id),
    FOREIGN KEY (student_id) REFERENCES Student(id));

CREATE TABLE Mark (
    id BIGINT PRIMARY KEY,
    student_id BIGINT,
    subject_id BIGINT,
    mark INT,
    FOREIGN KEY (student_id) REFERENCES Student(id),
    FOREIGN KEY (subject_id) REFERENCES Subject(id));

