#Evgeniya Bautina

DROP DATABASE IF EXISTS bookstore;

SOURCE bookstore_schema/bookstore_create_schema.sql
SOURCE bookstore_schema/bookstore_create_tables.sql
SOURCE bookstore_schema/bookstore_insert_data.sql

#query 01
SELECT * FROM customers WHERE CustomerID<>1002;

#query 02
SELECT ISBN, Title FROM books WHERE PublisherID > 3;

#query 03
SELECT * FROM customers WHERE CustomerID in (1003,1004, 1005);

#query 04
SELECT CustomerID, LastName, FirstName, State FROM customers WHERE State IN ('GA', 'NJ') ORDER BY LastName ASC;

#query 05
SELECT * FROM customers WHERE CustomerID BETWEEN 1002 AND 1005;

#query 06
SELECT * FROM Employees WHERE (HireDate > '1970-01-01') AND (EmployeeID>7344);

#query 07
SELECT FirstName, LastName, Salary FROM Employees WHERE LastName LIKE 'S%' AND (Salary NOT IN (4900.00,4200.00,6000.00));

#query 08
SELECT * FROM customers WHERE FirstName LIKE 'J%';

#query 09
SELECT FirstName, LastName FROM AUTHOR WHERE LastName LIKE '%IN%' ORDER BY LastName, FirstName;

#query 10
SELECT ISBN, Title FROM books WHERE Title LIKE '_A_N%' ORDER BY Title DESC;

#query 11
SELECT Title, PubDate FROM books WHERE YEAR(PubDate)='2011';

#query 12
SELECT LastName, FirstName, Address FROM Customers WHERE Address LIKE '%AVENUE';

#ART COURSE DATABASE
DROP DATABASE ArtCourse;

#query 01
CREATE DATABASE ArtCourse; 
USE ArtCourse;
 
#query 02
CREATE TABLE CUSTOMER (
	CustomerNumber INT NOT NULL AUTO_INCREMENT,
	CustomerLastName VARCHAR(255),
	CustomerFirstName VARCHAR(255),
	Phone VARCHAR(12),
	PRIMARY KEY (CustomerNumber)) ENGINE = INNODB;

CREATE TABLE COURSE (
	CourseNumber INT NOT NULL AUTO_INCREMENT,
	Course VARCHAR(255),
	CourseDate DATE,
	Fee DOUBLE, PRIMARY KEY (CourseNumber)) ENGINE = INNODB;

CREATE TABLE ENROLLMENT(
	CustomerNumber INT NOT NULL,
	CourseNumber INT NOT NULL,
	AmountPaid DOUBLE,
	FOREIGN KEY (CustomerNumber) REFERENCES CUSTOMER(CustomerNumber),
	FOREIGN KEY (CourseNumber) REFERENCES COURSE(CourseNumber) ON DELETE CASCADE
	) ENGINE = INNODB;

#query 03
SOURCE artcourse_insert_data.sql

#query 04
SELECT * FROM CUSTOMER;
SELECT * FROM COURSE;
SELECT * FROM ENROLLMENT;



