--Write a SQL query to retrieve the emp_id, last_name, and salary of employees whose salary is 
--between 2,000 and 5,000 and do not have a manager ID of 101 or 200.
select emp_id, last_name,salary from  employees
where salary between 2000 and 5000
AND manager_id NOT IN (101, 200);

/*. Use the SELECT statement to specify the columns: employee.name and department.name.
2. Use the FROM clause to include the tables employees and departments.
3. Use an INNER JOIN to connect the employees and departments tables based on the 
department IDs.
4. Use table aliases (e.g., e for employees, d for departments) to shorten the table names in the 
query.
5. Order the results by department name in ascending order.*/
SELECT employees.name AS e_name, departments.name AS d_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
ORDER BY departments.name ASC;

/*Write a SQL query to find the number of employees and the average salary for each department. 
Ensure that the results are grouped by department ID.*/
SELECT department_id, COUNT(employee_id) AS countofemp, AVG(salary) AS avgsalary
FROM employees
GROUP BY department_id;
