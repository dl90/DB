--10.
--Show the stadium and the number of goals scored in each stadium.
SELECT
  stadium,
  COUNT(player)
FROM game
JOIN goal ON game.id = goal.matchid
GROUP BY
  stadium;