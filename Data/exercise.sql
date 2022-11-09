use exercise;

create table Customer (
    CustomerID varchar(10),
    Customer_Names varchar(10),
    Segment varchar(10),
    Age int,
    Country varchar(10),
    City varchar(10),
    States varchar(10),
    Postal_Code int,
    Region varchar(10)
);


LOAD DATA INFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\M1_T4_V3_Customer.csv'
INTO TABLE Customer
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


INTO OUTFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\M1_T4_V3_Customer.csv'
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    ESCAPED BY ''
    LINES TERMINATED BY '\n';

select * from Customer;

SHOW VARIABLES LIKE "secure_file_priv";