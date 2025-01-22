-- joinning more than 2 tables in mysql join.

-- Question: Write a query to find the rental date, customer name, 
-- and film title for all rentals. Ensure you join the rental, customer, and film tables.
select * from rental;
select * from film;
select * from inventory;
select * from customer;

select rent.rental_date as rent_date,
concat(cust.first_name," ",cust.last_name) as customer_name,
invt.inventory_id as invt_id,
flm.title as title
from rental rent
join customer cust on rent.customer_id = cust.customer_id 
join inventory invt on rent.inventory_id = invt.inventory_id
join film flm on flm.film_id = invt.film_id
order by rent.rental_date;
-- ------------------------------------
-- Question: Write a query to list the film title, actor name, 
-- and category name for all films in the Sakila database.
-- Ensure you join the film, actor, film_actor, and category tables.
select * from film; 
select * from film_actor;
select * from film_category;
select * from actor;
select * from category;

select flm.title, 
    concat(act.first_name," ",act.last_name) as actor_name,
    cat.name as film_cat
from film as flm
left join film_actor flm_act on flm.film_id = flm_act.actor_id
left join actor act on flm_act.actor_id = act.actor_id
left join film_category flm_cat on flm.film_id = flm_cat.film_id
left join category cat on flm_cat.category_id = cat.category_id;

