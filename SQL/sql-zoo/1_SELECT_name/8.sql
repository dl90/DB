--8.
--India and Angola have an n as the second character. You can use the underscore as a single character wildcard.
--Find the countries that have t as the second character.
SELECT
  name
FROM world
WHERE
  name LIKE '_t%'
ORDER BY
  name