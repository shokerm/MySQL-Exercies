--MySQL Aggregate Functions

--Ex1
select count(distinct job_id) as[Number of Jobs Available] from employees

--Ex2
select SUM(salary) as [Total Salaries Payable To Employees] from employees

--Ex3
select Min(salary) as [Minimum Salary] from employees

--Ex4
select Max(salary) as [Maximum Salary For Programmer] from employees
where job_id in('IT_PROG')

--Ex5
select  count(*) [Number Of Employees],AVG(salary) [Salary Avrage] from employees
where department_id = 90

--Ex6
select MAX(salary) [Highest Salary], 
       MIN(salary) [Lowest Salary],
	   SUM(salary) [Sum Of All Salaries],
	   AVG(salary) [Avrage Salary]
from employees

--Ex7
select job_id, count(*) from employees
group by job_id

--Ex8
select MAX(salary)- MIN(salary) [Difference Between The Highest And Lowest  Salary]
from employees

--Ex9
select manager_id, MIN(salary) from employees
where manager_id is not null
group by manager_id
order by MIN(salary) DESC

--Ex10
select department_id, SUM(salary) from employees
group by department_id

--Ex11
select job_id, AVG(salary) from employees
where not (job_id = 'IT_PROG')
group by job_id

--EX12
select job_id,
       SUM(salary)[Total Salary],
       Max(salary)[Maximum Salary],
	   MIN(salary)[Minimum Salary],
	   AVG(salary)[Avrage Salary]
from employees
where department_id = 90
group by job_id

--Ex13
select job_id, MAX(salary) from employees
group by job_id
having MAX(salary) >= 4000

--Ex14
select department_id,
       AVG(salary)[Avrage Of Salaries],
	   count(*)[Sum Of Emploees] 
from employees
group by department_id
having count(*) > 10