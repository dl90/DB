--5.
--Germany (population 80 million) has the largest population of the countries in Europe. Austria (population 8.5 million) has 11% of the population of Germany.
--Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.
SELECT name,
  CONCAT (ROUND (population / (SELECT population FROM world WHERE name = 'Germany') * 100),'%')
FROM world
  WHERE continent = 'Europe';

DECLARE @ger_pop INT
SET @ger_pop = (SELECT population FROM world WHERE name = 'Germany');
SELECT name, CONCAT(CAST(ROUND(population/@ger_pop * 100, 0) AS INT), '%') AS percentage FROM world
  WHERE continent = 'Europe';