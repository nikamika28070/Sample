-- ASSESMENT 1
-- SELECT customer_id,SUM(amount) FROM payment
-- WHERE staff_id = 2
-- GROUP BY customer_id
-- HAVING SUM(amount) > 110

-- SELECT * FROM film
-- SELECT * FROM customer;

-- SELECT COUNT(title) FROM film
-- WHERE title LIKE 'J%'

-- SELECT first_name, last_name FROM customer
-- WHERE first_name LIKE 'E%'
-- AND address_id < 500
-- ORDER BY customer_id DESC
-- LIMIT 1;

SELECT first_name, last_name FROM customer WHERE customer_id IN 
 (SELECT MAX(customer_id) 
  FROM customer
  WHERE first_name LIKE 'E%' 
  AND address_id < 500
 );