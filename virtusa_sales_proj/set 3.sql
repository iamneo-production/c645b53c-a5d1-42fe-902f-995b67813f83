select productline as Unique_Products_Name from sales
group by productline
order by productline ASC;


select productline as product, sum(sales) as quantity from SALES
where year_id=2004
group by productline
order by quantity DESC;


(select * from(select productline as product,sum(quantityordered) as quantity from SALES
where year_id=2004
group by PRODUCTLINE
order by quantity DESC)
fetch first 1 rows only);


(select * from(select productline as product, sum(quantityordered) as quantity from SALES
where year_id=2004
group by PRODUCTLINE
order by quantity Asc)
fetch first 1 rows only);


select count(productcode) as total_prod_sold from sales
where country='USA';