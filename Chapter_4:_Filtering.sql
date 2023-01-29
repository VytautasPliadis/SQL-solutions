-- Chapter 4 
-- Filtering

-- Exercise 4-3. Construct a query that retrieves all rows from the payments table where the amount is either 1.98, 7.98, or 9.98.
SELECT payment_id, customer_id, amount, date(payment_date)
FROM payment
WHERE amount IN (1.98, 7.98, 9.98);

-- Exercise 4-3. Construct a query that finds all customers whose last name contains an A in the second position and a W anywhere after the A.
SELECT fist_name, last_name
FROM customer
WHERE last_name ILIKE ('_A%W%') 
