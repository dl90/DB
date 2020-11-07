--12.
--List the film title and the leading actor for all of the films 'Julie Andrews' played in.
SELECT
  movie.title,
  actor.name
FROM movie
JOIN casting ON movie.id = casting.movieid
  AND ord = 1
JOIN actor ON actorid = actor.id
WHERE
  movie.id IN (
    SELECT
      movieid
    FROM casting
    WHERE
      actorid IN (
        SELECT
          id
        FROM actor
        WHERE
          name = 'Julie Andrews'
      )
  )