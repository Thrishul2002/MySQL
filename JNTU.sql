CREATE DATABASE JNTU;

USE jntu;

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    fees float NOT NULL
);
 INSERT INTO course 
 	VALUES(100,'CSE',25000);
SELECT * FROM course;

INSERT INTO course 
 	VALUES(101,'ECE',25000);
INSERT INTO course 
 	VALUES(102,'EEE',25000);
INSERT INTO course 
 	VALUES(103,'CIVIL',25000);
INSERT INTO course 
 	VALUES(104,'MECH',25000);
 	
UPDATE course SET fees=20000 WHERE course_id=103;

UPDATE course SET fees=22000 WHERE course_id=104;
UPDATE course SET fees=24000 WHERE course_id=102;

CREATE TABLE student (
    Roll_number INT PRIMARY KEY,
    first_name VARCHAR(255) ,
    last_name VARCHAR(255) ,
    phone_number VARCHAR(15) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

INSERT INTO student 
 	VALUES(001,'jhon','snow',101-222-11,'jhon.snow@gmail.com',100);
SELECT * FROM student;
UPDATE student SET phone_number='101-222-11' WHERE Roll_number=1;

INSERT INTO student 
 	VALUES(203,'sam',NULL,'111-202-12','sam@gmail.com',104);
INSERT INTO student 
 	VALUES(205,'will','smith','121-242-22','will.smith@gmail.com',103);
INSERT INTO student 
 	VALUES(003,'Aarya','stark','201-111-21','Aarya@gmail.com',100);
INSERT INTO student 
 	VALUES(306,NULL,'Emma','102-222-111','Emma@gmail.com',102);
INSERT INTO student 
 	VALUES(010,'Chris','Evans','222-212-11','Chris.Evans@gmail.com',104);
INSERT INTO student 
 	VALUES(310,'chris','Hemswarth','101-202-11','Hemswarth@gmail.com',101);
INSERT INTO student 
 	VALUES(19,'Watson','Emma','111-222-11','Emma.Watson@gmail.com',100);
INSERT INTO student 
 	VALUES(300,'Harry','potter','121-212-111','Harry.potter@gmail.com',101);
INSERT INTO student 
 	VALUES(222,'Ron',NULL,'222-111-121','Ron@gmail.com',103);
INSERT INTO student 
 	VALUES(133,'jinny','Weasly','131-202-11','jinny.Weasly@gmail.com',102);
INSERT INTO student 
 	VALUES(151,'Sansa',NULL ,'109-22-33','Sansa@gmail.com',100);
INSERT INTO student 
 	VALUES(18,'Rock',NULL,'22-41-77','Rock@gmail.com',104);
INSERT INTO student 
 	VALUES(38,'Scarlet','Jhonson','66-21-111','Scarlet@gmail.com',103);
INSERT INTO student 
 	VALUES(109,NULL,'snow','11-200-101','snow@gmail.com',101);
 	
CREATE TABLE Faculty (
    Faculty_id INT PRIMARY KEY,
    Facultyname VARCHAR(255),
    Designation VARCHAR(255),
    Qualification VARCHAR(255),
    Phone_number VARCHAR(15) UNIQUE NOT NULL,
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

INSERT INTO Faculty 
 	VALUES(20,'Harsha','Professor','phd','12130144',100);
 	SELECT * FROM faculty;
 	
INSERT INTO Faculty 
 	VALUES(21,'chandu','Asst.Professor','MSc','12130141',102);
INSERT INTO Faculty 
 	VALUES(22,'Maresh','Lecturer','MEd','12130142',103);
INSERT INTO Faculty
 	VALUES(23,'Honey','Asst.Professor','MSc','12130143',104);
INSERT INTO Faculty 
 	VALUES(24,'Ajay','Lecturer','MBA','12130146',101);
 	
CREATE TABLE Library (
    Library_id INT PRIMARY KEY,
    Book_id INT,
    IssueDate DATETIME DEFAULT NOW(),
    ReturnDate DATETIME DEFAULT NOW(),
    Roll_number INT,
    FOREIGN KEY (Roll_number) REFERENCES student(Roll_number),
    FOREIGN KEY (Book_id) REFERENCES Book(Book_id)
);

INSERT INTO Library  VALUES (101, 1, '2024-01-15', '2024-02-15', 1);
INSERT INTO Library  VALUES (102, 2, '2024-03-01', '2024-04-01', 109);
INSERT INTO Library  VALUES (103, 18, NOW(), '2024-05-20', 3);
INSERT INTO Library  VALUES (104, 9, '2024-02-10', '2024-03-10', 10);
INSERT INTO Library  VALUES (105, 19, '2024-04-15', NOW(), 19);
INSERT INTO Library  VALUES (106, 6, '2024-03-20', '2024-06-20', 1);
INSERT INTO Library  VALUES (107, 20, '2024-05-01', '2024-05-30', 18);
INSERT INTO Library  VALUES (108, 8, '2024-06-01', '2024-07-01', 109);
INSERT INTO Library  VALUES (109, 10, '2024-02-20', '2024-03-20', 222);
INSERT INTO Library  VALUES (110, 7, NOW(), '2024-04-30', 300);

SELECT * FROM library;
    
CREATE TABLE Book (
    Book_id INT PRIMARY KEY,
    BookName VARCHAR(225) UNIQUE NOT NULL,
    Author VARCHAR(255),
    Publisher VARCHAR(255),
    price float,
    Quantity INT
);
 	
INSERT INTO Book  VALUES (1, 'Introduction to Algorithms', 'Thomas H. Cormen', 'MIT Press', 59.99, 10);
INSERT INTO Book  VALUES (2, 'Digital Design', 'M. Morris Mano', 'Prentice Hall', 79.99, 5);
INSERT INTO Book  VALUES (3, 'Signals and Systems', 'Alan V. Oppenheim', 'Prentice Hall', 89.99, 8);
INSERT INTO Book  VALUES (4, 'Computer Networks', 'Andrew S. Tanenbaum', 'Pearson', 69.99, 12);
INSERT INTO Book  VALUES (5, 'Operating System Concepts', 'Abraham Silberschatz', 'Wiley', 64.99, 7);
INSERT INTO Book  VALUES (6, 'Database System Concepts', 'Silberschatz, Korth, Sudarshan', 'McGraw-Hill', 74.99, 9);
INSERT INTO Book  VALUES (7, 'Microelectronics', 'Jacob Millman', 'McGraw-Hill', 89.99, 6);
INSERT INTO Book  VALUES (8, 'Control Systems Engineering', 'Norman S. Nise', 'Wiley', 79.99, 5);
INSERT INTO Book  VALUES (9, 'Fluid Mechanics', 'Frank M. White', 'McGraw-Hill', 89.99, 10);
INSERT INTO Book  VALUES (10, 'Structural Analysis', 'Russell C. Hibbeler', 'Pearson', 79.99, 8);
INSERT INTO Book  VALUES (11, 'Engineering Mechanics: Dynamics', 'J.L. Meriam', 'Wiley', 69.99, 7);
INSERT INTO Book  VALUES (12, 'Thermodynamics: An Engineering Approach', 'Yunus Çengel', 'McGraw-Hill', 74.99, 10);
INSERT INTO Book  VALUES (13, 'Software Engineering', 'Ian Sommerville', 'Addison-Wesley', 64.99, 9);
INSERT INTO Book  VALUES (14, 'Artificial Intelligence: A Modern Approach', 'Stuart Russell', 'Prentice Hall', 99.99, 5);
INSERT INTO Book  VALUES (15, 'Computer Architecture', 'David A. Patterson', 'Morgan Kaufmann', 89.99, 8);
INSERT INTO Book  VALUES (16, 'Engineering Mechanics: Statics', 'J.L. Meriam', 'Wiley', 69.99, 6);
INSERT INTO Book  VALUES (17, 'Circuit Analysis', 'William H. Hayt', 'McGraw-Hill', 79.99, 7);
INSERT INTO Book  VALUES (18, 'Data Structures and Algorithm Analysis', 'Mark Allen Weiss', 'Addison-Wesley', 64.99, 5);
INSERT INTO Book  VALUES (19, 'Web Development with Node and Express', 'Evan Hahn', 'O\'Reilly Media', 39.99, 10);
INSERT INTO Book  VALUES (20, 'Engineering Mechanics: Statics and Dynamics', 'R.C. Hibbeler', 'Pearson', 79.99, 9);

SELECT * FROM book;

SELECT first_name,email,book.Book_id,IssueDate,ReturnDate,bookname,Author 
FROM student 
INNER JOIN Library ON student.Roll_number=library.Roll_number 
inner join book ON library.Book_id=book.Book_id; #Column 'Book_id' in field list is ambiguous

SELECT first_name,email,Book_id,IssueDate,ReturnDate FROM student  left JOIN Library ON student.Roll_number=library.Roll_number;
SELECT student.Roll_number, student.first_name, student.last_name, Library.Book_id, Library.IssueDate, Library.ReturnDate
FROM student
LEFT OUTER JOIN Library ON student.Roll_number = Library.Roll_number;
SELECT roll_number,email FROM student GROUP BY first_Name;#error
SELECT * FROM student;
SELECT first_name, COUNT(*) AS student_count FROM student GROUP BY first_name ORDER BY first_Name;
SELECT  course_Name,COUNT(*) AS student_count FROM student INNER JOIN course ON student.course_id=course.course_id GROUP BY course_Name;