--3.
--You can combine the two steps into a single query with a JOIN.
--Modify it to show the player, teamid, stadium and mdate for every German goal.
SELECT
  player,
  teamid,
  stadium,
  mdate
FROM game
JOIN goal ON (id = matchid)
WHERE
  teamid = 'GER'