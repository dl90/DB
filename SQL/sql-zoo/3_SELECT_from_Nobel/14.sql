--14.
--The expression subject IN ('Chemistry','Physics') can be used as a value - it will be 0 or 1.
--Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.
SELECT winner, subject FROM nobel
  WHERE yr = 1984
  ORDER BY
    subject IN ('Physics', 'Chemistry'),
    subject,
    winner

SELECT winner, subject FROM nobel
  WHERE yr = 1984
  ORDER BY
    CASE WHEN subject IN ('Chemistry','Physics') THEN 1 ELSE 0 END,
    subject, winner;