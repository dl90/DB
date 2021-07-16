--4.
--Which country has a population that is more than Canada but less than Poland? Show the name and the population.
SELECT name, population FROM world
  WHERE population BETWEEN
    (SELECT population FROM world WHERE name = 'Canada')
    AND (SELECT population FROM world WHERE name = 'Poland')