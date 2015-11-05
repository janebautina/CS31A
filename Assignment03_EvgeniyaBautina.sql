#Evgeniya Bautina
#query 01
select * from books;
#query 02
select CustomerID, FirstName, LastName, address,city from customers;
#query 03
select publisherID, Name, Contact, phone from publisher;
#query 04
select EmployeeID, LastName, FirstName, Job from employees order by FirstName, salary;
#query 05
select title, price+2 from books;
#query 06
select DISTINCT CustomerID from orders;
#query 07
select * from books ORDER BY title DESC;
#query 08
select concat(LastName ,',',' ',FirstName,' ', Address) as " customer name and address" from customers;
#query 09
insert into customers (CustomerID, LastName, FirstName, Address, City, State, Zip) values (1021,'Brown', 'Fred','200 Edgewater Blvd', 'San Mateo','CA','94403');
#query 10
update customers set LastName='Orange' where CustomerID=1002;
#query 11
update books set price = price * 1.2 where price = 25.00;
#query 12
delete from employees where EmployeeID = 7839;
#query 13
select catgID, title from books order by catgID, title DESC;





