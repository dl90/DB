--9.
--You should COUNT(*) in the SELECT line and GROUP BY teamname
--Show teamname and the total number of goals scored.
SELECT
  teamname,
  COUNT(player)
FROM eteam
JOIN goal ON eteam.id = goal.teamid
GROUP BY
  teamname;