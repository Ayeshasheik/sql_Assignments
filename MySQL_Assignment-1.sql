-----Creating myDB for practice
create database myDB
----------------------------------------------------------------------------------------------------------------------
--creating a table Customer
--1.Desgin the above database with following table by applying Primary key and Foreign key

create table customer(id int primary key,FirstName nvarchar(40) not null, LastName nvarchar(40), city nvarchar(40),
country nvarchar(40), phone nvarchar(20))

create table "order"( id int primary key, orderdate datetime, ordernumber nvarchar(10), customerid int, 
totalamount decimal(12,2), FOREIGN KEY (customerid) REFERENCES customer(id))

create table orderitem(id int primary key, orderid int, productid int, unitprice decimal(12,2), 
quantity int,foreign key (orderid) references customer(id),foreign key (productid) references customer(id))

create table product (id int primary key, productname nvarchar(50), unitprice decimal (12, 2), package nvarchar(30), isdiscontinued bit)


--2.Insert Records in all tables


insert into customer values(1, 'Ayesha', 'Sheik', 'Kavitam', 'India', '9999999999')
insert into customer values(2, 'John','A', 'California','America', '89028411')
insert into customer values(3, 'Jack','Michel','Northfan','London','9793899033')
insert into customer values(4,'Thulkahj','Jack','Geonarz','Germany','94793710088')
insert into customer values(5,'Ashab','Sheik','Abnazuik','Kuwait','98493841091')
insert into customer values(6, 'Touqeer','Raza','Jeazain','Uganda','9217329483849')
insert into customer values(8,'Adhan','F','Sakhinetipalli','India','555215325')

select * from customer;

insert into "order" values (7,'2021-01-08 09:06:00', '121', 1, 500)
insert into "order" values (1,'2020-08-01 08:07:00', '123', 2, 500)
insert into "order" values (12,'2019-09-05 02:09:10', '785', 3, 585)
insert into "order" values (9,'2022-04-08 06:54:00', '9120',4, 9871)
insert into "order" values (6,'2018-06-05 08:07:00', '1284', 5, 9154)

insert into orderitem values(1, 1, 1, 200.22, 1)
insert into orderitem values(11, 2, 2, 954.72, 20)
insert into orderitem values(2, 3, 3, 2541.44, 58)
insert into orderitem values(22, 4, 4, 8426.22, 72)
insert into orderitem values(13, 5, 5, 70751.81, 152)
insert into orderitem values(33, 6, 6, 6871.225, 32)

insert into product values(1, 'AC',800,'abc',1)
insert into product values(2,'FRIDGE',700,'def',0)
insert into product values(3, 'cooler',900,'ghi',1)
insert into product values(4,'oven',840,'jkl',0)
insert into product values(5,'laptop',987,'mno',1)
insert into product values(6,'fan',500,'yup',0)



select * from [dbo].[customer]
select * from [dbo].[order]
select * from [dbo].[orderitem]
select * from [dbo].[product]

--3.In Customer table FirstName Attribute should not accept null value

insert into customer values(8,null,'abcd','tanuku','pks',7931658665)

--4.In Order table OrderDate should not accept null value

insert into "order" values(144,'786',1,1,null) --it is accepting null value as i didnt given NotNULL .

ALTER TABLE "order" add  orderdate datetime NOT NULL DEFAULT GETDATE()

--5 Display all customer details

select *  from customer 

--6 starts write a query to display Country whose name with A or I

select country from customer where country like 'A%' or country like 'I%'

--7 .write a query to display whose name of customer whose third character is i

select FirstName from customer where FirstName like '__i%'
