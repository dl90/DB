--6.
--Show all details of the presidential winners:
SELECT
  *
FROM nobel
WHERE
  winner IN (
    'Theodore Roosevelt',
    'Woodrow Wilson',
    'Jimmy Carter',
    'Barack Obama'
  );