CREATE TABLE `hooptie` (
  `color` varchar(20) default NULL,
  `year` varchar(4) default NULL,
  `make` varchar(20) default NULL,
  `mo` varchar(20) default NULL,
  `howmuch` float(10,3) default NULL
);

INSERT INTO `hooptie` (`color`,`year`,`make`,`mo`,`howmuch`) VALUES ('silver','1998','Porsche','Boxter','17992.539'),
 (NULL,'2000','Jaguar','XJ','15995.000'),
 ('red','2002','Cadillac','Escalade','40215.898');
 select * from  hooptie;
 select * from  car_table;
 desc car_table;

 
 alter table hooptie
 rename to car_table;
 alter table car_table
 add column car_id int not null auto_increment first,
 add primary key(car_id);
alter table car_table
 add column  VIN varchar(16),
 change column mo model varchar(20);
 select * from  car_table;
 alter table car_table
modify column  color varchar(20) after model;
 alter table car_table
 modify column `year` varchar(4) after howmuch;
  alter table car_table
  change column howmuch price decimal(7,2);
  select substring('San Antonio,TX',2,4);
  select upper('uSa');
  select lower('sphGHEtti');
select reverse('sphGHEtti');
 select rtrim('   books    sphGHEtti');
 length length('San Antonio,TX');

