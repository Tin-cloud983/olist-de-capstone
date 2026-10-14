---01. How many customers are there in each state? Show the top 5 state.

--- top 5 state, limit 5
--- Group by
--- count(*)
select count(*) as customers, customer_state from customers c 
group by customer_state 
order by customers desc
limit 5

--02. How many distinct real customers(customer_unique_id)are there?
select count(distinct customer_unique_id)from customers c 

---03.Which payment_type is used most, and what is its total payment_value?
select *from order_payments op 
select payment_type,count(*)payment,sum(payment_value) from order_payments
group by payment_type

----04 How many reviews are there for each review_score(1 to 5)?What is the overall average score?


