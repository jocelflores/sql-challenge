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

CREATE TABLE salaries(
			emp_no INTEGER REFERENCES employees(emp_no),
			salary INTEGER)

-- CREATE TABLE titles(
-- 			title_id VARCHAR PRIMARY KEY,
-- 			title VARCHAR)

SELECT * FROM employees
SELECT * FROM titles
SELECT * FROM dept_emp

