--7.
--List the player for every goal scored in a game where the stadium was 'National Stadium, Warsaw'
SELECT
  player
FROM game
JOIN goal ON (game.id = goal.matchid)
WHERE
  game.stadium = 'National Stadium, Warsaw';