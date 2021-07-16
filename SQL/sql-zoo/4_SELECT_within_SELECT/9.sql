--9.
--Find the continents where all countries have a population <= 25000000.  Then find the names of the countries associated with these continents. Show name, continent and population.
--@TOCONTINUE
SELECT
  name,
  continent,
  population
FROM world x
WHERE
  25000000 >= ALL (
    SELECT
      population
    FROM world y
    WHERE
      y.continent = x.continent
  );