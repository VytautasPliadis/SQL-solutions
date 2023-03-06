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

-- Exercise 9-3
-- Join the following query to a subquery against the film_actor table to show the level
-- of each actor:
-- SELECT 'Hollywood Star' level, 30 min_roles, 99999 max_roles
-- UNION ALL
-- SELECT 'Prolific Actor' level, 20 min_roles, 29 max_roles
-- UNION ALL
-- SELECT 'Newcomer' level, 1 min_roles, 19 max_roles
-- The subquery against the film_actor table should count the number of rows for each
-- actor using group by actor_id, and the count should be compared to the
-- min_roles/max_roles columns to determine which level each actor belongs to.
SELECT actr.actor_id,
       grps.level
FROM
  (SELECT actor_id,
          count(*) num_roles
   FROM film_actor
   GROUP BY actor_id) actr
INNER JOIN
  (SELECT 'Hollywood Star' LEVEL,
                           30 min_roles,
                           99999 max_roles
   UNION ALL SELECT 'Prolific Actor' LEVEL,
                                     20 min_roles,
                                     29 max_roles
   UNION ALL SELECT 'Newcomer' LEVEL,
                               1 min_roles,
                               19 max_roles) grps ON actr.num_roles BETWEEN grps.min_roles AND grps.max_roles;
