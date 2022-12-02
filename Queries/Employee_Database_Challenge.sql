--create retirement_titles table

SELECT employees.emp_no, 
	employees.first_name, 
	employees.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO retirement_titles	
FROM employees INNER JOIN titles ON employees.emp_no = titles.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no;

--create retiring titles

SELECT COUNT(title), title 
--INTO retiring_titles
FROM unique_titles
GROUP BY unique_titles.title
ORDER BY unique_titles.count DESC;

--create unique_titles table

SELECT DISTINCT ON (emp_no) r.emp_no,r.first_name,r.last_name,r.title

INTO unique_titles
FROM retirement_titles as r
WHERE to_date='9999-01-01'
ORDER BY emp_no ASC, to_date DESC;

SELECT COUNT(title), title 
INTO retiring_titles
FROM unique_titles
GROUP BY unique_titles.title
ORDER BY unique_titles.count DESC;

--create mentorship_eligibility table

SELECT DISTINCT ON (emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
    d.from_date,d.to_date,
    t.title
INTO mentorship_eligibilty
FROM employees as e 
    JOIN dept_emp as d 
        ON e.emp_no=d.emp_no
    JOIN titles as t 
        ON e.emp_no=t.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (d.to_date='9999-01-01')
ORDER BY emp_no;