
--There are two tables in one database:

--employees (id, first_name, salary, department_id)
--departments (id, name)

--Build the SQL queries that will return:
--1- Names of the people with highest salary in each of departments (columns: department, first_name, salary)
--2- Number of people working in each department (columns: department, number of employees)

--Solution 1
SELECT d.name AS department,
       e.first_name,
       e.salary
FROM employees e
INNER JOIN departments d ON e.department_id = d.id
WHERE (e.department_id, e.salary) IN (
    SELECT department_id, MAX(salary)
    FROM employees
    GROUP BY department_id
);

--Solution 2:
SELECT d.name AS department,
       COUNT(*) AS number_of_employees
FROM employees e
INNER JOIN departments d ON e.department_id = d.id
GROUP BY d.name;
-----------------------------------------------------------------------------------------------------------------------------------------------------------


--There is a table in the database:

--countries (name, region, area, population)

--Build the SQL queries that will return:
--1- List of the countries with highest population in each region (columns: region, country, population)
--2- List of regions with total area and number of countries in the region (columns: region, area, number of countries)

--Solution 1:
SELECT region,
       name AS country,
       population
FROM countries c
WHERE (region, population) IN (
    SELECT region, MAX(population)
    FROM countries
    GROUP BY region
);

--Solution 2:
SELECT region,
       SUM(area) AS total_area,
       COUNT(*) AS number_of_countries
FROM countries
GROUP BY region;
