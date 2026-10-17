# SQL and Database Assignments

This repository contains SQL assignments and practice exercises completed as part of my Data Analytics course at Upcode. These projects demonstrate my understanding of relational database design, SQL queries, data manipulation, and basic business analysis using PostgreSQL.

## Projects

### 1. Employee Management System
**File:** `employee_management_system.sql`

Designed a relational database to manage employee, department, and project information.

**Database Tables**
- `departments` — Department details
- `employees` — Employee information and department assignments
- `projects` — Project details
- `proj_details` — Employee and project assignments

**SQL Tasks Performed**
- Created tables with primary keys and foreign key relationships
- Inserted sample employee, department, and project data
- Retrieved records using `SELECT` statements
- Used `LEFT JOIN` to combine employee, department, and project information
- Used `COUNT()`, `GROUP BY`, `ORDER BY`, and `LIMIT` to identify the department with the highest number of employees
- Used `LEFT JOIN` and `IS NULL` to identify projects without assigned employees

**Skills Practised:** Relational database design, primary keys, foreign keys, joins, aggregate functions, grouping, sorting, and filtering.

### 2. Library Management System
**File:** `library_management_system.sql`

Designed a relational database to manage authors, books, library members, and book loans.

**Database Tables**
- `authors` — Author information
- `books` — Book titles, publication years, and categories
- `members` — Library member information
- `loan` — Book issue, due, and return dates

**SQL Tasks Performed**
- Created related tables with primary keys and foreign keys
- Inserted sample data for authors, books, members, and loans
- Used `JOIN` to find books written by a particular author
- Used date filtering and `IS NULL` to identify members with overdue, unreturned books
- Used `LEFT JOIN` to identify books that are not recorded as being on loan
- Created, queried, and dropped a database view named `author_books`
- Used a Common Table Expression (CTE) to identify books not recorded in the loan table

**Skills Practised:** Relational database design, joins, date-based filtering, NULL handling, views, and CTEs.

### 3. Online Retail Store
**File:** `online_retail_store.sql`

Designed a relational database to manage suppliers, products, customers, orders, and order details for an online retail store.

**Database Tables**
- `suppliers` — Supplier information
- `products` — Product details and prices
- `customers` — Customer information
- `orders` — Customer orders and order totals
- `order_details` — Products and quantities included in each order

**SQL Tasks Performed**
- Created related tables with primary keys and foreign keys
- Inserted sample supplier, product, customer, and order data
- Renamed a column using `ALTER TABLE`
- Changed a column's data type using `ALTER COLUMN`
- Updated order totals using a subquery with `SUM()`, `JOIN`, and multiplication of quantity by product price
- Used multiple joins to retrieve products ordered by a specific customer, including order dates and quantities
- Calculated total quantities sold and total sales for each product using `SUM()` and `GROUP BY`
- Used `LEFT JOIN` and `IS NULL` to identify products not recorded in order details

**Skills Practised:** Database design, data definition and manipulation, joins, subqueries, aggregate functions, sales calculations, and data analysis.

## Technical Skills Demonstrated

- **Database:** PostgreSQL
- **SQL Queries:** `SELECT`, `INSERT`, `UPDATE`, `ALTER TABLE`
- **Joins:** `JOIN`, `LEFT JOIN`
- **Aggregation:** `SUM()`, `COUNT()`, `GROUP BY`, `ORDER BY`, `LIMIT`
- **Data Filtering:** `WHERE`, `IS NULL`, date conditions
- **Advanced SQL Concepts:** Subqueries, views, and Common Table Expressions (CTEs)
- **Database Design:** Primary keys, foreign keys, and relational tables

## Learning Outcomes

Through these assignments, I practised designing relational databases, retrieving and combining data from multiple tables, calculating sales metrics, identifying missing records, and answering basic business questions using SQL.

These exercises are part of my ongoing journey toward becoming a Data Analyst.

## About Me

I am a Computer Science graduate currently developing my Data Analytics skills in SQL, Python, Excel, and Power BI.

Explore my [GitHub profile](https://github.com/Thasleena1993) to learn more about my projects and learning journey.
