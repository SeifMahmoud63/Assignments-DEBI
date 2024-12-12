/*Use the SELECT statement to choose all relevant columns from the employees table.
2. Utilize a date function such as CURRENT_DATE or GETDATE() depending on your SQL 
dialect.
3. Apply date arithmetic to filter rows where the hire date is within the last 30 days.
4. Use the WHERE clause to compare hire dates.*/
SELECT * 
FROM employees
WHERE hire_date >= DATEADD(DAY, -30, GETDATE());






--SECOND Q I DON'T KNOW--





/*. Define the stored procedure using the CREATE PROCEDURE statement.
2. Use a SELECT statement to fetch the department ID, department name, and count of 
employees.
3. Use a JOIN to connect the departments and employees tables on the department ID.
4. Use the GROUP BY clause to group results by department.
5. Apply the HAVING clause to filter departments with more than 5 employees.*/
CREATE PROCEDURE sp_get_departments_with_more_than_five_employees
AS
BEGIN
    SELECT d.department_id, d.department_name, COUNT(e.emp_id) AS employee_count
    FROM departments d
    JOIN employees e ON d.department_id = e.department_id
    GROUP BY d.department_id, d.department_name
    HAVING COUNT(e.emp_id) > 5;
END;