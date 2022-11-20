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

-------------------------------------------------------------------------------------------------------------

use customer;
use sales;
select * from customer;
select * from sales_2015;

/*Creating sales table of year 2015*/

Create table sales_2015 as select * from sales where `sales`.`ship date` between '01-01-2015' and '31-12-2015';
select count(*) from sales_2015; --2131
select count(distinct `sales_2015`.`Customer ID`) from sales_2015;--578

/* Customers with age between 20 and 60 */
create table customer_20_60 as select * from customer where age between 20 and 60;
select count (*) from customer_20_60;--597

DROP TABLE `customer`.`sales_2015`;

select 
    a.orderline,
    a.productid,
    `sales`.`Customer ID`,
    a.sales,
    b.customername,
    b.age
from sales_2015 as a inner join customer_20_60 b on 
`sales_2015`.`a.Customer ID`=`sales_2015`.`b.Customer ID` 
order by `sales_2015`.`Customer ID`;

select customername,length(customername) as characters from customer where age >30;

select upper('ashok');
select lower('ASHOK');

select customername, country, Replace(country,'United States','US') as countrynew from customer;

select trim(leading ' ' from '   ashok   ');
select trim(trailing ' ' from '   ashok   ');
select trim(both ' ' from '   ashok   ');
select trim('   ashok   ');
select ltrim('   ashok   ',' ');
select rtrim('   ashok   ',' ');

select customername, City ||' , '|| State ||' , '|| Country as address from customer;

select customerid, customername, 
substring(customerid,1, 2) as cust_group 
from customer where substring(customerid,1, 2) = 'AB';


select customerid, customername, 
substring(customerid,4, 5) as cust_group 
from customer where substring(customerid,4, 5) = 'AB';

select Order ID, string_agg(productid,',') from sales group by Order ID;


select `product`.`product name`, max(length(`product`.`product name`)) as max_len from product;

select `product`.`product id`, `product`.`product name` ||' , '|| `product`.`Sub-Category` ||' , '|| `product`.`Category` as address from product;

select `product`.`product id`, 
substring(`product`.`product id`,1, 3) as Column1,
substring(`product`.`product id`,4, 4) as Column2,
substring(`product`.`product id`,8, 15) as column3
from product;

select Category, `product`.`sub-Category` from product where  `product`.`sub-Category` = 'Chairs' or `product`.`sub-Category` = 'Tables';

select orderline, sales, ceil(sales), floor(sales) from sales where shipmode='second class';

select random(), random()*40+10, floor(random()*40)+10;

select * from sales;