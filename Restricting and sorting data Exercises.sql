--Restricting and sorting data Exercises
--Ex1
select e.first_name,e.last_name from employees e
where e.salary not between 10000 and 15000

--Ex2
select e. first_name, e.last_name , e.department_id from employees e
where e.department_id in(30,100)
order by e.department_id ASC

--Ex3
select e.first_name,e.last_name, e.salary, e.department_id from employees e
where e.salary not between 10000 and 15000
and e.department_id in(30,100)
order by e.salary ASC

--Ex4
select e.first_name,e.last_name, e.hire_date from employees e
where e.hire_date like '%2003%'

--Ex5
select e.first_name from employees e
where e.first_name like '%b%' and e.first_name like '%c%'

--Ex6
select e.last_name,e.job_id,e.salary from employees e
where e.job_id in ('IT_PROG', 'SH_CLERK')
and e.salary not in(4500,10000,15000)

--Ex7
select e.last_name from employees e
where len(e.last_name) = 6
order by e.last_name ASC

--Ex8
select e.last_name from employees e
where e.last_name like '__e%'

--Ex9
select distinct e.job_id from employees e

--Ex10
select e.first_name,e.last_name,e.salary, e.salary*0.15 as PF from employees e

--Ex11
select * from employees e
where e.last_name in('BLAKE', 'SCOTT', 'KING' , 'FORD')


