-- total revenue

select sum(total_amount) as revenue from orders;

-- top spending customers

select c.name,sum(o.total_amount) as total_spent
from customers c
inner join orders o on c.customer_id = o.customer_id
group by c.name
order by total_spent desc
limit5;

-- monthly sales trend

select month(order_date) as month,sum(total_amount) as revenue
from orders 
group by month(order_date)
order by month;


--best selling products
select products.product_id,sum(quantity) as total_sold
from order_items
inner join products on order_items.product_id = products.product_id
group by products,product_id
order by products.total_sold desc;

--revenue by product category
select product.category,sum(order_items. product_price * order_items.quantity) as revenue
from order_items
inner join products on order_items.product_id = products.product_id
group by products.category
order by revenue desc;

--custommer orders count and total spent
select customers.name,count(orders.order_id) as order_count,sum(orders.total_amount) as total_spent
from orders
left join customers on orders.customer_id = customers.customer_id
group by customers.name
order by total_spent desc;

--top products using window function
select product_id,sum(quantity) as total_sales,
rank()over(order by sum(quantity) desc) as ranking 
from order_items
group by product_id;













