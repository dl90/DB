--10.
--List the films together with the leading star for all 1962 films.
SELECT
  title,
  (
    SELECT
      name
    FROM actor
    WHERE
      id = actorid
  )
FROM casting
JOIN movie ON movie.id = casting.movieid
WHERE
  casting.ord = 1
  AND movie.yr = 1962