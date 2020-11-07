--9.
--List the films where 'Harrison Ford' has appeared - but not in the starring role.
--[Note: the ord field of casting gives the position of the actor. If ord=1 then this actor is in the starring role]
SELECT
  title
FROM casting
JOIN movie ON casting.movieid = movie.id
WHERE
  ord != 1
  AND actorid = (
    SELECT
      id
    FROM actor
    WHERE
      name = 'Harrison Ford'
  )