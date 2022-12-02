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