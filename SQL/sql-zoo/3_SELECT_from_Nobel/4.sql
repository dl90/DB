--4.
--Give the name of the 'Peace' winners since the year 2000, including 2000.
SELECT
  winner
FROM nobel
WHERE
  yr >= 2000
  AND subject LIKE 'Peace';