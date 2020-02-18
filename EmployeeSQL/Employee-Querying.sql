SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e JOIN salaries s on e.emp_no = s.emp_no;

SELECT emp_no, last_name, first_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-01-31';

SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM departments d JOIN dept_manager m ON d.dept_no = m.dept_no
JOIN employees e ON e.emp_no = m.emp_no;

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d JOIN dept_emp m ON d.dept_no = m.dept_no
JOIN employees e ON e.emp_no = m.emp_no;

SELECT emp_no, last_name, first_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d JOIN dept_emp m ON d.dept_no = m.dept_no
JOIN employees e ON e.emp_no = m.emp_no
WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d JOIN dept_emp m ON d.dept_no = m.dept_no
JOIN employees e ON e.emp_no = m.emp_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;