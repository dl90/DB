--5.
--Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.
SELECT
  *
FROM nobel
WHERE
  subject LIKE 'Literature'
  AND (
    yr >= 1980
    AND yr <= 1989
  );