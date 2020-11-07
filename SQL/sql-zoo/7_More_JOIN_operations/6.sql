--6.
--Obtain the cast list for 'Casablanca'.
SELECT
  name
FROM casting
JOIN actor ON casting.actorid = actor.id
WHERE
  movieid =(
    SELECT
      id
    FROM movie
    WHERE
      title = 'Casablanca'
  );