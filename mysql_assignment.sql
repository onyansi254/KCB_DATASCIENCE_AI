/*
Drop table named students
from edu_institute database if it exits.
*/

DROP TABLE IF EXISTS edu_institute.students;

-- Drop database named edu_institute if it exists.
DROP DATABASE IF EXISTS edu_institute;

-- Create database named edu_institute
CREATE DATABASE edu_institute;

-- Display available databases.
SHOW DATABASES;

 -- Select our created database named edu_institute
USE edu_institute;

-- Create table named students.
CREATE TABLE students
(
	student_id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50),
	age INT,
	gender CHAR(1),
	enrollment_date Date,
	program VARCHAR(50)
);

-- Inserting data to our table

INSERT INTO students
(name, age, gender, enrollment_date, program)
VALUES
("John Doe", 22, "M", "2023-09-01", "Computer Science"), 
("Jane Wanjiru", 25, "F", "2022-07-15", "Medicine"),
("Alice Wambua", 20, "F", "2024-01-10", "Data Science"),
("Bob Brown", 23, "M", "2023-03-20", "Economics"),
("Emma Barack", 21, "F", "2024-02-05", "Data Science");

-- Display the structure of the table
DESCRIBE students;

-- Display the contents of the table
SELECT * FROM students;

/*
Query to select all columns for all students
in the Data Science program.
*/
SELECT * FROM students WHERE program = "Data Science";

/*
Query to find the total number of students and 
display it as Total Students
*/
SELECT COUNT(*) AS Total_Students FROM students;

/*
Using Current_Date()for diaplaying the current date in 
a column named Today's Date
*/
SELECT CURRENT_DATE() AS "Today's Date";

/*
A query to select the students' names and their enrollment
dates,but display the name column in uppercase
*/
SELECT UPPER(name) AS Name, enrollment_date
FROM students;

/*
Query to count the number of students in each program and
display the output in descending order of count.
Name the count column as Number of Students.
 */
SELECT program, COUNT(*) AS "Number of Students"
FROM students
GROUP BY program
ORDER BY COUNT(*) DESC;

-- A query to find the youngest student's name and age
SELECT name, age
FROM students
ORDER BY age ASC
LIMIT 1;
