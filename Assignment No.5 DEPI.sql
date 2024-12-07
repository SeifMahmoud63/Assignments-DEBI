--○ Write a SQL query to retrieve all columns from a table named employees.
--○ Write a SQL query to retrieve the emp_id, emp_name, and dept_id from the 
--employees table, where the location is 'Cairo'
select*from employees;
select emp_id,emp_name,dept_id from employees
where location ='cairo';

--Write a SQL query that displays distinct dept_id values from the employees table.
SELECT DISTINCT dept_id 
FROM employees;

--Write a SQL query to create a table students with the following columns: ID
--(Primary Key), First_Name (not null), Last_Name (default 'Unknown'), 
--Address (default 'N/A'), City (default 'N/A'), and Birth_Date.
--○ Write a SQL query to drop the students table.
create table students (
ID int not null,
first_name nvarchar(10) not null,
Last_Name VARCHAR(10) DEFAULT 'Unknown' not null,
address nvarchar(20) default 'N/A' not null,
City nvarchar(10) default 'N/A' not null,
Birth_Date nvarchar(10) not null,
primary key(ID)
);
drop table students;


--Write a SQL query to insert the following values into the students table: 
--('Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01').
--○ Write a SQL query to update the Address of the student with Last_Name = 
--'Ahmed' to 'Garden City'..

insert into students (First_Name, Last_Name, address, City, Birth_Date)
values ('Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01');
update students 
set address = 'Garden City'
where Last_Name = 'Ahmed';
 

--Write a SQL query to delete the rows from the students table where City is 
--'Cairo', and then rollback the transaction.
delete from students 
where city = 'Cairo';
ROLLBACK;
