create table salesPerformance(
Row_ID int,	
Order_ID varchar(20), 
Order_Date date,	
Ship_Date date,
Ship_Mode varchar (30),
Customer_ID varchar(20),	
Customer_name varchar(100),
Segment	varchar (30),
Country	varchar (50),
City varchar(50),
State varchar (50),
Postal_code	int,
Region varchar (20),
Product_ID varchar(30),
Category varchar (30),	
Sub_category varchar (30),	
Product_name varchar (255),	
Sales decimal(10,2));

select * from salesPerformance;

select count (*) as total_rows
from salesPerformance;




