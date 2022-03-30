SET-1
select * from sales;

1Q
select count(*) as orders_from_victoria
from sales
where state='Victoria'and quantityordered>0;

2Q
select count(*) as purchase_above_5000
from sales
where (quantityordered*priceeach)>5000;

3Q
select sum(quantityordered) as orders_in_2003
from sales
where year_id=2003;

4Q
select count(distinct(ordernumber)) as orders_from_usa
from sales
where country='USA';

5Q
select sum(quantityordered) as purchase_in,year_id
from sales
where status='Shipped'
group by year_id;

6Q
select count(*) as classic_cars_orders
from sales
where productline='Classic Cars';

7Q
select count(*) as classic_cars_in_2005
from sales
where productline='Classic Cars' and year_id=2005;

8Q
select sum(sales) as total_saleprice_in_2005
from sales
where year_id=2005;

9Q
select sum(sales) as sales,year_id
from sales
group by year_id;

10Q
select sum(quantityordered) as products_shipped_in_2005
from sales
where status='Shipped' and year_id=2005;
