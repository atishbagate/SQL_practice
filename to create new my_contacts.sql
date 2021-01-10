/*query that return email address and profession of each person in my contacts*/
/*Qtr first name , last name, and status each person in my contacts*/
/*Qtr the first name, last name, state of each person in my contacts*/
/*questions to solve*/

/*firstly create table of interest(already created), seeking,profession(already created),zip code,states */
/*cross table are between table = interests,,seekings,*/
/*profession, zip-code,state are of direct contact*/
/*then linking tables by many_to _many relation  which contain 2 foreign key of two different tables have their primary key(in their respectively tables)*/

show databases;
use info;
show tables;
select * from interests;
desc interests;


alter table interests
drop column interest;

alter table interests
add column interest varchar(50);

drop table interests;
/*created tale interests and values inserted*/
create table interests(
interest_id int not null auto_increment primary key
);
alter table interests
add column interest1 varchar(50),
add column interest2 varchar(50),
add column interest3 varchar(50),
add column interest4 varchar(50);
/*values inserted from my_contacts table*/ 
insert into interests(interest1,interest2,interest3 )
select interest1,interest2,interest3 from my_contacts;

/*now create table contacts_intrests*/

select * from contacts_interests;

create table contacts_interests(
contact_id int not null,
interest_id int not null,
constraint my_contacts_contact_id_fk
foreign key(contact_id) references my_contacts (contact_id),
constraint interests_interest_id_fk
foreign key(interest_id) references interests (interest_id)
);

insert into contacts_interests(contact_id)
select contact_id from my_contacts;

insert into contacts_interests(interest_id)
select interest_id from interests;









