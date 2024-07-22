-- practice
create database cp;
use cp;
select *from customer;
select *from payment;
# INNER JOIN :Returns only the rows where there is a match in both tables.
SELECT *FROM payment p
INNER JOIN customer c ON p.customer_id = c.customer_id;
-- LEFT JOIN (or LEFT OUTER JOIN):Returns all rows from the left table and matching rows from the right table. 
-- If there is no match, NULL values are returned for the columns from the right table.
SELECT *
FROM customer
LEFT JOIN payment ON customer.customer_id = payment.customer_id;

-- RIGHT JOIN (or RIGHT OUTER JOIN): Returns all rows from the right table and matching rows from the left table. 
-- If there is no match, NULL values are returned for the columns from the left table.
SELECT *
FROM payment p
RIGHT JOIN customer c ON p.customer_id = c.customer_id;

-- FULL JOIN (or FULL OUTER JOIN):Returns all rows when there is a match in either table.
--  If there is no match, NULL values are returned for the columns from the table that lacks a matching row.

-- mysqldirectly not support full join 
