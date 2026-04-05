insert into customers(customer_id,name,email,city,signup_date)
values
(1,'john','john@gmail.com','hyderabad','2023-01-15'),
(2,'sarah','sarah@gmail.com','chennai','2023-02-20'),
(3,'junnu','junnu@gmail.com','mumbai','2023-03-10'),
(4,'arjun','arjun@gmail.com','pune','2024-04-05'),
(5,'vikram','vikarm@gmail.com','NULL','2025-05-08');

insert into products(product_id,product_name,category,product_price)
values 
(1,'laptop','electronics',50000.00),
(2,'smartphone','electronics',20000.00),
(3,'watch','accessories',2000.00),
(4,'dress','clothing',3000.00),
(5,'shoes','footwear',6000.00);

insert into orders(order_id,customer_id,order_date,total_amount)
values
(1,1,'2023-01-20',50000.00),
(2,2,'2023-02-25',20000.00),
(3,3,'2023-03-15',2000.00),
(4,4,'2024-04-15',3000.00);

insert into order_items(order_item_id,order_id,product_id,quantity,price)
values
(1,1,1,1,50000.00),
(2,2,2,1,NULL),
(3,3,3,2,2000.00),
(4,4,4,3,3000.00);