CREATE DATABASE Anon
CREATE TABLE mark (
    student_id SERIAL NOT NULL,
    exam_id SERIAL NOT NULL,
    mark INTEGER,
    PRIMARY KEY (student_id, exam_id)
);
CREATE TABLE exam (
    FOREIGN KEY (exam_id) REFERENCES mark (exam_id),
    FOREIGN KEY (subject_id) REFERENCES subject (subject_id),
    FOREIGN KEY (professor_id) REFERENCES professor_subject(professor_id),
    date_of_exam TIMESTAMP тут
);

CREATE TABLE subject
    (subject_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    info VARCHAR(255)
);

CREATE TABLE professor_subject (
    FOREIGN KEY (professor_id) REFERENCES professor(professor_id),
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id)
    valid_from DATE,
    valid_to DATE,
);

CREATE TABLE professor (
    professor_id SERIAL PRIMARY KEY,
    FOREIGN KEY (grade_id) REFERENCES gade_of_professor(grade_id),
    name VARCHAR(255),
    info varchar(255)
);

CREATE TABLE grade_of_professor(
   grade_id SERIAL PRIMARY KEY,
   position VARCHAR(255)
);

CREATE TABLE student
(
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    date_of_exam TIMESTAMP
);

CREATE TABLE phone (
    phone_id SERIAL,
    FOREIGN KEY (student_id) REFERENCES mark (student_id),
    phone_type VARCHAR(50),
    phone_number VARCHAR(20)
);




