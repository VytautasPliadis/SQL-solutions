-- Chapter 7 
-- Data Generation, Manipulation,and Conversion

-- Exercise 7-1. Write a query that returns the 17th through 25th characters of the string 'Please find the substring in this string'.
SELECT SUBSTRING('Please find the substring in this string' FROM 17 FOR 9);

-- Exercise 7-2. Write a query that returns the absolute value and sign (−1, 0, or 1) of the number −25.76823. Also return the number rounded to the nearest hundredth.
SELECT SIGN('-25.76823');

-- Exercise 7-3. Write a query to return just the month portion of the current date.
SELECT EXTRACT(MONTH FROM CURRENT_TIMESTAMP);
