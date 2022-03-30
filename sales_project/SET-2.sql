SET-2

1Q
select sum(quantityordered) as products,year_id
from sales
where status='Shipped'
group by year_id;

2Q
select sum(quantityordered) as products_supplied
from sales
where order_date between '24-FEB-03' and '11-NOV-03'
and status='Shipped';

3Q
select count(*) as customers_ordered_classiccars
from sales
where productline='Classic Cars';

4Q
select count(*) as classic_cars_in_2003
from sales
where productline='Classic Cars' and year_id=2003;

5Q
select distinct productline as unique_products
from sales
order by productline asc;

