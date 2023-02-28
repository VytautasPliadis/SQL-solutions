-- Chapter 9 
-- Subqueries

-- Exercise 9-1. Construct a query against the film table that uses a filter condition with a noncorre‐
-- lated subquery against the category table to find all action films (category.name = 'Action').
SELECT title
FROM film
WHERE film_id IN
    (SELECT fc.film_id
     FROM film_category fc
     INNER JOIN category c ON fc.category_id = c.category_id
     WHERE c.NAME = 'Action')
ORDER BY title;
