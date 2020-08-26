--6.
--To JOIN game with eteam you could use either game JOIN eteam ON (team1=eteam.id) or game JOIN eteam ON (team2=eteam.id)
--List the the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach.
SELECT
  mdate,
  teamname
FROM game
JOIN eteam ON (game.team1 = eteam.id)
WHERE
  coach = 'Fernando Santos';