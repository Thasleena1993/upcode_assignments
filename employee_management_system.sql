--Creation of tables

CREATE TABLE departments(dept_id varchar(50) PRIMARY KEY,dept_name varchar(50))
CREATE TABLE employees(emp_id varchar(50) PRIMARY KEY,dept_id varchar(50),emp_name varchar(50),position varchar(50),FOREIGN KEY(dept_id)REFERENCES departments(dept_id))
CREATE TABLE projects(proj_id varchar(50) PRIMARY KEY,proj_name varchar(50))
CREATE TABLE proj_details(proj_details_id INT PRIMARY KEY,proj_id varchar(50),emp_id varchar(50),FOREIGN KEY(proj_id)REFERENCES projects(proj_id),FOREIGN KEY(emp_id)REFERENCES employees(emp_id))

--Inserting data's

INSERT INTO departments VALUES
('D01','HR'),
('D02','Finance & Accounts'),
('D03','IT'),
('D04','Marketing'),
('D05','Operations');

INSERT INTO employees VALUES
('emp01','D01','Haris','HR Manager'),
('emp02','D02','Ravi Kumar','Finance Manager'),
('emp03','D02','Anitha','Accountant'),
('emp04','D03','Thasleena','Software Developer'),
('emp05','D03','Neethu','IT Support'),
('emp06','D04','Sitha','Marketing Manager'),
('emp07','D04','Vishnu','Marketing Assistant'),
('emp08','D04','Veena','Marketing Executive'),
('emp09','D05','Karthik','Operations Manager');


INSERT INTO projects VALUES
('p01','Website Development'),
('p02','Recruitment Drive'),
('p03','Marketing Campaign'),
('p04','Payroll Automation');
INSERT INTO projects VALUES
('p05','Office Maintenance');

INSERT INTO proj_details VALUES
(1,'p01','emp04'),
(2,'p01','emp05'),
(3,'p02','emp01'),
(4,'p03','emp07'),
(5,'p03','emp06'),
(6,'p04','emp03'),
(7,'p04','emp02');

--Display tables

SELECT * FROM departments
SELECT * FROM employees
SELECT * FROM projects
SELECT * FROM proj_details

--To show each employee along with their department and projects they are assigned to.

SELECT e.emp_name,d.dept_name,p.proj_name 
FROM employees e 
LEFT JOIN departments d ON d.dept_id = e.dept_id
LEFT JOIN proj_details pr ON pr.emp_id = e.emp_id 
LEFT JOIN projects p ON p.proj_id = pr.proj_id;

--To find the department with the highest number of employees.

SELECT d.dept_name,count(*)AS highest_employee_dept FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_name order by highest_employee_dept DESC LIMIT 1; 

-- To list the projects that have not been assigned to any employees.

SELECT p.proj_name,pr.emp_id FROM projects p
LEFT JOIN proj_details pr ON p.proj_id = pr.proj_id
WHERE pr.emp_id IS NULL;





