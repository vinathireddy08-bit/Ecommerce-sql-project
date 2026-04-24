-- Customers
INSERT INTO customers (customer_id, name, email, city, signup_date)
VALUES
(1,'John','john@gmail.com','Hyderabad','2023-01-15'),
(2,'Sarah','sarah@gmail.com','Chennai','2023-02-20'),
(3,'Junnu','junnu@gmail.com','Mumbai','2023-03-10'),
(4,'Arjun','arjun@gmail.com','Pune','2024-04-05'),
(5,'Vikram','vikram@gmail.com',NULL,'2025-05-08');

-- Products
INSERT INTO products (product_id, product_name, category, price)
VALUES 
(1,'Laptop','Electronics',50000.00),
(2,'Smartphone','Electronics',20000.00),
(3,'Watch','Accessories',2000.00),
(4,'Dress','Clothing',3000.00),
(5,'Shoes','Footwear',6000.00);

-- Orders
INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES
(1,1,'2023-01-20',50000.00),
(2,2,'2023-02-25',20000.00),
(3,3,'2023-03-15',4000.00),  -- corrected (2 qty * 2000)
(4,4,'2024-04-15',9000.00);  -- corrected (3 qty * 3000)

-- Order Items
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price)
VALUES
(1,1,1,1,50000.00),
(2,2,2,1,20000.00),  -- fixed NULL
(3,3,3,2,2000.00),
(4,4,4,3,3000.00);
