use company;
#Query 01;
create table newemployee(EmployeeID int(5), LastName varchar(15), FirstName varchar(15), Phone char(12), Email varchar(20), primary key(EmployeeID), unique(Email)) engine = InnoDb;
#Query 02
INSERT INTO NEWEMPLOYEE VALUES(12345, 'Stuart', 'Anne', '206-527-0010','Anne.Stuart@QACS.com');
INSERT INTO NEWEMPLOYEE VALUES(45673, 'Stuart', 'George', '206-527-0011','George.Stuart@QACS.com');
INSERT INTO NEWEMPLOYEE VALUES(67897, 'Stuart', 'Mary', '206-527-0012','Mary.Stuart@QACS.com');
INSERT INTO NEWEMPLOYEE VALUES(55599, 'Orange', 'William', '206-527-0013','William.Orange@QACS.com');
#Query 03
ALTER TABLE NEWEMPLOYEE ADD salary decimal(10,2);
#Query 04
ALTER TABLE NEWEMPLOYEE ADD Gender char(1);
#Query 05
describe NEWEMPLOYEE;
#Query 6
SELECT LastName, FirstName FROM NEWEMPLOYEE;
#Query 07
ALTER TABLE NEWEMPLOYEE DROP COLUMN salary;
#Query 08
SELECT * FROM newemployee;
#Query 09
RENAME TABLE NEWEMPLOYEE to EMPLOYEE_BACKUP;
#Query 10
SHOW tables;
#Query 11
DROP TABLE EMPLOYEE_BACKUP;
