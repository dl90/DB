--15.
--For Monaco-Ville the name is Monaco and the extension is -Ville.
--Show the name and the extension where the capital is an extension of name of the country.
SELECT
  name,
  replace(capital, name, '')
FROM world
Where
  capital LIKE CONCAT('%', name, '%')
  AND NOT capital = name