CREATE TABLE `projekts` (
  `number` int(11) NOT NULL default '0',
  `descriptionofproj` varchar(50) default NULL,
  `contractoronjob` varchar(10) default NULL
);
INSERT INTO `projekts` (`number`,`descriptionofproj`,`contractoronjob`) VALUES ('1','outside house painting','Murphy'),
 ('2','kitchen remodel','Valdez'),
 ('3','wood floor installation','Keller'),
('4','roofing','Jackson');

select * from project_list;

alter table Projekts
rename to project_list;

alter table project_list
change column `number` proj_id int not null auto_increment,
add primary key (proj_id);

alter table project_list
change column descriptionofproj proj_desc varchar(100),
change column contractoronjob con_name varchar(30);

alter table project_list
add column con_phone varchar(10),
add column start_date date,
add column est_cost decimal(7,2);


alter table project_list
drop column start_date;

desc project_list;
