--13.
--Obtain a list, in alphabetical order, of actors who've had at least 30 starring roles.
SELECT
  name
FROM actor
JOIN casting ON actor.id = casting.actorid
WHERE
  (
    SELECT
      COUNT(ord)
    FROM casting
    WHERE
      casting.actorid = actor.id
  ) > 29
GROUP BY
  name