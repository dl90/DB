--2.
--From the previous query you can see that Lars Bender's scored a goal in game 1012. Now we want to know what teams were playing in that match.
--Show id, stadium, team1, team2 for just game 1012
SELECT
  id,
  stadium,
  team1,
  team2
FROM game
WHERE
  id = 1012