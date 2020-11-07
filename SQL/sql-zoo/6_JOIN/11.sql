--11.
--For every match involving 'POL', show the matchid, date and the number of goals scored.
SELECT
  matchid,
  mdate,
  COUNT(player)
FROM game
JOIN goal ON goal.matchid = game.id
WHERE
  (
    team1 = 'POL'
    OR team2 = 'POL'
  )
GROUP BY
  matchid,
  mdate;