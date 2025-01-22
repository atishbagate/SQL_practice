-- joins with aggrigate functions

-- Write a query to find the total rental amount paid by each customer.
-- Ensure you join the payment, customer, and rental tables and use the SUM aggregate function.

SELECT concat(c.last_name,c.first_name) AS customer_first_name,
       SUM(p.amount) AS total_rental_amount
FROM payment p
JOIN rental r ON p.rental_id = r.rental_id
JOIN customer c ON p.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_rental_amount DESC;
-- -----------------
-- Write a query to find the average rental duration for each film category. 
-- Ensure you join the rental, inventory, film, and category tables and use the AVG aggregate function.
select * from rental;
select * from inventory;
select * from film;
select * from category;

select c.name as cat_name, 
AVG(DATEDIFF(r.return_date, r.rental_date)) AS average_rental_duration
from rental r 
join inventory i on r.inventory_id = i.inventory_id
join film f on i.film_id = f.film_id
join film_category fc on f.film_id = fc.film_id
join category c on fc.category_id = c.category_id
group by c.category_id,c.name
;
-- ------------
-- Write a query to find the total number of films rented for each category. 
-- Ensure you join the rental, inventory, film, and category tables and use 
-- the COUNT aggregate function.

SELECT c.name AS category_name,
       COUNT(r.rental_id) AS total_rentals
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
GROUP BY c.category_id, c.name
ORDER BY total_rentals DESC;

