create table interests (
int_id int not null auto_increment primary key,
interests varchar(50) not null,
contact_id int not null,
constraint my_contacts_contact_id_fk
foreign key (contact_id) 
references my_contacts(contact_id)
);

desc interests;
select * from interests;