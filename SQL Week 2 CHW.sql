-- #1 Number of Employees born after 1965-01-01, displayed per title.
select t.title as "Title", count(title) as "Employee Count" from employees e join titles t on e.emp_no = t.emp_no and e.birth_date > '1965-01-01' group by t.title;
-- #2 Average salary per title.
select t.title as "Title", truncate(avg(s.salary),2) as "Average Salary" from titles t join salaries s on t.emp_no = s.emp_no group by t.title;
-- #3 Sum of Salaries for Marketing between years 1990 and 1992.
select sum(s.salary) as "Total Salaries between 1990 and 1992" from salaries s  join dept_emp d on d.emp_no = s.emp_no where d.from_date between '1990-01-01' and '1992-12-31' and d.dept_no  = 'd001' group by d.dept_no;