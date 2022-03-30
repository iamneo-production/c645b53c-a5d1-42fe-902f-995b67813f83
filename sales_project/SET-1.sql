SET-1

1Q
select count(*) as total from sales where state='Victoria' and quantityordered>0;

2Q
select count(*) as total_price from sales where (quantityordered*priceeach)>5000;

3Q
select sum(quantityordered) as total_products from sales where year_id=2003;

4Q
select count(distinct(ordernumber)) as total_customers_ordered_from_usa from sales where country='USA';

5Q
select sum(quantityordered) as total_purchase,year_id from sales where status='Shipped' group by year_id;

6Q
select count(*) from sales where productline='Classic Cars';

7Q
select count(*) from sales where productline='Classic Cars' and year_id=2005;

8Q
select sum(sales) as total_price from sales where year_id=2005;

9Q
select sum(sales) as total_price,year_id from sales group by year_id;

10Q
select sum(quantityordered) as total_products from sales where year_id=2005 and status='Shipped';
