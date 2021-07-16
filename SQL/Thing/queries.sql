-- SELECT count(ratings.number_of_stars)
-- FROM ratings
-- WHERE places_id = 1;

-- 1. get the average rating for the place with id 1
SELECT AVG(ratings.number_of_stars) AS average_rating
FROM ratings
WHERE places_id = 1;


-- 2. get the total number of ratings left by the user with the email address sam@sam.sam
SELECT COUNT(ratings.id) AS total_ratings
FROM ratings JOIN users
ON ratings.users_id = users.id
WHERE users.email = "sam@sam.sam";

-- 3. get the average rating for the place named starbucks
SELECT AVG(ratings.number_of_stars) AS average_rating
FROM ratings JOIN places
ON ratings.places_id = places.id
WHERE places.name LIKE "%starbucks%";

-- bonus get the email address and average rating for every single user, order by highest average to lowest average
SELECT users.email, AVG(ratings.number_of_stars) AS average_rating
FROM ratings JOIN users
ON ratings.users_id = users.id
GROUP BY users.id

SELECT pop FROM City
GROUP BY Country
HAVING COUNT(pop) > 1000000;
