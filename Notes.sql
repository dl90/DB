CREATE DATABASE test_db;
ALTER DATABASE test_db CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

CREATE TABLE academy_awards (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  year YEAR,
  title VARCHAR(255),
  winner VARCHAR(255)
);

SELECT *
FROM Country
WHERE IndepYear IS NULL;

SELECT *
FROM CountryLanguage
ORDER BY Language DESC;

-- Subqueries
SELECT CountryCode, Language
FROM CountryLanguage
WHERE CountryCode IN
  (SELECT Code
  FROM Country
  WHERE Contenent = 'Europe');

-- Correlated Subqueries (C = Alias)
SELECT Name, CountryCode
FROM City C
WHERE 2 <=  
  (SELECT COUNT(*)
  FROM CountryLanguage
  WHERE CountryCode = C.CountryCode


DROP TABLE IF EXISTS tableName

