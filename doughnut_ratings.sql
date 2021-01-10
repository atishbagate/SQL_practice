CREATE TABLE `doughnut_ratings` (
  `location` varchar(50) default NULL,
  `time` time default NULL,
  `date` date default NULL,
  `type` varchar(50) default NULL,
  `rating` tinyint(4) default NULL,
  `comments` varchar(50) default NULL
);
INSERT INTO `doughnut_ratings` (`location`,`time`,`date`,`type`,`rating`,`comments`) VALUES ('Krispy King','08:50:00','2007-09-27','plain glazed','10','almost perfect');
INSERT INTO `doughnut_ratings` (`location`,`time`,`date`,`type`,`rating`,`comments`) VALUES ('Duncan\\\'s Donuts','08:59:00','2007-08-25',NULL,'6','greasy');
INSERT INTO `doughnut_ratings` (`location`,`time`,`date`,`type`,`rating`,`comments`) VALUES ('Starbuzz Coffee','07:35:00','2007-05-24','cinnamon cake','5','stale, but tasty');
INSERT INTO `doughnut_ratings` (`location`,`time`,`date`,`type`,`rating`,`comments`) VALUES ('Duncan\\\'s Donuts','07:03:00','2007-04-26','jelly','7','not enough jelly');


desc doughnut_ratings;
select  * from doughnut_ratings;
 drop table doughnut_ratings;
 select location,rating,time_entry,Date_enter from doughnut_ratings
 where rating = 6
 or type = 'plain glazed';
 
 select location 
 from doughnut_ratings
 where 'type' = 'plain glazed'
 and rating < 9;
 
 select 'type' from doughnut_ratings
where location = 'Krispy King'
and rating = 3;

/*chapter 3 delete lesson */
delete from doughnut_ratings
where location = 'Snappy Bangel' or  rating >= 6;
where location = 'Krispy King' or  rating = 3;
where location = 'Krispy King' or  rating > 5;
where location = 'Snappy Bangel' and  rating >= 6;

where location = 'Krispy King' and  rating = 3;
where location = 'Krispy King' and  rating <> 6;

update doughnut_ratings
set
type = 'glazed'
where type = 'plain glazed';

 
 
 