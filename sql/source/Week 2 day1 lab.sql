select * from orders o 
select customer_id,order_status as status
from orders o

select distinct customer_id from orders o

select order_id,order_status as status
from orders o 
where order_status='delivered'

select distinct order_status as status
from orders o
where order_status<>'canceled'

select distinct c.customer_state  from customers c 
select *from customers 

select customer_id,customer_city from customers c 
where customer_state in ('SP','SC','MG')

select * from order_items oi 
where price between 20 and 30

select *from customers c 
where customer_city like '%sao'

----ORDER BY
select order_id,price,product_id
from order_items
order by price desc
limit 10

----ORDER BY 2 COLUMNS
select * from order_items oi 
order by price,oi.order_id 
limit 10

select price+oi.freight_value as total_paid,order_id
from order_items oi 
order by order_id, total_paid 
limit 10

-----Aggregate Function
select count(*)from customers c ---99411

select count(*), order_status from orders
group by order_status

-----where and group by
select count(*),customer_state from customers c 
where c.customer_state <>'SP'
group by c.customer_state 

--------item 100> 100 sellers
---- seller_id, count(*)>100
select seller_id , count(*)item_sold from order_items oi 
group by oi.seller_id 
having count(*)>100


