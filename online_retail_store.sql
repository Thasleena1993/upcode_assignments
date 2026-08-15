--Creation of Tables

CREATE TABLE suppliers(supplier_id INT PRIMARY KEY,supplier_name varchar(50),contact_info varchar(50))
CREATE TABLE products(prod_id INT PRIMARY KEY,prod_name varchar(50),price money,supplier_id INT,FOREIGN KEY(supplier_id)REFERENCES suppliers(supplier_id))
CREATE TABLE customers(customer_id INT PRIMARY KEY,customer_name varchar(50),contact_info varchar(50))
CREATE TABLE orders(order_id INT PRIMARY KEY,customer_id INT,order_date date,toral_amount DECIMAL(10,2),FOREIGN KEY(customer_id)REFERENCES customers(customer_id))
CREATE TABLE order_details(order_details_id INT PRIMARY KEY,order_id INT,prod_id INT,quantity INT,FOREIGN KEY(order_id)REFERENCES orders(order_id),FOREIGN KEY(prod_id)REFERENCES products(prod_id))

ALTER TABLE orders RENAME COLUMN toral_amount TO total_amount

-- Inserting data's in to th Tables

INSERT INTO suppliers(supplier_id,supplier_name,contact_info)VALUES
(1,'Apple','apple@gmail.com'),
(2,'Samsung','samsung@gmail.com'),
(3,'Dell','dell@gmail.com'),
(4,'Sony','sony@gmail.com'),
(5,'Lenovo','lenovo@gmail.com')

INSERT INTO products(prod_id,prod_name,price,supplier_id)VALUES
(101,'Laptop',50000,1),
(102,'MacBook Air 13-inch',6000,1),
(103,'Galaxy S25',25000,2),
(104,'TV',45000,2),
(105,'Laptop',20000,5),
(106,'Monitor',5000,5),
(107,'Dell 24" Monitor',1000,3),
(108,'Alpha ZV-E10 Camera',4000,4)

INSERT INTO customers(customer_id,customer_name,contact_info)VALUES
(1,'Anu Philip','anu@gmail.com'),
(2,'Kebin','kebin@gmail.com'),
(3,'Leela M','leela@gmail.com'),
(4,'Sony','sony@gmail.com'),
(5,'Ravi','ravi@gmail.com')

INSERT INTO orders(order_id,customer_id,order_date,total_amount)VALUES
(1001,1,'20/07/2026',55000),
(1002,1,'20/07/2026',5000),
(1003,3,'25/07/2026',10000),
(1004,5,'22/07/2026',25000),
(1005,4,'27/07/2026',4000)

INSERT INTO order_details(order_details_id,order_id,prod_id,quantity)VALUES
(1,1001,101,2),
(2,1002,103,1),
(3,1003,101,1),
(4,1004,106,1),
(5,1005,102,3)
INSERT INTO order_details(order_details_id,order_id,prod_id,quantity)VALUES
(6,1001,104,1)

--To display the tables data's

SELECT * FROM suppliers
SELECT * FROM products
SELECT * FROM customers
SELECT * FROM orders
SELECT * FROM order_details

ALTER TABLE products ALTER COLUMN price TYPE DECIMAL(10,2)


UPDATE orders SET total_amount=0;

--To update the total_amount column in the table named orders automatically.

UPDATE orders AS o
SET total_amount=(
SELECT SUM(od.quantity * p.price)
FROM order_details AS od
JOIN products AS p 
ON od.prod_id = p.prod_id
WHERE od.order_id = o.order_id);

--1. To show all products ordered by a specific customer, including the order date and quantity.

SELECT c.customer_name,p.prod_name,o.order_id,o.order_date,od.quantity 
FROM customers AS c
JOIN orders AS o ON o.customer_id = c.customer_id
JOIN order_details AS od ON od.order_id = o.order_id
JOIN products AS p ON p.prod_id = od.prod_id
WHERE c.customer_name = 'Anu Philip';

--2. To calculate the total sales for each product.

SELECT p.prod_id,p.prod_name,p.price,
SUM(od.quantity) as total_quantity_sold,
SUM(od.quantity * p.price) as total_sales 
FROM products AS p 
JOIN order_details AS od ON od.prod_id = p.prod_id 
GROUP BY p.prod_id,p.prod_name ORDER BY total_sales DESC;

--3. To Display products that have not been ordered by any customer.

SELECT  p.prod_id,p.prod_name,od.order_id 
FROM products AS p
LEFT JOIN order_details AS od 
ON od.prod_id = p.prod_id 
WHERE od.prod_id IS NULL ORDER BY p.prod_id;


