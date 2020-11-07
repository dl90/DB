--14.
--List the films released in the year 1978 ordered by the number of actors in the cast, then by title.
SELECT
  movie.title,
  COUNT(casting.ord)
FROM movie
JOIN casting ON movie.id = casting.movieid
WHERE
  yr = 1978
GROUP BY
  movie.title
ORDER BY
  COUNT(ord) DESC,
  movie.title