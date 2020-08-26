--8.
--Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.
SELECT
  *
FROM nobel
WHERE
  subject LIKE 'Physics'
  AND yr = 1980
  OR subject LIKE 'Chemistry'
  AND yr = 1984;