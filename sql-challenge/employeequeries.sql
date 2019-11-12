--1.Done-List the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no,
e.first_name,
e.last_name,
e.gender,
s.salary
from employees as e
inner join salaries as s on
e.emp_no = s.emp_no
;

--2.Done-List employees who were hired in 1986.
select *
from employees 
where DATE_PART('year',  hire_date) = 1986;

--3.Done-List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select dm.dept_no,
d.dept_name,
e.emp_no,
e.last_name,
e.first_name,
dm.from_date,
dm.to_date
from departments as d,
employees as e,
dept_manager as dm
where dm.emp_no = e.emp_no and
dm.dept_no = d.dept_no;


--4.done-List the department of each employee with the following information: employee number, last name, first name, and department name.
select 
e.emp_no,
e.last_name,
e.first_name,
d.dept_name,
de.dept_no
from employees as e,
departments as d,
dept_emp as de
where de.emp_no = e.emp_no and
de.dept_no = d.dept_no;

select e.emp_no,
e.last_name,
e.first_name,
d.dept_name,
de.dept_no
from employees as e
inner join dept_emp as de on
e.emp_no = de.emp_no
inner join departments as d on
de.dept_no = d.dept_no;



--5.Done-List all employees whose first name is "Hercules" and last names begin with "B."
select *
from employees
where first_name = 'Hercules' and last_name like 'B%';

--6.done-List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no,
e.last_name,
e.first_name,
d.dept_name,
de.dept_no
from employees as e
inner join dept_emp as de on
e.emp_no = de.emp_no
inner join departments as d on
de.dept_no = d.dept_no
where dept_name = 'Sales';

--7.Done-List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no,
e.last_name,
e.first_name,
d.dept_name,
de.dept_no
from employees as e
inner join dept_emp as de on
e.emp_no = de.emp_no
inner join departments as d on
de.dept_no = d.dept_no
where dept_name = 'Sales' or dept_name = 'Development';

--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(last_name) as "Count"
from employees
group by last_name
order by last_name desc;