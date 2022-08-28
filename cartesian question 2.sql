create database cartesiandata2;
use cartesiandata2;
create table Voucher(Voucher_Id varchar(100));
insert into Voucher values('ABXFH'),('SDFGH'),('ERTYY'),('PPLKM');
select * from Voucher;
create table Customer(Customer_Id varchar(20));
insert into Customer values('Abhinash'),('Vipin'),('Mahesh'),('Bijoy'),('Bhabani'),('Ashutosh');
create table output(Customer_Key varchar(20),Gift_Voucher_Key varchar(20));

 ;with data1
 as(select *,row_number() over(order by Customer_Id) te from Customer)
 ,data2 as(select *,row_number() over(order by Voucher_Id) te from Voucher)
 select Customer_Id Customer_Key,Voucher_Id Gift_Voucher_Key
 from data1 a1 left
 join data2 a2 on a1.te=a2.te