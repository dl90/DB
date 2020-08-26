--4.
--Use the same JOIN as in the previous question.
--Show the team1, team2 and player for every goal scored by a player called Mario player LIKE 'Mario%'
SELECT
  team1,
  team2,
  player
FROM game
JOIN goal ON (game.id = goal.matchid)
WHERE
  player LIKE 'Mario%'