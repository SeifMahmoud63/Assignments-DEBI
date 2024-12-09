/*Use the CREATE VIEW statement to define a new view.
2. Select the columns fname, lname, and dname (department name) from the appropriate 
tables.
3. Use JOIN to connect the employees and departments tables using the department ID.*/
create view NewView as 
select employees.first_name,employees.last_name,departments.department_name
from employees
inner join departments on employees.department_id=departments.department_id;


/*1. Use the CREATE OR REPLACE VIEW statement to update the view.
2. Filter the results using the WHERE clause to include only employees with department 
number 5.
3. Ensure that the columns selected are fname, lname, pname, and hours*/
CREATE   VIEW Nview AS
SELECT employees.first_name AS fname, 
       employees.last_name AS lname, 
       departments.department_name AS pname
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id
WHERE departments.department_id = 5;

/*Use the CREATE VIEW statement to define the view.
2. Include the WITH CHECK OPTION to enforce that all modifications through the view 
adhere to the condition that status must be greater than 15.
3. Use a SELECT statement to pull all columns from the suppliers table.*/
CREATE VIEW SuppliersView AS
SELECT *
FROM suppliers
WHERE status > 15
WITH CHECK OPTION;