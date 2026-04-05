create DATABASES ecommerce_db;
use ecommerce_db;
create table customers(
    customer_id int primary key,
    name varchar(50),
    email varchar(100),
    city varchar(50),
    signup_date date
);
create  table products(
    product_id int primary key,
    product_name varchar(100),
    category varchar(50),
    price decimal(10,2)
);
create table orders(
    order_id int primary key,
    customer_id int,
    order_date date,
    total amount decimal(10,2)
foeign key(customer_id) references customer(customer_id)
);
create table order_items(
    order_item_id int primary key,
    order_id int,
    product_id int,
    quanty int,
    price decimal(10,2),
    foreign key(order_id) references orders(order_id),
    foreign key(product_id) references prodects(product_id),
    foreign key(customer_id) references customer(customer_id)
);