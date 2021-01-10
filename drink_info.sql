show databases;
desc drink_info;
CREATE TABLE `drink_info` (
  `drink_name` varchar(16) default NULL,
  `cost` decimal(4,2) default NULL,
  `carbs` decimal(4,2) default NULL,
  `color` varchar(20) default NULL,
  `ice` char(1) default NULL,
  `calories` int(10) default NULL
);
INSERT INTO drink_info VALUES ('Blackthorn', 3, 8.4, 'yellow', 'Y', 33); 
INSERT INTO drink_info VALUES ('Blue Moon', 2.5, 3.2, 'blue', 'Y', 12); 
INSERT INTO drink_info VALUES ('Oh My Gosh', 3.5, 8.6, 'orange', 'Y', 35); 
INSERT INTO drink_info VALUES ('Lime Fizz', 2.5, 5.4, 'green', 'Y', 24); 
INSERT INTO drink_info VALUES ('Kiss on the Lips', 5.5, 42.5, 'purple', 'Y', 171); 
INSERT INTO drink_info VALUES ('Hot Gold', 3.2, 32.1, 'orange', 'N', 135); 
INSERT INTO drink_info VALUES ('Lone Tree', 3.6, 4.2, 'red', 'Y', 17); 
INSERT INTO drink_info VALUES ('Greyhound', 4, 14, 'yellow', 'Y', 50); 
INSERT INTO drink_info VALUES ('Indian Summer', 2.8, 7.2, 'brown', 'N', 30); 
INSERT INTO drink_info VALUES ('Bull Frog', 2.6, 21.5, 'tan', 'Y', 80); 
INSERT INTO drink_info VALUES ('Soda and It', 3.8, 4.7, 'red', 'N', 19); 
INSERT INTO drink_info VALUES ('Slim Shady', 4.35, NULL, 'clear', 'Y', NULL); 

select * from drink_info;
select drink_name from drink_info
where cost >= 3.5
and 
calories <50;

select drink_name,cost from drink_info
where ice = 'Y'
and color = 'yellow'
and calories > 33;

select drink_name,color from drink_info
where ice = 'Y'
and calories <= 4;

select drink_name,cost from drink_info
where calories >= 80;

select drink_name,color,ice from drink_info
where
cost >= 3.8;

select drink_name from drink_info
where drink_name >= 'L' and drink_name < 'M';

select drink_name from drink_info
where calories is null;

select drink_name from drink_info
where calories  <30 or
calories >60 ;

select drink_name from drink_info
where drink_name between 'G'  and 'O';

select drink_name from drink_info 
where not carbs between 3 and 5;

select * from easy_drinks
where not main in ('soda','iced tea');

select * from easy_drinks
where main not in ('soda','iced tea');

select * from easy_drinks 
where not drink_name <> 'Hot Gold';

select * from easy_drinks 
where main is not null;

select * from easy_drinks 
where not main = 'soda'
and not main = 'iced tea';

select * from easy_drinks
where  not amount1 < 1.50;

select * from easy_drinks
where main between 'P' and 'S';

select * from easy_drinks
where not drink_name like 'A%'
and not drink_name like 'B%';

/*delete lession num 3 */
insert into drink_info values ('Kiss on the Lips',5.5,42.5,'purple','Y',170);
delete from drink_info where calories = 171;
insert into drink_info values ('Blackthorn',3,8.4,'gold','Y',33);
delete from drink_info where color = 'yellow';

insert into drink_info values ('Oh My Gosh',4.5,8.6,'orange','Y',35);

insert into drink_info values ('Blue Moon',3.5,3.2,'blue','Y',12),('Lime Fizz',3.5,5.4,'green','Y',24);

delete from drink_info where cost = 2.5;


select * from easy_drinks;

update drink_info 
set cost = cost + 1
where drink_name = 'Blue Moon'
or drink_name = 'Oh My Gosh'
or drink_name = 'Lime Fizz';



