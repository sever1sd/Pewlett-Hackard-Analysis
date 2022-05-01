--list of retiring employees and titles
select e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
into retirement_titles
from employees as e
inner join titles as t
on (e.emp_no = t.emp_no)
where (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by emp_no;


--creating table of active employees and their current title, retirement pop only
select distinct on (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
into unique_titles
from employees as e
inner join titles as t
on (e.emp_no = t.emp_no)
where (e.birth_date between '1952-01-01' and '1955-12-31') and (t.to_date = '9999-01-01')
order by emp_no, from_date desc;

--identifies count of retiring employees by title
select count(ut.emp_no),
	ut.title
into retiring_titles
from unique_titles as ut
group by ut.title
order by count desc;

-- finds employees eligible for mentorship program based on birth date
select distinct on(e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	d.from_date,
	d.to_date,
	t.title
into mentorship_eligibility
from employees as e
inner join department_employees as d
on (e.emp_no = d.emp_no)
inner join titles as t
on (e.emp_no = t.emp_no)
where (e.birth_date between '1965-01-01' and '1965-12-31')
order by e.emp_no;




