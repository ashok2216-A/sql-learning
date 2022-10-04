-- create database classroom;

show databases;

use classroom;

create database classroom;

create table science_class (
    rollno int,
    names varchar(10),
    science_mark int
);

insert into science_class (rollno, names, science_mark) values 
   (4, 'jon', 78),
   (5, 'marry', 70),
   (6, 'tim', 68),
   (7, 'fedora', 76),
   (8, 'tim', 66);

select names, science_mark from science_class;

--it is used in postgerSQL
-- copy science_class(rollno, names, science_mark) from 'C:\Users\HP\Downloads\Getting started with SQL\Practise\Code\data.csv' delimiter ',' csv header;

select distinct names, science_mark from science_class;

-- select names, science_mark from science_class where science_mark = 86;
select names, science_mark from science_class where science_mark < 86;
-- select names, science_mark from science_class where science_mark > 86;

-- drop table science_class;

select names, science_mark from science_class where science_mark < 86 and names = 'tim';

select names, science_mark from science_class where science_mark < 86 and names = 'tim' or names = 'fedora';

update science_class set names='tom' where rollno=8;

insert into science_class (rollno, names, science_mark) values (9, 'harry', 25); 

delete from science_class where science_mark = 25;

alter table science_class add grade varchar(10);

alter table science_class drop grade;

alter table science_class change column science_mark science_mark int;

alter table science_class rename column type to science_mark;

alter table science_class change column science_mark set not null;

alter table science_class modify science_mark int drop not null;

select * from science_class;

select * from science_class where science_mark = 78 or science_mark = 86;

select * from science_class where science_mark IN (78,86);

select * from science_class where science_mark in (50);

select * from science_class where science_mark between  70 and 86;

select * from science_class where science_mark >= 70 and science_mark <=86;

select * from science_class where science_mark not between  70 and 86;

select * from science_class where names like 'A%';

select * from science_class where names like 'tim%';

select * from science_class where names like '%n'

select * from science_class where names not like 'jon%';

select * from science_class where names like 'n/%'

-- sql 
/* sql */

select * from science_class where rollno between 1 and 6 order by science_mark desc;

select * from science_class order by science_mark desc;

select * from science_class order by science_mark asc;

select * from science_class order by science_mark asc, rollno desc;

select * from science_class order by 2 asc;

select * from science_class limit 5;

select * from science_class order by science_mark asc, rollno desc limit 8;

select * from science_class where science_mark <= 78 order by science_mark desc limit 6;

select rollno as RollNo, names as Names, science_mark as Percentages from science_class;

select * from science_class;