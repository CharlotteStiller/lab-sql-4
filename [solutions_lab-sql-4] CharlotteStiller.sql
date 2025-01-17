-- 1.  Get film ratings.
USE sakila;
SELECT distinct(rating) FROM film; 

-- 2.  Get release years.
SELECT distinct(release_year) FROM film;

-- 3.  Get all films with ARMAGEDDON in the title.
SELECT * FROM film
WHERE title LIKE "%ARMAGEDDON%";


-- 4.  Get all films with APOLLO in the title
SELECT * FROM film
WHERE title REGEXP "APOLLO";


-- 5.  Get all films which title ends with APOLLO.
SELECT * FROM film
WHERE title REGEXP "APOLLO$";


-- 6.  Get all films with word DATE in the title.
SELECT * FROM film
WHERE title REGEXP "DATE";


-- 7.  Get 10 films with the longest title.
SELECT * FROM film
ORDER BY length(title) desc LIMIT 10; 


-- 8.  Get 10 the longest films.
SELECT * FROM film
ORDER BY length desc LIMIT 10; 


-- 9.  How many films include Behind the Scenes content?
SELECT COUNT(special_features) FROM film 
WHERE special_features REGEXP "BEHIND";


-- 10. List films ordered by release year and title in alphabetical order.
SELECT title FROM film
GROUP BY release_year, title;
-- release year is always the same