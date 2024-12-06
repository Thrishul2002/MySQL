CREATE DATABASE orderdb;

USE studentdb;

CREATE TABLE Student (
    rollNo INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    gender VARCHAR(10),
    course VARCHAR(100)
);

ALTER TABLE Student AUTO_INCREMENT=1000;
SELECT * FROM studentdb
USE producthive;
ALTER TABLE dealers
DROP COLUMN d_i
d;
DROP TABLE dealer_seq;address