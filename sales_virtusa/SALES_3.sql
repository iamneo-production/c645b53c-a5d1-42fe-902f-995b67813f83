select PRODUCTLINE as Unique_Products_Name FROM SALES
group by PRODUCTLINE
order by PRODUCTLINE ASC;

select productline as product,sum(sales) as quantity from sales
where year_id=2004
group by PRODUCTLINE
order by quantity desc;

(select*from(select productline as product,sum(QUANTITYORDERED) as quantity from sales
where year_id=2004
group by productline
order by quantity desc)
fetch first 1 rows only);

(select * from (select productline as product, sum(QUANTITYORDERED) as quantity from sales
where year_id=2004
group by productline
order by quantity Asc)
fetch first 1 rows only);

select count(productcode) as Total_prod_sold from sales
where country='USA';