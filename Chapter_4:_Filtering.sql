-- Chapter 4 
-- Filtering

-- Exercise 4-3. Construct a query that retrieves all rows from the payments table where the amount is either 1.98, 7.98, or 9.98.
SELECT payment_id, customer_id, amount, date(payment_date)
FROM payment
WHERE amount IN (1.98, 7.98, 9.98);
