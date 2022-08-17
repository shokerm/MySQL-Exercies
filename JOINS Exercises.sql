--JOINS Exercises

--EX1
select l.location_id,l.street_address,l.city,l.state_province,c.country_name from locations l
inner join countries c on l.country_id = c.country_id

--Ex2
select e.first_name,e.last_name, d.department_id, d.department_name from employees e
join departments d on e.department_id=d.department_id

--Ex3
select e.first_name,e.last_name,e.job_id, d.department_id, d.department_name, l.city from employees e
join departments d on e.department_id=d.department_id
join locations l on d.location_id= l.location_id
where l.city in('London')

--Ex4
select e.employee_id, e.first_name,e.last_name,m.department_id, m.first_name,m.last_name from employees e
join employees m on (m.employee_id = e.manager_id)

--Ex5
select * from employees e
join employees j on j.last_name ='Jones'
where j.hire_date < e.hire_date

--Ex6
select d.department_name, count(*) [Number Of Emploees] from departments d
join employees e on d.department_id=e.department_id
group by d.department_name
order by d.department_name ASC

--Ex7
select jh.employee_id, j.job_title, DATEDIFF(day,jh.start_date,jh.end_date)[Days]from job_history jh
join jobs j on j.job_id = jh.job_id
where jh.department_id = 90

--Ex8
select d.department_id,d.department_name,d.manager_id,e.first_name from departments d
join employees e on d.manager_id=e.employee_id
order by d.department_id ASC

--Ex9
select d.department_name,e.first_name,l.city from departments d
join employees e on d.manager_id= e.employee_id
join locations l on d.location_id=l.location_id

--Ex10
select j.job_title, AVG(e.salary) from employees e
join jobs j on e.job_id= j.job_id
group by j.job_title

--Ex11
select j.job_title, e.first_name, e.salary-j.min_salary from employees e
join jobs j on e.job_id= j.job_id
order by job_title ASC

--Ex12
select * from employees e
join job_history jh on e.employee_id=jh.employee_id
where e.salary >  10000

--Ex13
select d.department_name,e.first_name,e.last_name,e.hire_date,e.salary from departments d
join employees e on d.manager_id = e.employee_id
WHERE (DATEDIFF(day,hire_date,GETDATE())) /365 > 15
