USE sakila;
SHOW TABLES;

SELECT * FROM actor;
 SELECT * FROM film;
SELECT * FROM customer;
#Titles of all films from the film table

select title
from film;
#3.2 List of languages used in films, with the column aliased as language from the language table

select name
from language;

#List of first names of all employees from the staff table
select first_name
from staff;
#Retrieve unique release years.

SELECT DISTINCT release_year
FROM film;

#1 Determine the number of stores that the company has.
SELECT COUNT(store_id) AS store_count
FROM store;

#2 Determine the number of employees that the company has

SELECT COUNT(staff_id) AS staff_count
FROM staff;

#3 Determine how many films are available for rent and how many have been rented
SELECT inventory_id, count(rental_id)
FROM rental
GROUP BY inventory_id;

#Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

#Retrieve the 10 longest films.
-- Retrieve the 10 longest films
SELECT title, length,
    CASE
        WHEN length > 120 THEN 'long'
        ELSE 'normal'
    END AS movie_length
FROM film
ORDER BY length DESC
LIMIT 10;


#Retrieve all actors with the first name "SCARLETT".
SELECT first_name
FROM actor
WHERE first_name LIKE "%SCARLETT%";