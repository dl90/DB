--8.
--List each continent and the name of the country that comes first alphabetically.
SELECT continent, name FROM world x
  WHERE name = (SELECT name FROM world y
    WHERE y.continent = x.continent
    ORDER BY name
    LIMIT 1)