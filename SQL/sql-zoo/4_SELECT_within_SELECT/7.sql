--7.
--Find the largest country (by area) in each continent, show the continent, the name and the area:
SELECT continent, name, area FROM world x
  WHERE area >= ALL (SELECT area FROM world y WHERE y.continent=x.continent AND area > 0)

SELECT continent, name, area FROM world, (SELECT continent as c, MAX(area) as max_area FROM world GROUP BY continent) as t
  WHERE continent = t.c AND area = t.max_area