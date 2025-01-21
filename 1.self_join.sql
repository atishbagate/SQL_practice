-- 1) self join - A self join allows you to join a table to itself. 
-- below queries created from sakila DB.
show tables; 
select * from customer;
-- 1) Performing a self join using an inner join -
-- A self join is useful for when you want to combine records in a table with other records in the same table that match a certain join condition.

-- example of inner join.
select concat(a.customer_id," - " , a.first_name ," - ",a.last_name),
	   concat(b.customer_id , " - " , b.first_name ," - ", b.last_name)
from customer a inner join customer b
on a.last_name = b.first_name;

-- example of left join.
select concat(a.customer_id," - " , a.first_name ," - ",a.last_name),
	   concat(b.customer_id , " - " , b.first_name ," - ", b.last_name)
from customer a left join customer b
on a.last_name = b.first_name;

-- example of right join.
select concat(a.customer_id," - " , a.first_name ," - ",a.last_name),
	   concat(b.customer_id , " - " , b.first_name ," - ", b.last_name)
from customer a right join customer b
on a.last_name = b.first_name;

