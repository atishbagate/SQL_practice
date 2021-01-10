create table boys(
`boy_id` int(11) default NULL,
  `boy` varchar(20) default NULL,
  `toy_id` int(11) default NULL
);
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('1','Davey','3');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('2','Bobby','5');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('3','Beaver','2');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('4','Richie','1');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('6','Johnny','4');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('5','Billy','2');

/*lesson number 8th*/
/*cross join that is cartesian inner join*/
select t.toy, b.boy
from toys as t 
cross join boys as b;

select b1.boy, b2.boy
from boys as b2 cross join boys as b1;

select b.boy,t.toy
from boys as b
inner join toys as t
where b.toy_id = t.toy_id;
