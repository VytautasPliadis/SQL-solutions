-- Chapter 8 
-- Grouping and Aggregate

-- Exercise 8-1. Construct a query that counts the number of rows in the payment table.
SELECT count(*)
FROM payment
GROUP BY payment_id;

-- Exercise 8-2. Modify your query from Exercise 8-1 to count the number of payments made by each
-- customer. Show the customer ID and the total amount paid for each customer.
SELECT customer_id, count(payment_id), sum(amount)
FROM payment
GROUP BY customer_id
ORDER BY 1;

-- Exercise 8-3. Modify your query from Exercise 8-2 to include only those customers who have made at least 40 payments.
SELECT customer_id, sum(amount), count(payment_id)
FROM payment
GROUP BY customer_id
HAVING count(payment_id) >= 40
ORDER BY 1;
