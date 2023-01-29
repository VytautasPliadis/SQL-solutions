-- Chapter 5
-- Querying Multiple Tables

-- Exercise 5-1. Fill in the blanks (denoted by <#>) for the following query to obtain the results that follow:
-- SELECT c.first_name, c.last_name, a.address, ct.city
-- FROM customer c
-- INNER JOIN address <1>
-- ON c.address_id = a.address_id
-- INNER JOIN city ct
-- ON a.city_id = <2>
-- WHERE a.district = 'California';
SELECT c.first_name, c.last_name, a.address, ct.city
FROM customer c
  INNER JOIN address <1>
  ON c.address_id = a.address_id
  INNER JOIN city ct
  ON a.city_id = <2>
WHERE a.district = 'California';

-- Exercise 5-2. Write a query that returns the title of every film in which an actor with the first name JOHN appeared.
SELECT f.title
FROM film f
  INNER JOIN film_actor fa
  ON f.film_id = fa.film_id
  INNER JOIN actor a
  ON fa.actor_id = a.actor_id
WHERE a.first_name = 'JOHN';

-- Exercise 5-3. onstruct a query that returns all addresses that are in the same city. 
-- You will need to join the address table to itself, and each row should include two different addresses.
SELECT a1.address, a2.address, a1.city_id
FROM address a1
  INNER JOIN address a2
  ON a1.city_id = a2.city_id
WHERE a1.address != a2.address;
