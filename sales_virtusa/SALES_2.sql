select * from sales;
--1Q
select sum(quantityordered) as products,year_id FROM SALES where status='Shipped' group by year_id;

--2Q
select sum(quantityordered) as products_supplied from sales where order_date between  '24-FEB-2003' and '11-NOV-2003';

--3Q
select count(*) from SALES
where (PRODUCTLINE='Classic Cars');

--4Q
select count(*) from SALES
where (productline='Classic Cars' and YEAR_ID=2003);

--5Q
select distinct PRODUCTLINE as Unique_Products_Name FROM SALES
order by PRODUCTLINE ASC;