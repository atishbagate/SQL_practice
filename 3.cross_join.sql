-- cross join
-- A cross join returns the Cartesian product of the two tables, 
-- which means it will combine each row of the first table with every 
-- row of the second table. This type of join can result in very large result sets

-- Write a query to get a Cartesian product of the actor and film tables.
-- Display the actor's first name, last name, and the film title.

select actor.first_name,actor.last_name,film.title from 
actor cross join film;

-- Write a query to get a Cartesian product of the customer and staff tables. 
-- Display the customer's first name, last name, and the staff's first name, last name.

select customer.first_name,customer.last_name,staff.first_name,staff.last_name from 
customer cross join staff;