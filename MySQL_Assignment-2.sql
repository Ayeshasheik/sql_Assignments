
--8.	Display the details from Customer table who is from country Germany

select * from customer where country ='Germany'

--9	Display the  fullname of the employee  

Select FirstName +' '+ LastName as Full_Name from customer 

-- 10.	Display the  customer details  who has Fax number

alter table customer add Fax varchar(20)

select * from customer where Fax is not null

-- 11 Display the customer details whoes name holds second letter as U

select * from customer where FirstName like '_U%'

-- 12 Select order Details where unit price is greater than 10 and less than 20

select * from orderitem where unitprice > 10 and unitprice < 20

insert into orderitem values(77,7,7,15.02,3)

-- 13 Display order details which contains shipping date and arrange the order by date

select * from "order" order by orderdate asc

-- Display order details which contains shipping date and arrange the order by date
alter table "order" add shippingdate datetime;

select * from "order" where shippingdate is not null order by  shippingdate asc;

-- Print the orders shipped by ship name 'La corne d'abondance' between 2 dates(Choose dates of your choice)

alter table "order" add shipname nvarchar(20)

select * from "order"

select * from "order" where shipname = 'La corne d''abondance' and shippingdate  between '2021-10-10' and '2022-11 -10'

--Print the products supplied by 'Exotic Liquids'

alter table product add producttype nvarchar(20)
select * from product where producttype like '%exotic liquids'

--print the average quantity ordered for every product

select * from "order"
select * from product

SELECT id, AVG(quantity) AS AVG_Quantity 
FROM orderitem 
GROUP BY id

--Print all the Shipping company name and the ship names if they are operational
alter table "order" add shipping_company nvarchar(20)
select * from "order"


select * from "order"
select * from product

select "order".id, "order".shipname,"order".shipping_company, product.isdiscontinued  from "order" 
inner join product
on
"order".id = product.id
where isdiscontinued !=0

alter table "order" add managername nvarchar(20)
select * from "order"

--Print all Employees with Manager Name
select customer.id, customer.FirstName, customer.LastName, "order".managername from customer
inner join "order"
on
customer.id = "order".id




