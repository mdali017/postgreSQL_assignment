-- Active: 1729103022949@@127.0.0.1@5432@university_db


-- creating student table
CREATE TABLE student(
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    age INTEGER,
    email VARCHAR(100) UNIQUE,
    frontend_mark INTEGER,
    backend_mark INTEGER,
    status VARCHAR(10)
);

-- inserting data into student table
INSERT INTO student (student_name, age, email, frontend_mark, backend_mark, status)
VALUES
    ('Alice Johnson', 22, 'alice.johnson@example.com', 85, 78, 'active'),
    ('Bob Smith', 24, 'bob.smith@example.com', 90, 88, 'active'),
    ('Charlie Davis', 23, 'charlie.davis@example.com', 75, 82, 'active'),
    ('Diana Clark', 21, 'diana.clark@example.com', 82, 79, 'active'),
    ('Ethan Martinez', 22, 'ethan.martinez@example.com', 88, 91, 'active'),
    ('Fiona Brown', 20, 'fiona.brown@example.com', 95, 93, 'active'),
    ('George Taylor', 23, 'george.taylor@example.com', 78, 85, 'active'),
    ('Hannah White', 24, 'hannah.white@example.com', 83, 88, 'active'),
    ('Ian Harris', 22, 'ian.harris@example.com', 76, 80, 'active'),
    ('Jessica Lewis', 23, 'jessica.lewis@example.com', 89, 92, 'active'),
    ('Kyle Wilson', 21, 'kyle.wilson@example.com', 80, 77, 'active'),
    ('Laura Hall', 22, 'laura.hall@example.com', 85, 90, 'active'),
    ('Michael Young', 24, 'michael.young@example.com', 92, 88, 'active'),
    ('Natalie King', 23, 'natalie.king@example.com', 87, 84, 'active'),
    ('Oliver Scott', 22, 'oliver.scott@example.com', 80, 75, 'inactive'),
    ('Paula Green', 21, 'paula.green@example.com', 90, 85, 'active'),
    ('Quinn Adams', 23, 'quinn.adams@example.com', 75, 70, 'inactive'),
    ('Rebecca Baker', 22, 'rebecca.baker@example.com', 95, 94, 'active'),
    ('Sam Carter', 24, 'sam.carter@example.com', 88, 83, 'active'),
    ('Tina Evans', 23, 'tina.evans@example.com', 81, 77, 'active');


--- creating course table
CREATE TABLE course(
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    credits INTEGER
)

-- inserting data into course table
INSERT INTO course (course_name, credits)
VALUES
      ('React Js', 3),
      ('Node Js', 3),
      ('Mongo DB', 3),
      ('Python', 3),
      ('Java', 3),
      ('C++', 3);

INSERT INTO course (course_name, credits)
VALUES
    ('Next.js', 3);



-- creating an enrollment table
CREATE TABLE enrollment(
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES student(student_id),
    course_id INTEGER REFERENCES course(course_id)
)

-- inserting data into enrollment table
INSERT INTO enrollment (student_id, course_id)
VALUES
    (1, 3),
    (2, 2),
    (3, 3),
    (4, 7),
    (5, 3),
    (6, 6),
    (7, 7),
    (8, 4),
    (9, 7),
    (10, 4),
    (11, 3),
    (12, 6),
    (13, 7),
    (14, 5),
    (15, 4),
    (16, 7),
    (17, 1)


SELECT * FROM student;

SELECT * FROM course;

SELECT * FROM enrollment


-- Query 1: Insert a new student record
INSERT INTO student (student_name, age, email, frontend_mark, backend_mark, status)
VALUES ('Hasan', 25, 'ali@example.com', 95, 92, 'active');



-- Query 2: Retrieve the names of all students who are enrolled in the course titled 'Next.js'.
SELECT student_name FROM student
JOIN enrollment ON student.student_id = enrollment.student_id
JOIN course ON enrollment.course_id = course.course_id
WHERE course.course_name = 'Next.js'


-- Query 3: Update the status of the student with the highest(frontend_mark + backend_mark) to 'Awarded'.
UPDATE student
SET status = 'Awarded'
WHERE (frontend_mark + backend_mark) = (SELECT MAX(frontend_mark + backend_mark) FROM student);

SELECT * FROM enrollment


-- Query 4: Delete all courses that have no students enrolled
DELETE FROM course
WHERE course_id NOT IN
    (SELECT course_id FROM enrollment)


-- Query 5: Retrieve the names of students using a limit of 2 from the 3rd student
SELECT student_name FROM student
ORDER BY student_id
LIMIT 2 OFFSET 2


-- Query 6: Retrieve the course names and the number of students enrolled in each course
SELECT course_name, COUNT(student_id) AS student_count
FROM course
JOIN enrollment ON course.course_id = enrollment.course_id
GROUP BY course_name


-- Query 7: Calculate and display the average age of all students
SELECT AVG(age) AS average_age FROM student


-- Query 8: Retrieve the names of students whose email addresses contain 'example.com'
SELECT student_name FROM student
WHERE email LIKE '%example.com%'



SELECT * FROM student