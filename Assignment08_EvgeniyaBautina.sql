#Evgeniya Bautina

use bookstore;
#query 01

CREATE OR REPLACE VIEW cheap_books AS SELECT * FROM books WHERE Price<25;
SELECT * FROM cheap_books;

#query 02

CREATE OR REPLACE VIEW  contact_view AS SELECT Contact, Phone FROM Publisher;
SELECT * FROM contact_view;

#query 03

CREATE OR REPLACE VIEW  contact_view AS SELECT Contact, Phone FROM Publisher WITH CHECK OPTION;
DESCRIBE contact_view;


#query 04

CREATE OR REPLACE VIEW  book_average AS SELECT catgid, AVG(price) FROM BOOKS WHERE Price<30 GROUP BY catgID HAVING AVG(Price)>13;
SELECT * FROM book_average;

#query 05

CREATE OR REPLACE VIEW  reorderinfo AS SELECT b.ISBN, b.Title, p.contact, p.phone  FROM books b, publisher p WHERE b.publisherID=p.publisherID;
SELECT * FROM reorderinfo; 

#query 06

CREATE OR REPLACE VIEW salary_view  (EmpLastName, EmpFirstName, EmpSalary) AS SELECT LastName, FirstName, Salary FROM employees;
SELECT * FROM salary_view WHERE EmpSalary>=4000;

#query 07

CREATE INDEX i_customers_last_name ON customers(LastName);

#query 08

ALTER TABLE customers DROP INDEX i_customers_last_name;