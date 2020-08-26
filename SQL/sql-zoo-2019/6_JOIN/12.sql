--12.
--For every match where 'GER' scored, show matchid, match date and the number of goals scored by 'GER'
SELECT
  matchid,
  mdate,
  COUNT(player)
FROM game
JOIN goal ON game.id = goal.matchid
WHERE
  goal.teamid = 'GER'
GROUP BY
  matchid,
  mdate;