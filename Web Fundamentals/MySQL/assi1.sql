SHOW databases;
CREATE database Moath;
use Moath;
CREATE table axsos(
id int primary key not null auto_increment ,
sname varchar(255) not null ,
saddress varchar(255) not null
);
insert into axsos values (1, 'Moath', 'Nablus'),
(2, 'Mohammed', 'Salfit'),
(3, 'Ahmed', 'Salfit'),
(4, 'Moath', 'Nablus');
show tables;
select * from axsos;
update axsos set sname= 'Amro' where id=1;
select * from axsos;
update axsos set sname='Moath' where id=4;
select * from axsos;
insert into axsos values (4, 'Moath', 'Nablus');
select * from axsos;
delete from axsos where id=4;
select * from axsos;


