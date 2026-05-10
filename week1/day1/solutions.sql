-- SQL Solutions
-- =====================================================
-- WEEK 1 - DAY 1 SQL SOLUTIONS
-- =====================================================

-- Solution 1
SELECT * FROM employee;

-- Solution 2
SELECT name, salary
FROM employee;

-- Solution 3
SELECT *
FROM employee
WHERE salary > 50000;

-- Solution 4
SELECT *
FROM employee
WHERE department_id = 2;

-- Solution 5
SELECT *
FROM employee
WHERE age > 30;

-- Solution 6
SELECT *
FROM employee
ORDER BY salary DESC;

-- Solution 7
SELECT COUNT(*) AS total_employees
FROM employee;

-- Solution 8
SELECT AVG(salary) AS average_salary
FROM employee;

-- Solution 9
SELECT MAX(salary) AS maximum_salary
FROM employee;

-- Solution 10
SELECT department_id, COUNT(*) AS employee_count
FROM employee
GROUP BY department_id;

--Date queries
select name from Employee where Extract(YEAR from hire_date)=2020;
select name from Employee where Extract(MONTH from hire_date)=1;
select name from Employee where Extract(YEAR from hire_date)<2019;
select name from Employee where hire_date>='2021-03-01';
select name from Employee where hire_date>=CURDATE()-INTERVAL 2 year;

--Aggregate queries
select sum(salary) as total_salary from Employee;
select avg(salary) as average_salary from Employee;
select min(salary) as minimum_salary from Employee;
select department_id,count(*) as NUMBEROFEMPLOYEES from Employee group by department_id;
select department_id,avg(salary) as avg_salary from Employee group by department_id;
