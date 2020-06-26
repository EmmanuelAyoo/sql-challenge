-- Data Analysis 


--  Question 1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
LEFT JOIN salaries as s
ON e.emp_no = s.emp_no
ORDER BY e.emp_no;


--- Question 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


-- Question 3
SELECT dm.dept_no, dm.emp_no, d.dept_name, e.first_name, e.last_name
FROM dept_manager as dm
	INNER JOIN departments AS d
	ON dm.dept_no = d.dept_no
	INNER JOIN employees AS e
	ON dm.emp_no = e.emp_no;
	
	
-- Question 4
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
	INNER JOIN employees AS e
	ON de.emp_no = e.emp_no
	INNER JOIN departments AS d 
	ON de.dept_no = d.dept_no;
	
--Question 5
SELECT first_name , last_name
FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';


--Question 6
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
	INNER JOIN employees AS e
	ON de.emp_no = e.emp_no
	INNER JOIN departments AS d 
	ON de.dept_no = d.dept_no
	WHERE d.dept_name = 'Sales';


	
-- question 7
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
on de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY e.emp_no;


--Question 8
SELECT last_name, COUNT(last_name) AS last_count
FROM employees
GROUP BY last_name
ORDER BY last_count DESC;
