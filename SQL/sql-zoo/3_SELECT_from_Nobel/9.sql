--9.
--Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine
SELECT yr, subject, winner FROM nobel
  WHERE yr = 1980 AND NOT subject IN ('Chemistry', 'Medicine');