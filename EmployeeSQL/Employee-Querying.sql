-- List details of each employee
-- Employee #, Last Name, First Name, Gender, and Salary

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e JOIN salaries s on e.emp_no = s.emp_no;

-- List employees hired in 1986
-- Employee #, Last Name, and First Name

SELECT emp_no, last_name, first_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-01-31';

-- List managers of each department
-- Dept. #, Dept. Name, Employee #, Last Name, First Name, Start Date, and End Date

SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM departments d JOIN dept_manager m ON d.dept_no = m.dept_no
JOIN employees e ON e.emp_no = m.emp_no;

-- List department of each employee
-- Employee #, Last Name, First Name, and Dept. Name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d JOIN dept_emp m ON d.dept_no = m.dept_no
JOIN employees e ON e.emp_no = m.emp_no;

-- List all employees whose first name is "Hercules" and last name starts with "B"

SELECT emp_no, last_name, first_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the sales department
-- Employee #, Last Name, First Name, and Dept. Name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d JOIN dept_emp m ON d.dept_no = m.dept_no
JOIN employees e ON e.emp_no = m.emp_no
WHERE d.dept_name = 'Sales';

-- List all employees in the sales and development departments
-- Employee #, Last Name, First Name, and Dept. Name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d JOIN dept_emp m ON d.dept_no = m.dept_no
JOIN employees e ON e.emp_no = m.emp_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- List, in descending order, a count of all employee last names

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;