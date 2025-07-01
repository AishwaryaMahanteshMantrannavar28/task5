-- Task 5:  SQL Joins (Inner, Left, Right, Full)
-- Creation of Customers table
    create table Customers(
	Customers_id int primary key,
    Customers_name varchar(50)
    );
-- Inserting the values to Customers table
     insert into Customers values
     ( 121 ,"Aishwarya"),
     (131, "Sudha"),
     (143, "Shrinidhi"),
      (142, "Megha");
-- Creation of Orders table
   create table Orders(
   order_id int,
   order_amount int,
   Customers_id int,
   foreign key (Customers_id)  references Customers(Customers_id)
   );
--  Inserting values to Order table
    insert into orders values
	(101, 500,121), (102,300,131), (103, 450,143), (104,600,142);

-- 1.INNER JOIN
     SELECT Customers.customers_name, Orders.order_amount
     FROM Customers
     INNER JOIN Orders ON Customers.Customers_id = Orders.customers_id;
-- 2. LEFT JOIN
	  SELECT Customers.customers_name, Orders.order_amount
      FROM Customers
	  LEFT JOIN Orders ON Customers.customers_id = Orders.customers_id;
-- 3. RIGHT JOIN
	  SELECT Customers.customers_name, Orders.order_amount
      FROM Customers
      RIGHT JOIN Orders ON Customers.customers_id = Orders.customers_id;
-- 4.  FULL JOIN 
       SELECT Customers.customers_name, Orders.order_amount
       FROM Customers
	   LEFT JOIN Orders ON Customers.customers_id = Orders.customers_id
       UNION
       SELECT Customers.customers_name, Orders.order_amount
	   FROM Customers
	   RIGHT JOIN Orders ON Customers.customers_id = Orders.customers_id;