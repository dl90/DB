--14.
--Find the capital and the name where the capital is an extension of name of the country.
SELECT
  capital,
  name
FROM world
Where
  capital LIKE CONCAT(name, '_%')