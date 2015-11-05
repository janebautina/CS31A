#Evgeniya Bautina
use studentdb;
SHOW TABLES; #display the names of the tables in studentdb, query 01
DESC student; #show the structure of the student table, query 02
SELECT * FROM student; # retrieve all information from student table, query 03
INSERT into student values ('45678', 'John', 'Hisory', '67'); #add an additional info., guery 04
INSERT into student values ('34322', 'Alex', 'Music', '34'); #add an additional info, query  04
SELECT name, dept_name FROM student; #display the name and department name of each student, query 05
