create database Timetable;

use Timetable;

create table users(
	uid INT auto_increment primary key,
    uname varchar(50),
    email varchar(50),
    password varchar(50),
    role varchar(30)
);

CREATE TABLE timetable (
    id INT AUTO_INCREMENT PRIMARY KEY,
    class INT,
    section VARCHAR(1),
    day VARCHAR(10),
    period1 VARCHAR(50),
    period2 VARCHAR(50),
    period3 VARCHAR(50),
    lunch VARCHAR(50),
    period4 VARCHAR(50),
    period5 VARCHAR(50),
    period6 VARCHAR(50)
);

select * from users;

ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE (email);

select * from timetable;

INSERT INTO timetable (class, section, day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
(6, 'A', 'Monday', 'Hindi', 'English', 'Maths', 'L B', 'Science', 'Social', 'Telugu'),
(6, 'A', 'Tuesday', 'English', 'Maths', 'Hindi', 'U R', 'Science', 'Social', 'Telugu'),
(6, 'A', 'Wednesday', 'Maths', 'Science', 'Social', 'N E', 'Telugu', 'Hindi', 'English'),
(6, 'A', 'Thursday', 'Science', 'Social', 'Telugu', 'C A', 'Hindi', 'English', 'Maths'),
(6, 'A', 'Friday', 'Social', 'Telugu', 'Hindi', 'H K', 'English', 'Maths', 'Science'),
(6, 'A', 'Saturday', 'Telugu', 'Hindi', 'English', '30MIN', 'Maths', 'Science', 'Social');


INSERT INTO timetable (class, section, day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
(6, 'B', 'Monday', 'Telugu', 'Hindi', 'English', 'LB','Maths', 'Science', 'Social'),
(6, 'B', 'Tuesday', 'Hindi', 'English', 'Maths','UR', 'Science', 'Social', 'Telugu'),
(6, 'B', 'Wednesday', 'English', 'Maths', 'Science', 'NE','Social', 'Telugu', 'Hindi'),
(6, 'B', 'Thursday', 'Maths', 'Science', 'Social', 'CA','Telugu', 'Hindi', 'English'),
(6, 'B', 'Friday', 'Science', 'Social', 'Telugu', 'HK','Hindi', 'English', 'Maths'),
(6, 'B', 'Saturday', 'Social', 'Telugu', 'Hindi', '30MIN','English', 'Maths', 'Science');


INSERT INTO timetable (class, section, day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
(7, 'A', 'Monday', 'English', 'Maths', 'Science',  'LB','Social', 'Telugu', 'Hindi'),
(7, 'A', 'Tuesday', 'Maths', 'Science', 'Social',  'UR','Telugu', 'Hindi', 'English'),
(7, 'A', 'Wednesday', 'Science', 'Social', 'Telugu', 'NE', 'Hindi', 'English', 'Maths'),
(7, 'A', 'Thursday', 'Social', 'Telugu', 'Hindi', 'CA', 'English', 'Maths', 'Science'),
(7, 'A', 'Friday', 'Telugu', 'Hindi', 'English',  'HK','Maths', 'Science', 'Social'),
(7, 'A', 'Saturday', 'Hindi', 'English', 'Maths', '30MIN','Science', 'Social', 'Telugu');

INSERT INTO timetable (class, section, day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
(7, 'B', 'Monday', 'Maths', 'Science', 'Social','LB', 'Telugu', 'Hindi', 'English'),
(7, 'B', 'Tuesday', 'Science', 'Social', 'Telugu','UR', 'Hindi', 'English', 'Maths'),
(7, 'B', 'Wednesday', 'Social', 'Telugu', 'Hindi', 'NE','English', 'Maths', 'Science'),
(7, 'B', 'Thursday', 'Telugu', 'Hindi', 'English', 'CA','Maths', 'Science', 'Social'),
(7, 'B', 'Friday', 'Hindi', 'English', 'Maths','LB', 'HK', 'Social', 'Telugu'),
(7, 'B', 'Saturday', 'English', 'Maths', 'Science', '30MIN','Social', 'Telugu', 'Hindi');

INSERT INTO timetable (class, section, day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
(8, 'A', 'Monday', 'Science', 'Social', 'Telugu', 'LB','Hindi', 'English', 'Maths'),
(8, 'A', 'Tuesday', 'Social', 'Telugu', 'Hindi', 'UR','English', 'Maths', 'Science'),
(8, 'A', 'Wednesday', 'Telugu', 'Hindi', 'English', 'NE','Maths', 'Science', 'Social'),
(8, 'A', 'Thursday', 'Hindi', 'English', 'Maths', 'CA','Science', 'Social', 'Telugu'),
(8, 'A', 'Friday', 'English', 'Maths', 'Science', 'HK','Social', 'Telugu', 'Hindi'),
(8, 'A', 'Saturday', 'Maths', 'Science', 'Social', '30MIN','Telugu', 'Hindi', 'English');

INSERT INTO timetable (class, section, day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
(8, 'B', 'Monday', 'Social', 'Telugu', 'Hindi','LB', 'English', 'Maths', 'Science'),
(8, 'B', 'Tuesday', 'Telugu', 'Hindi', 'English','UR', 'Maths', 'Science', 'Social'),
(8, 'B', 'Wednesday', 'Hindi', 'English', 'Maths', 'NE','Science', 'Social', 'Telugu'),
(8, 'B', 'Thursday', 'English', 'Maths', 'Science', 'CA','Social', 'Telugu', 'Hindi'),
(8, 'B', 'Friday', 'Maths', 'Science', 'Social','HK', 'Telugu', 'Hindi', 'English'),
(8, 'B', 'Saturday', 'Science', 'Social', 'Telugu', '30MIN','Hindi', 'English', 'Maths');

INSERT INTO timetable (class, section, day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
(9, 'A', 'Monday', 'Hindi_1', 'English_1', 'Maths_1', 'L B', 'Science_1', 'Social_1', 'Telugu_1'),
(9, 'A', 'Tuesday', 'English_1', 'Maths_1', 'Hindi_1', 'U R', 'Science_1', 'Social_1', 'Telugu_1'),
(9, 'A', 'Wednesday', 'Maths_1', 'Science_1', 'Social_1', 'N E', 'Telugu_1', 'Hindi_1', 'English_1'),
(9, 'A', 'Thursday', 'Science_1', 'Social_1', 'Telugu_1', 'C A', 'Hindi_1', 'English_1', 'Maths_1'),
(9, 'A', 'Friday', 'Social_1', 'Telugu_1', 'Hindi_1', 'H K', 'English_1', 'Maths_1', 'Science_1'),
(9, 'A', 'Saturday', 'Telugu_1', 'Hindi_1', 'English_1', '30MIN', 'Maths_1', 'Science_1', 'Social_1');


INSERT INTO timetable (class, section, day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
(9, 'B', 'Monday', 'Telugu_1', 'Hindi_1', 'English_1', 'LB', 'Maths_1', 'Science_1', 'Social_1'),
(9, 'B', 'Tuesday', 'Hindi_1', 'English_1', 'Maths_1', 'UR', 'Science_1', 'Social_1', 'Telugu_1'),
(9, 'B', 'Wednesday', 'English_1', 'Maths_1', 'Science_1', 'NE', 'Social_1', 'Telugu_1', 'Hindi_1'),
(9, 'B', 'Thursday', 'Maths_1', 'Science_1', 'Social_1', 'CA', 'Telugu_1', 'Hindi_1', 'English_1'),
(9, 'B', 'Friday', 'Science_1', 'Social_1', 'Telugu_1', 'HK', 'Hindi_1', 'English_1', 'Maths_1'),
(9, 'B', 'Saturday', 'Social_1', 'Telugu_1', 'Hindi_1', '30MIN', 'English_1', 'Maths_1', 'Science_1');

INSERT INTO timetable (class, section, day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
(10, 'A', 'Monday', 'English_1', 'Maths_1', 'Science_1',  'LB', 'Social_1', 'Telugu_1', 'Hindi_1'),
(10, 'A', 'Tuesday', 'Maths_1', 'Science_1', 'Social_1',  'UR', 'Telugu_1', 'Hindi_1', 'English_1'),
(10, 'A', 'Wednesday', 'Science_1', 'Social_1', 'Telugu_1', 'NE', 'Hindi_1', 'English_1', 'Maths_1'),
(10, 'A', 'Thursday', 'Social_1', 'Telugu_1', 'Hindi_1', 'CA', 'English_1', 'Maths_1', 'Science_1'),
(10, 'A', 'Friday', 'Telugu_1', 'Hindi_1', 'English_1',  'HK', 'Maths_1', 'Science_1', 'Social_1'),
(10, 'A', 'Saturday', 'Hindi_1', 'English_1', 'Maths_1', '30MIN', 'Science_1', 'Social_1', 'Telugu_1');


INSERT INTO timetable (class, section, day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
(10, 'B', 'Monday', 'Maths_1', 'Science_1', 'Social_1', 'LB', 'Telugu_1', 'Hindi_1', 'English_1'),
(10, 'B', 'Tuesday', 'Science_1', 'Social_1', 'Telugu_1', 'UR', 'Hindi_1', 'English_1', 'Maths_1'),
(10, 'B', 'Wednesday', 'Social_1', 'Telugu_1', 'Hindi_1', 'NE', 'English_1', 'Maths_1', 'Science_1'),
(10, 'B', 'Thursday', 'Telugu_1', 'Hindi_1', 'English_1', 'CA', 'Maths_1', 'Science_1', 'Social_1'),
(10, 'B', 'Friday', 'Hindi_1', 'English_1', 'Maths_1', 'LB', 'HK', 'Social_1', 'Telugu_1'),
(10, 'B', 'Saturday', 'English_1', 'Maths_1', 'Science_1', '30MIN', 'Social_1', 'Telugu_1', 'Hindi_1');

CREATE TABLE telugu (
    day VARCHAR(20),
    period1 VARCHAR(50),
    period2 VARCHAR(50),
    period3 VARCHAR(50),
    lunch VARCHAR(50),
    period4 VARCHAR(50),
    period5 VARCHAR(50),
    period6 VARCHAR(50)
);

CREATE TABLE hindi (
    day VARCHAR(20),
    period1 VARCHAR(50),
    period2 VARCHAR(50),
    period3 VARCHAR(50),
    lunch VARCHAR(50),
    period4 VARCHAR(50),
    period5 VARCHAR(50),
    period6 VARCHAR(50)
);

CREATE TABLE english (
    day VARCHAR(20),
    period1 VARCHAR(50),
    period2 VARCHAR(50),
    period3 VARCHAR(50),
    lunch VARCHAR(50),
    period4 VARCHAR(50),
    period5 VARCHAR(50),
    period6 VARCHAR(50)
);

CREATE TABLE maths (
    day VARCHAR(20),
    period1 VARCHAR(50),
    period2 VARCHAR(50),
    period3 VARCHAR(50),
    lunch VARCHAR(50),
    period4 VARCHAR(50),
    period5 VARCHAR(50),
    period6 VARCHAR(50)
);

CREATE TABLE science (
    day VARCHAR(20),
    period1 VARCHAR(50),
    period2 VARCHAR(50),
    period3 VARCHAR(50),
    lunch VARCHAR(50),
    period4 VARCHAR(50),
    period5 VARCHAR(50),
    period6 VARCHAR(50)
);

CREATE TABLE social (
    day VARCHAR(20),
    period1 VARCHAR(50),
    period2 VARCHAR(50),
    period3 VARCHAR(50),
    lunch VARCHAR(50),
    period4 VARCHAR(50),
    period5 VARCHAR(50),
    period6 VARCHAR(50)
);

CREATE TABLE telugu_1 (
    day VARCHAR(20),
    period1 VARCHAR(50),
    period2 VARCHAR(50),
    period3 VARCHAR(50),
    lunch VARCHAR(50),
    period4 VARCHAR(50),
    period5 VARCHAR(50),
    period6 VARCHAR(50)
);

CREATE TABLE hindi_1 (
    day VARCHAR(20),
    period1 VARCHAR(50),
    period2 VARCHAR(50),
    period3 VARCHAR(50),
    lunch VARCHAR(50),
    period4 VARCHAR(50),
    period5 VARCHAR(50),
    period6 VARCHAR(50)
);

CREATE TABLE english_1 (
    day VARCHAR(20),
    period1 VARCHAR(50),
    period2 VARCHAR(50),
    period3 VARCHAR(50),
    lunch VARCHAR(50),
    period4 VARCHAR(50),
    period5 VARCHAR(50),
    period6 VARCHAR(50)
);

CREATE TABLE maths_1 (
    day VARCHAR(20),
    period1 VARCHAR(50),
    period2 VARCHAR(50),
    period3 VARCHAR(50),
    lunch VARCHAR(50),
    period4 VARCHAR(50),
    period5 VARCHAR(50),
    period6 VARCHAR(50)
);

CREATE TABLE science_1 (
    day VARCHAR(20),
    period1 VARCHAR(50),
    period2 VARCHAR(50),
    period3 VARCHAR(50),
    lunch VARCHAR(50),
    period4 VARCHAR(50),
    period5 VARCHAR(50),
    period6 VARCHAR(50)
);

CREATE TABLE social_1 (
    day VARCHAR(20),
    period1 VARCHAR(50),
    period2 VARCHAR(50),
    period3 VARCHAR(50),
    lunch VARCHAR(50),
    period4 VARCHAR(50),
    period5 VARCHAR(50),
    period6 VARCHAR(50)
);

INSERT INTO telugu (day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
('Monday', '6A', '8B', '8A', 'L', '7B', '7A', '6B'),
('Tuesday', '8B', '8A', '7B', 'U', '7A', '6B', '6A'),
('Wednesday', '8A', '7B',  '7A','N', '6B', '6A','8B'),
('Thursday', '7B', '7A', '6B','C', '6A','8B','8A'),
('Friday',  '7A', '6B', '6A','H','8B','8A','7B'),
('Saturday',  '6B', '6A','8B','30MIN','8A','7B','7A');


INSERT INTO hindi (day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
('Monday', '8B', '8A', '7B', 'L', '7A', '6B', '6A'),
('Tuesday', '8A', '7B',  '7A','U', '6B', '6A','8B'),
('Wednesday', '7B', '7A', '6B','N', '6A','8B','8A'),
('Thursday',  '7A', '6B', '6A','C','8B','8A','7B'),
('Friday',  '6B', '6A','8B','H','8A','7B','7A'),
('Saturday', '6A', '8B', '8A', '30MIN', '7B', '7A', '6B');


INSERT INTO english(day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
('Monday', '8A', '7B',  '7A','L', '6B', '6A','8B'),
('Tuesday', '7B', '7A', '6B','U', '6A','8B','8A'),
('Wednesday',  '7A', '6B', '6A','N','8B','8A','7B'),
('Thursday',  '6B', '6A','8B','C','8A','7B','7A'),
('Friday', '6A', '8B', '8A', 'H', '7B', '7A', '6B'),
('Saturday', '8B', '8A', '7B', '30MIN', '7A', '6B', '6A');


INSERT INTO maths(day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
('Monday', '7B', '7A', '6B','L', '6A','8B','8A'),
('Tuesday',  '7A', '6B', '6A','U','8B','8A','7B'),
('Wednesday',  '6B', '6A','8B','N','8A','7B','7A'),
('Thursday', '6A', '8B', '8A', 'C', '7B', '7A', '6B'),
('Friday', '8B', '8A', '7B', 'H', '7A', '6B', '6A'),
('Saturday', '8A', '7B',  '7A','30MIN', '6B', '6A','8B');


INSERT INTO science(day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
('Monday',  '7A', '6B', '6A','L','8B','8A','7B'),
('Tuesday',  '6B', '6A','8B','U','8A','7B','7A'),
('Wednesday', '6A', '8B', '8A', 'N', '7B', '7A', '6B'),
('Thursday', '8B', '8A', '7B', 'C', '7A', '6B', '6A'),
('Friday', '8A', '7B',  '7A','H', '6B', '6A','8B'),
('Saturday', '7B', '7A', '6B','30MIN', '6A','8B','8A');


INSERT INTO social(day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
('Monday',  '6B', '6A','8B','L','8A','7B','7A'),
('Tuesday', '6A', '8B', '8A', 'U', '7B', '7A', '6B'),
('Wednesday', '8B', '8A', '7B', 'N', '7A', '6B', '6A'),
('Thursday', '8A', '7B',  '7A','C', '6B', '6A','8B'),
('Friday', '7B', '7A', '6B','H', '6A','8B','8A'),
('Saturday',  '7A', '6B', '6A','30MIN','8B','8A','7B');


INSERT INTO telugu_1(day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
('Monday', '9A', '-', '-', 'L', '10B', '10A', '9B'),
('Tuesday', '-', '-', '10B', 'U', '10A', '9B', '9A'),
('Wednesday', '-', '10B',  '10A','N', '9B', '9A','-'),
('Thursday', '10B', '10A', '9B','C', '9A','-','-'),
('Friday',  '10A', '9B', '9A','H','-','-','10B'),
('Saturday',  '9B', '9A','-','30MIN','-','10B','10A');


INSERT INTO hindi_1(day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
('Monday', '-', '-', '10B', 'L', '10A', '9B', '9A'),
('Tuesday', '-', '10B',  '10A','U', '9B', '9A','-'),
('Wednesday', '10B', '10A', '9B','N', '9A','-','-'),
('Thursday',  '10A', '9B', '9A','C','-','-','10B'),
('Friday',  '9B', '9A','-','H','-','10B','10A'),
('Saturday', '9A', '-', '-', '30MIN', '10B', '10A', '9B');


INSERT INTO english_1(day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
('Monday', '-', '10B',  '10A','L', '9B', '9A','-'),
('Tuesday', '10B', '10A', '9B','U', '9A','-','-'),
('Wednesday',  '10A', '9B', '9A','N','-','-','10B'),
('Thursday',  '9B', '9A','-','C','-','10B','10A'),
('Friday', '9A', '-', '-', 'H', '10B', '10A', '9B'),
('Saturday', '-', '-', '10B', '30MIN', '10A', '9B', '9A');


INSERT INTO maths_1(day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
('Monday', '10B', '10A', '9B','L', '9A','-','-'),
('Tuesday',  '10A', '9B', '9A','U','-','-','10B'),
('Wednesday',  '9B', '9A','-','N','-','10B','10A'),
('Thursday', '9A', '-', '-', 'C', '10B', '10A', '9B'),
('Friday', '-', '-', '10B', 'H', '10A', '9B', '9A'),
('Saturday', '-', '10B',  '10A','30MIN', '9B', '9A','-');


INSERT INTO science_1(day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
('Monday',  '10A', '9B', '9A','L','-','-','10B'),
('Tuesday',  '9B', '9A','-','U','-','10B','10A'),
('Wednesday', '9A', '-', '-', 'N', '10B', '10A', '9B'),
('Thursday', '-', '-', '10B', 'C', '10A', '9B', '9A'),
('Friday', '-', '10B',  '10A','H', '9B', '9A','-'),
('Saturday', '10B', '10A', '9B','30MIN', '9A','-','-');


INSERT INTO social_1(day, period1, period2, period3, lunch, period4, period5, period6)
VALUES
('Monday',  '9B', '9A','-','L','-','10B','10A'),
('Tuesday', '9A', '-', '-', 'U', '10B', '10A', '9B'),
('Wednesday', '-', '-', '10B', 'N', '10A', '9B', '9A'),
('Thursday', '-', '10B',  '10A','C', '9B', '9A','-'),
('Friday', '10B', '10A', '9B','H', '9A','-','-'),
('Saturday',  '10A', '9B', '9A','30MIN','-','-','10B');
