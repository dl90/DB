--9.
--Lesotho and Moldova both have two o characters separated by two other characters.
--Find the countries that have two o characters separated by two others.
SELECT
  name
FROM world
WHERE
  name LIKE '%o__o%'