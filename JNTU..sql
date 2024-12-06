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
    Designation VARCHAR(255),
    Qualification VARCHAR(255),
    Phone_number VARCHAR(15) UNIQUE NOT NULL,
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES course(course_id)
    
CREATE TABLE Library (
    Library_id INT PRIMARY KEY,
    Book_id INT,
    Designation VARCHAR(255),
    Qualification VARCHAR(255),
    Phone_number VARCHAR(15) UNIQUE NOT NULL,
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);
 	
