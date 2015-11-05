#Evgeniya Bautina
use bookstore;
#query 01
SELECT * FROM books CROSS JOIN categories;

#query 02
SELECT e.LastName "Employee", e.EmployeeID "EmpID", m.LastName "Manager", m.EmployeeID "MgrID"  FROM employees e JOIN employees m  ON (e.MgrID=m.EmployeeID);

#query 03
SELECT e.LastName, e.hireDate from employees e JOIN  employees j ON (j.LastName = 'SMITH' and e.HireDate>j.HireDate);

#query 04
SELECT b.title, d.contact, d.phone FROM  books b JOIN  publisher d ON (b.publisherID = d.publisherID);

#query 05
SELECT c.FirstName, c.LastName, o.OrderID FROM customers c JOIN orders o USING(CustomerID) WHERE o.ShipDate IS NULL ORDER BY o.OrderDate;

#query 06
SELECT c.FirstName, c.LastName, od.ISBN, b.Title FROM customers c JOIN orders o ON c.CustomerID=o.CustomerID JOIN OrderDetails od ON od.OrderID = o.OrderID JOIN books b ON od.ISBN = b.ISBN ORDER BY c.LastName DESC, c.FirstName DESC, b.ISBN DESC;

#query 07
SELECT c.* FROM customers c JOIN orders o ON c.CustomerID=o.CustomerID JOIN orderdetails od ON o.OrderID = od.OrderID JOIN books b ON od.ISBN = b.ISBN WHERE c.State = 'FL' AND b.CatgID=1877;

#query 08
SELECT b.* FROM books b JOIN bookauthor ba ON b.ISBN =ba.ISBN JOIN author a ON a.AuthorID = ba.authorID WHERE a.LastName='ADAMS';

#query 09 
SELECT b.*, o.orderid, c.state FROM books b LEFT OUTER JOIN orderdetails od ON b.isbn = od.isbn LEFT OUTER JOIN orders o ON o.orderid = od.orderid LEFT OUTER JOIN customers c ON c.customerid = o.customerid;

#query 10
SELECT e.firstname, e.LastName as 'Employee Name', e.job, s.firstname, s.LastName as 'Manager Name'  FROM employees e LEFT OUTER JOIN  employees s ON e.mgrId=s.employeeId order by s.firstname, s.lastname;