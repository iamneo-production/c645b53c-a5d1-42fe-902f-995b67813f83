SET-3

1Q 
select productline as unique_prod from sales
group by productline
order by productline asc;

2Q
select productline as product, sum(sales) as quantity from sales
where year_id=2004
group by productline
order by quantity desc;

3Q
(select * from(select productline as product,sum(quantityordered) as quantity from SALES
where year_id=2004
group by PRODUCTLINE
order by quantity desc)
fetch first 1 rows only);

4Q
(select * from(select productline as product,sum(quantityordered) as quantity from SALES
where year_id=2004
group by PRODUCTLINE
order by quantity asc)
fetch first 1 rows only);

5Q
select count(productcode) as total_prod_sold from sales
where country='USA';

