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