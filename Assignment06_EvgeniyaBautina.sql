#Evgeniya Bautina
use bookstore;
#query 01
SELECT COUNT(*) FROM books WHERE Price>12.00;

#query 02
SELECT AVG(Price) FROM books;

#query 03
SELECT COUNT(DISTINCT PublisherID) FROM books;

#query 04
SELECT MIN(Price), MAX(Price) FROM books;

#guery 05
SELECT MIN(PubDate) FROM books;

#query 06
SELECT CatgID, AVG(Cost) FROM books GROUP BY CatgID;

#query 07
SELECT CatgID  FROM books GROUP BY CatgID HAVING AVG(Price)>20.00;

#query 08
SELECT catgID, AVG(price) FROM books WHERE Price<40.00 GROUP BY catgID HAVING AVG(Price)>10.00;

#query 09
SELECT customerID, COUNT(*) FROM orders GROUP BY customerID;

#query 10
SELECT deptID, COUNT(*), ROUND(AVG(salary),3) FROM employees GROUP BY deptID;

#query 11
SELECT b.Price FROM books b, author a, bookauthor ba Where a.authorID = ba.authorID AND b.ISBN = ba.ISBN AND a.FirstName = 'SAM' AND a.LastName = 'Smith' GROUP BY b.ISBN ORDER BY price DESC LIMIT 1;

#query 12
SELECT Job, COUNT(*) from employees GROUP BY Job;

#query 13
select od.orderid, c. firstname, c.lastname from customers c, orders o, orderdetails od where o.orderid = od.orderid and o.customerID=c.customerid and (c.State='FL' OR c.state = 'GA') GROUP BY od.orderID HAVING SUM(od.paidEach)>80.00;