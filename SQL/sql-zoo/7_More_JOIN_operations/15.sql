--15.
--List all the people who have worked with 'Art Garfunkel'.
SELECT
  name
FROM actor
WHERE
  actor.id IN (
    SELECT
      actorid
    FROM casting
    WHERE
      movieid IN (
        SELECT
          movieid
        FROM casting
        WHERE
          actorid = (
            SELECT
              actor.id
            FROM actor
            WHERE
              name = 'Art Garfunkel'
          )
      )
  )
  AND actor.name != 'Art Garfunkel';