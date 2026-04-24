
 E-COMMERCE SQL ANALYSIS QUERIES

 1. Total Revenue
SELECT SUM(total_amount) AS revenue
FROM orders;

 2. Top Spending Customers
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM customers c
INNER JOIN orders o 
    ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;


 3. Monthly Sales Trend (Recommended Format)
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(total_amount) AS revenue
FROM orders
GROUP BY month
ORDER BY month;


  4. Best Selling Products
SELECT p.product_id, p.product_name,
       SUM(oi.quantity) AS total_sold
FROM order_items oi
INNER JOIN products p 
    ON oi.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_sold DESC;


 5. Revenue by Product Category
SELECT p.category,
       SUM(oi.price * oi.quantity) AS revenue
FROM order_items oi
INNER JOIN products p 
    ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;


  6. Customer Orders Count & Total Spent
SELECT c.name,
       COUNT(o.order_id) AS order_count,
       SUM(o.total_amount) AS total_spent
FROM customers c
LEFT JOIN orders o 
    ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;

 7. Top Products using Window Function
SELECT product_id,
       SUM(quantity) AS total_sales,
       RANK() OVER (ORDER BY SUM(quantity) DESC) AS ranking
FROM order_items
GROUP BY product_id;


 8. Customer Lifetime Value (Advanced)
SELECT c.customer_id, c.name,
       SUM(o.total_amount) AS lifetime_value
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY lifetime_value DESC;



