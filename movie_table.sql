CREATE TABLE `movie_table` (
  `movie_id` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `rating` varchar(5) NOT NULL,
  `category` varchar(10) NOT NULL,
  `purchased` date NOT NULL,
  PRIMARY KEY  (`movie_id`)
);
drop table movie_table;

INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('83','Big Advenure','G','family','2002-03-06'),
('89','Shiny Things, The','PG','drama','2002-03-06'),
 ('88','End of the Line','R','misc','2001-02-05'),
 ('87','A Rat named Darcy','G','family','2003-04-19'),
 ('86','Head First Rules','R','action','2003-04-19'),
 ('85','Mad Clowns','R','horror','1999-11-20'),
('84','Greg: The Untold Story','PG','action','2001-02-05'),
 ('93','Potentially Habitable Planet','PG','scifi','2001-02-05'),
 ('92','Weird Things from Space','PG','scifi','2003-04-19'),
 ('91','Shark Bait','G','misc','1999-11-20'),
('90','Take it Back','R','comedy','2001-02-05');

alter table movie_table add  drama varchar(2);

alter table movie_table add  comedy varchar(2);

alter table movie_table add  `action` varchar(2);

alter table movie_table add  horror varchar(2);

alter table movie_table add  scifi varchar(2);

alter table movie_table add  family varchar(2);

alter table movie_table add  misc varchar(2);

alter table movie_table add  cartoon varchar(2);

alter table movie_table add  rating varchar(2);


update movie_table set category = 'drama' where 'drama' = 'T';
 
 update movie_table set category = 'comedy' where comedy = 'T';

 update movie_table set category = 'action' where `action` = 'T';
 
update movie_table set category = 'horror' where horror = 'T';
 
update movie_table set category = scifi where scifi = 'T';
 
update movie_table set category = 'family'   where for_kids = 'T';

update movie_table set catagory = 'family' where cartoon = 'T' and 'rating'  = 'G';

update movie_table set catagory = 'misc' where cartoon = 'T' and 'rating'  <> 'G';

desc movie_table;
select * from movie_table;


