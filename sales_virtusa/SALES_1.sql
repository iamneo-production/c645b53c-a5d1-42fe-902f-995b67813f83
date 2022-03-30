select count(*) as total_quantity from sales where state='Victoria' and QUANTITYORDERED>0;

select count(*) as total_purchase_price from sales where (QUANTITYORDERED*PRICEEACH)>5000;

select sum(quantityordered) as total_products from sales where  year_id=2003;

select count(DISTINCT(ordernumber)) as total_customers_orderd_usa from sales where  COUNTRY='USA';

select sum(quantityordered) as total_purchase,year_id FROM SALES where status='Shipped' group by year_id;

select count(*) from sales where productline='Classic Cars';

select count(*) from sales where productline='Classic Cars' and year_id=2005;

select SUM(sales) as total_price from sales where year_id=2005;

select SUM(sales) as total_price,year_id from sales group by year_id;

select sum(quantityordered) as total_products from sales where year_id=2005 and status='Shipped';