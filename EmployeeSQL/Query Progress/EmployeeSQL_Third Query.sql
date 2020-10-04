-- CREATE TABLE departments(
-- 			dept_no VARCHAR PRIMARY KEY,
-- 			dept_name VARCHAR)

-- CREATE TABLE dept_emp(
-- 			emp_no INTEGER REFERENCES employees(emp_no),
-- 			dept_no VARCHAR REFERENCES departments(dept_no))

-- CREATE TABLE dept_manager(
-- 			dept_no VARCHAR REFERENCES departments(dept_no),
-- 			emp_no INTEGER REFERENCES employees(emp_no))

-- CREATE TABLE employees(
-- 			emp_no INTEGER PRIMARY KEY,
-- 			emp_title VARCHAR REFERENCES titles(title_id),
-- 			birth_date VARCHAR,
-- 			first_name VARCHAR,
-- 			last_name VARCHAR,
-- 			sex VARCHAR,
-- 			hire_date VARCHAR)

-- ALTER TABLE employees
-- ADD PRIMARY KEY (emp_no)

-- CREATE TABLE salaries(
-- 			emp_no INTEGER REFERENCES employees(emp_no),
-- 			salary INTEGER)

-- CREATE TABLE titles(
-- 			title_id VARCHAR PRIMARY KEY,
-- 			title VARCHAR)

-- SELECT * FROM employees
-- SELECT * FROM titles
-- SELECT * FROM dept_emp

-- SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
-- FROM employees
-- INNER JOIN salaries ON employees.emp_no=salaries.emp_no

-- SELECT employees.last_name, employees.first_name, employees.hire_date
-- FROM employees WHERE hire_date like '%1986%'

SELECT dept_manager.emp_no, dept_manager.dept_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
JOIN dept_manager ON employees.emp_no=dept_manager.emp_no
JOIN departments ON departments.dept_no=departments.dept_no

