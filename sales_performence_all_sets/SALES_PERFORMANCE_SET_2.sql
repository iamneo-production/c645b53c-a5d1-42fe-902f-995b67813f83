-- set_3  
-- select * from sales;

--1Q
select productline as Unique_Products_Name from SALES
group by productline
order by productline ASC;

-- 2Q
select productline as product, sum(sales) as quantity from sales
where year_id=2004
group by productline
order by quantity DESC;

--3Q
(select * from (select productline as product, sum(quantityordered) as quantity from sales
where year_id=2004
group by productline
order by quantity DESC)
fetch first 1 rows only);

--4Q
(select * from (select productline as product, sum(quantityordered) as quantity from sales
where year_id=2004
group by productline
order by quantity Asc)
fetch first 1 rows only);

--5Q
select count(productcode) as Total_prod_sold from sales
where country='USA';