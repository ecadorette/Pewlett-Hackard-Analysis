--did not save the original table scripts, kept re-using what I already had

CREATE TABLE Dept_emp (
     emp_no INT NOT NULL,
     dept_no VARCHAR(4) NOT NULL,
	 from_date date NOT NULL,
     to_date date NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
     PRIMARY KEY (emp_no,dept_no)
);

SELECT * FROM departments;

--did not save the original table scripts, kept re-using what I already had

SELECT * FROM departments;

DROP TABLE employees CASCADE;

CREATE TABLE employees(
	emp_no INT NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	gender VARCHAR(1) NOT NULL,
	hire_date date NOT NULL,
	PRIMARY KEY (emp_no)
);

DROP TABLE titles;

CREATE TABLE titles(
	emp_no INT NOT NULL,
	title VARCHAR(40),
	from_date date,
	to_date date,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);