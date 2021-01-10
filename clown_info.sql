CREATE TABLE `clown_info` (
 `name` varchar(50) default NULL,
 `last_seen` varchar(50) default NULL,
 `appearance` varchar(50) default NULL,
 `activities` varchar(50) default NULL);
 
 INSERT INTO clown_info VALUES ('Elsie', 'Cherry Hill Senior Center', 'F, red hair, green dress, huge feet', 'balloons, little car');
INSERT INTO clown_info VALUES ('Pickles', 'Jack Green\'s party', 'M, orange hair, blue suit, huge feet','mime');
INSERT INTO clown_info VALUES ('Snuggles' ,'Ball?Mart' ,'F, yellow shirt, baggy red pants', 'horn, umbrella');
INSERT INTO clown_info VALUES ('Mr. Hobo' ,'Party for Eric Gray' ,'M, cigar, black hair, tiny hat violin');
INSERT INTO clown_info VALUES ('Clarabelle' ,'Belmont Senior Center' ,'F, pink hair, huge flower, blue dress', 'yelling, dancing');
INSERT INTO clown_info VALUES ('Scooter', 'Oakland Hospital' ,'M, blue hair, red suit, huge nose', 'balloons'); 
INSERT INTO clown_info VALUES ('Zippo' ,'Millstone Mall', 'F, orange suit, baggy pants', 'dancing'); 
INSERT INTO clown_info VALUES ('Babe', 'Earl\'s Autos' ,'F, all pink and sparkly', 'balancing, little car');
INSERT INTO clown_info VALUES ('Bonzo' ,'','M, in drag, polka dotted dress', 'singing, dancing');
INSERT INTO clown_info VALUES ('Sniffles' ,'Tracy\'s', 'M, green and purple suit, pointy nose',''); 



INSERT INTO clown_info VALUES ('zippo' ,'Millstone Mall', 'F, orange suit, baggy pants','dancing,singing');

INSERT INTO clown_info VALUES ('Snuggles' ,'Ball?Mart', 'F, yellow shirt, baggy bule pants','horn, umbrella');

INSERT INTO clown_info VALUES ('Bonzo' ,'Dickson Park', 'M, in drag, polaka dotted dress','dancing,singing');

INSERT INTO clown_info VALUES ('sniffles' ,'Tracy\'s', 'M, green and purple suit, pointy nose','climbing into thny car');
INSERT INTO clown_info VALUES ('Mr. Hobo' ,'Party for Eric Gray', 'M,cigar, black hair tiny hat','violin');

select * from clown_info;

delete from clown_info 
where activities = 'dancing';

insert into clown_info
values ('Clarabelle','Belmont Senior Center' ,'F, pink hair, huge flower, blue dress','dancing');
delete from clown_info
where activities = 'yelling, dancing'
and name = 'Clarabelle';

update clown_info
set last_seen = 'Tracy\'s'
where name = 'mr. Hobo'
and last_seen = 'Party for Eric Gray';

update clown_info
set activities = 'singing'
where name ='Zippo';

update clown_info
set appearance = 'F, yellow shirt,baggy blue pants'
where name = 'Snuggles';

select * from clown_info;
select * from clown_info;

update clown_info
set last_seen = 'Dickson Park'
where name = 'Bonzo';

update clown_info 
set activities = 'climbing'
where name ='Sniffles';


update clown_info
set last_seen = 'Party for Eric Gray'
where name = 'Mr. Hobo';
