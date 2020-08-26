--8.
--List the films in which 'Harrison Ford' has appeared
SELECT
  title
FROM movie
JOIN casting ON movie.id = casting.movieid
WHERE
  casting.actorid = (
    SELECT
      id
    FROM actor
    WHERE
      name = 'Harrison Ford'
  );