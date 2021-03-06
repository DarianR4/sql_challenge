--List the following details of each employee: employee number, last name, first name, sex, and salary.
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees, salaries
where employees.emp_no = salaries.emp_no


--List first name, last name, and hire date for employees who were hired in 1986.
Select first_name, last_name, hire_date
From employees
where hire_date >= '1/1/1986' and hire_date <= '12/31/1986'


--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from employees
join dept_manager
on employees.emp_no = dept_manager.emp_no
join departments
on dept_manager.dept_no = departments.dept_no;
--List the department of each employee with the following information: employee number, last name, first name, and department name.

select employees.emp_no,employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_manager
on employees.emp_no = dept_manager.emp_no
join departments
on dept_manager.dept_no = departments.dept_no;


--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where employees.first_name = 'Hercules' and
employees.last_name like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_manager
on employees.emp_no = dept_manager.emp_no
join departments
on dept_manager.dept_no = departments.dept_no
where departments.dept_name = 'Sales'
;

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_manager
on employees.emp_no = dept_manager.emp_no
join departments
on dept_manager.dept_no = departments.dept_no
where departments.dept_name = 'Sales' or
departments.dept_name = 'Development'
;

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "ln_frequency count"
FROM employees
GROUP BY last_name
ORDER BY "ln_frequency count" DESC;

