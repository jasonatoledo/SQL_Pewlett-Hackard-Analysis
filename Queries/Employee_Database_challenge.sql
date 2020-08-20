-- create retirement titles table
SELECT tt.emp_no,
e.first_name,
e.last_name,
tt.title,
tt.from_date,
tt.to_date
INTO retirement_titles
FROM employees e
JOIN titles tt on e.emp_no = tt.emp_no
WHERE e.birth_date BETWEEN ('1952-01-01') AND ('1955-12-31')
ORDER BY tt.emp_no;

-- deliverable 1.2 unique titles
SELECT DISTINCT ON (tt.emp_no) tt.emp_no,
e.first_name,
e.last_name,
tt.title
INTO unique_titles
FROM employees e
JOIN titles tt on e.emp_no = tt.emp_no
WHERE e.birth_date BETWEEN ('1952-01-01') AND ('1955-12-31')
ORDER BY tt.emp_no, tt.to_date DESC;


--deliverable 1.3 retiring titles
SELECT COUNT(title),
title
-- INTO retiring_titles
FROM unique_titles
GROUP BY 2
ORDER BY 1 DESC


--deliverable 2
SELECT DISTINCT ON(e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    JOIN titles t ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
    AND de.to_date = '9999-01-01')
ORDER BY 1