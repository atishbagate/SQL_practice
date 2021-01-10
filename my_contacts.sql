show databases;
use info;
show tables;
desc my_contacts;
CREATE TABLE `my_contacts` (
  `last_name` varchar(30) ,
  `first_name` varchar(20) ,
  `email` varchar(50) ,
  `gender` char(1),
  `birthday` date ,
  `profession` varchar(50),
  `location` varchar(50),
  `status` varchar(20),
  `interests` varchar(100),
  `seeking` varchar(100)
);
select * from my_contacts;

INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Anderson','Jillian','jill_anderson@ \nbreakneckpizza.com','F','1980-09-05','Technical Writer','Palo Alto, CA','single','kayaking, reptiles','relationship, friends');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Kenton','Leo','lkenton@starbuzzcoffee.com','M','1974-01-10','Manager','San Francisco, CA','divorced','women','women to date');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('McGavin','Darrin',' captainlove@headfirsttheater.com','M','1966-01-23','Cruise Ship Captain','San Diego, CA','single','sailing, fishing, yachting','women for casual relationships');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Franklin','Joe','joe_franklin@leapinlimos.com','M','1977-04-28','Software Sales','Dallas, TX','married','fishing, drinking','new job');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Hamilton','Jamie','dontbother@starbuzzcoffee.com','F','1964-09-10','System Administrator','Princeton, NJ','married','RPG','nothing');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Chevrolet','Maurice','bookman4u@objectville.net','M','1962-07-01','Bookshop Owner','Mountain View, CA','married','collecting books, scuba diving','friends');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Kroger','Renee','poorrenee@mightygumball.net','F','1976-12-03','Unemployed','San Francisco, CA','divorced','cooking','employment');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Mendoza','Angelina','angelina@starbuzzcoffee.com','F','1979-08-19','UNIX Sysadmin','San Francisco, CA','married','acting, dancing','new job');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Murphy','Donald','padraic@tikibeanlounge.com','M','1967-01-23','Computer Programmer','New York City, NY','committed relationsh','RPG, anime','friends');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Spatner','John','jpoet@objectville.net','M','1963-04-18','Salesman','Woodstock, NY','married','poetry, screenwriting','nothing');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`, `profession`,`location`) VALUES ('Toth','Anne','Anne_Toth@leapinlimos.com','F','1969-11-18', 'Artist','San Fran, CA');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`, `profession`,`location`) VALUES ('Manson','Anne','am86@objectville.net','F','1977-08-09', 'Baker','Seattle, WA');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`, `profession`,`location`) VALUES ('Hardy','Anne','anneh@b0tt0msup.com','F','1963-04-18', 'Teacher','San Fran, CA');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`, `profession`,`location`) VALUES ('Parker','Anne','annep@starbuzzcoffee.com','F','1983-01-10', 'Student','San Fran, CA');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`, `profession`,`location`) VALUES ('Blunt','Anne','anneblunt@breakneckpizza.com','F','1959-10-09', 'Web Designer','San Fran, CA');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`, `profession`,`location`) VALUES ('Jacobs','Anne','anne99@objectville.net','F','1968-02-05', 'Computer Programmer','San Jose, CA');

select * from my_contacts;
where location = 'San Francisco, CA'
OR location = 'San Francisco, CA';

select first_name from my_contacts
where first_name like '_im';

/*chapter 4 */
show create table my_contacts;

CREATE TABLE `my_contacts` (
  `contact_id` int not null auto_increment,
  `last_name` varchar(30) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `profession` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `interests` varchar(100) DEFAULT NULL,
  `seeking` varchar(100) DEFAULT NULL,
  primary key (contact_id)
);

alter table my_contacts
add column contact_id int not null auto_increment first,
add primary key (contact_id);

/*chapter no 5*/
alter table my_contacts
add column phone varchar(10)
after first_name;

alter table my_contacts
add  state varchar(2);

select right(location,2) from my_contacts;
select substring_index(location,',',1) from my_contacts;
select substring('San  Antonio,TX',5,3);

update my_contacts
set state  = right(location,2);
 
 /*chapter 7 */

select * from my_contacts 
where gender = 'F'
and status = 'single';
and state = 'TX';
and seeking like '%single%'
and birthday > '1970-08-28'
and birthday < '1980-08-28'
and interests  like '%animal%';

create table interests (
int_id int not null auto_increment primary key,
interest varchar(50) not null,
contact_id int not null,
constraint my_contacts_contact_id_fk
foreign key(contact_id)
references my_contacts (contact_id));

alter table my_contacts
add column interest1 varchar(50),
add column interest2 varchar(50),
add column interest3 varchar(50),
add column interest4 varchar(50);

update my_contacts
set interest1 = substring_index(interests,',',1);
update my_contacts set interests = trim(right(interests,(length(interests)-length(interest1)-1)));

update my_contacts set interest2 = substring_index(interests,',',1);
update my_contacts set interests = trim(right(interests,(length(interests)-length(interest2)-1)));

update my_contacts set interest3 = substring_index(interests,',',1);
update my_contacts set interests = trim(right(interests,(length(interests)-length(interest3)-1)));

update my_contacts set interest4 = interests;

alter table my_contacts
drop column interests;

/*lesson number 8th */
create table profession(
id int(11) not null auto_increment primary key,
profession varchar(20)
)as
select profession from my_contacts
group by profession
order by profession;



select profession mc_prof
from my_contacts mc 
group by mc_prof
order by mc_prof;


/*inner join with my_contact with profession*/
select  mc.last_name,mc.first_name,p.profession
from my_contacts as mc
inner join  profession as p
where mc.contact_id = p.id;
 


desc profession;
select * from my_contacts;
desc my_contacts;
select * from my_contacts;
show tables;
select * from interests;