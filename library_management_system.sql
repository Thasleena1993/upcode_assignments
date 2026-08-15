--Creation of tables

CREATE TABLE authors(author_id INT PRIMARY KEY,author_name varchar(25))
CREATE TABLE books(book_id varchar(10) PRIMARY KEY,author_id INT,title varchar(50),publication_year int,category varchar(25),FOREIGN KEY(author_id) REFERENCES authors(author_id))
CREATE TABLE members(member_id INT PRIMARY KEY,member_name varchar(25),contact_info varchar(50))
CREATE TABLE loan(loan_id varchar(10) PRIMARY KEY,book_id varchar(10),member_id INT,issue_date date,due_date date,return_date date,FOREIGN KEY(book_id) REFERENCES books(book_id),FOREIGN KEY(member_id) REFERENCES members(member_id))

--Inserting data's in to tables

INSERT INTO authors VALUES 
(1,'J.K. Rowling'),
(2,'Rudyard Kipling'),
(3,'Paulo Coelho'),
(4,'J.R.R. Tolkien'),
(5,'Lewis Carroll');

INSERT INTO books VALUES 
('B01',1,'Harry Potter and the Philosophers Stone',1997,'Fantasy'),
('B02',1,'Harry Potter and the Chamber of Secrets',1998,'Fantasy'),
('B03',2,'The Jungle Book',1894,'Adventure'),
('B04',3,'The Alchemist',1988,'Fiction'),
('B05',5,'Alices Adventures in Wonderland',1865,'Fantasy');

INSERT INTO members VALUES 
(101,'Jaanaki','jaan@gmail.com'),
(102,'Tharun','tharun@gmail.com'),
(103,'Gayathri','gaayu@gmail.com'),
(104,'Laila','laila@gmail.com'),
(105,'Karthi','karthi@gmail.com');

INSERT INTO loan VALUES 
('l01','B01',101,'10-07-2026','25-07-2026','16-07-2026'),
('l02','B03',101,'10-07-2026','25-07-2026','20-07-2026'),
('l03','B04',105,'25-07-2026','10-08-2026',NULL),
('l04','B05',104,'20-07-2026','05-08-2026',NULL),
('l05','B04',102,'24-07-2026','12-08-2026','05-08-2026');

--Display of tables

SELECT * FROM authors
SELECT * FROM books
SELECT * FROM members
SELECT * FROM loan

--To find all books written by a particular author.
SELECT b.book_id,b.title,a.author_name
FROM books AS b
JOIN authors AS a ON a.author_id = b.author_id
WHERE a.author_name = 'Paulo Coelho';

--To list all members who currently have one or more overdue books.

SELECT m.member_name,b.title,l.due_date,l.return_date 
FROM members as m
JOIN loan AS l ON l.member_id = m.member_id
JOIN books AS b ON l.book_id = b.book_id
WHERE l.due_date < CURRENT_DATE AND return_date IS NULL;

--To identify the books that are currently not on loan.

SELECT b.book_id,b.title,l.loan_id 
FROM books AS b 
LEFT JOIN loan AS l ON l.book_id = b.book_id
WHERE l.book_id IS NULL;

--View and CTE (Common Table Expressions)

SELECT a.author_id,a.author_name,b.title FROM authors a
JOIN books b ON a.author_id = b.author_id;

--Create a view for the above query to show all the authors and their books in a single table

CREATE VIEW author_books AS 
SELECT a.author_id,a.author_name,b.title FROM authors a
JOIN books b ON a.author_id = b.author_id;

--Whenever we need the above details in our database just we can view using

SELECT * FROM author_books

--We can Remove a view also, but it exist in database

DROP VIEW author_books;

--CTE : it is a temporary calculation sheet

WITH not_in_loan AS
(SELECT b.book_id,b.title,l.loan_id 
FROM books AS b 
LEFT JOIN loan AS l ON l.book_id = b.book_id
WHERE l.book_id IS NULL)
SELECT * FROM not_in_loan ;





















