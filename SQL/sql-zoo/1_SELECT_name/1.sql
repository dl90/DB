--1.
--You can use WHERE name LIKE 'B%' to find the countries that start with B.
--Find the country that start with Y
SELECT
  name
FROM world
WHERE
  name LIKE 'Y%'