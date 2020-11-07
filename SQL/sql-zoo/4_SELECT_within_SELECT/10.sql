--10.
--Some countries have populations more than three times that of any of their neighbours (in the same continent). Give the countries and continents.
SELECT
  name,
  continent
FROM world x
WHERE
  population / 3 > ALL (
    SELECT
      population
    FROM world y
    WHERE
      y.continent = x.continent
      AND y.name != x.name
  )