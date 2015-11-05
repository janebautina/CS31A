#Evgeniya Bautina
use bookstore;

#query 01
SELECT lastname, firstname FROM (SELECT * FROM customers WHERE lastname='Jones') lnJones;

#query 02
SElECT ISBN, price, title  FROM books WHERE price>(SELECT AVG(price) FROM books);

#query 03
SELECT OrderID, shipstate FROM orders WHERE shipstate = (SELECT shipstate FROM orders WHERE orderID=1014);

#query 04
SELECT ShipCity, ShipState FROM orders WHERE (ShipDate-OrderDate)=(Select MAX(ShipDate-OrderDate) from orders);

#query 05
SELECT ISBN, Price, (SELECT COUNT(Quantity) FROM orderdetails WHERE books.ISBN=orderdetails.ISBN) AS book_count FROM books;

#query 06
SELECT ISBN, Title FROM books WHERE Title IN (SELECT Title FROM books WHERE title Like  "%e%");

#query 07
SELECT ISBN, Title FROM books WHERE ISBN NOT IN (SELECT od.ISBN FROM orderdetails od, orders o  WHERE o.OrderID=od.orderID);

#query 08
SELECT b.ISBN, b.catgID,b.Title, b.Price FROM books b  WHERE Price>=(SELECT AVG(Price) FROM books WHERE catgID=b.catgID GROUP BY catgID);

#query 09
SELECT o.customerID  FROM customers c, orders o, orderdetails od, books b  WHERE o.OrderId =od.OrderID AND b.ISBN=od.ISBN AND o.customerID=c.customerID AND b.Price = (SELECT MIN(Price) FROM books);

#query 10
SELECT employeeID, lastname FROM employees WHERE employeeId IN (SELECT MgrID FROM employees);

#query 11
SELECT Title, PubDate, CURRENT_DATE from books WHERE PublisherID=(SELECT PublisherID From books where title="THE WOK WAY TO COOK") AND PubDate<CURRENT_DATE();

#query 12
SELECT COUNT(DISTINCT CustomerID) FROM orders WHERE ORDERID IN(SELECT OrderID FROM ORDERDETAILS WHERE ISBN IN (SELECT ISBN FROM bookauthor WHERE authorID = (SELECT authorID FROM author WHERE LastName="AUSTIN" AND FirstName ="JAMES")));

