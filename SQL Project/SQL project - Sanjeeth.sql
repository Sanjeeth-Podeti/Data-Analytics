create database ecommerce;
use ecommerce;
create table customer(customer_id  int primary key,customer_name varchar(100), customer_email varchar(200), customer_city varchar(100));
create table orders(order_id int Primary Key ,order_date date,Foreign Key(customer_id) references customer(customer_id),total_amount float,customer_id int);
create table orderdetails(order_detail_id int Primary Key,Foreign Key(order_id) references orders(order_id),order_id int,product_id int,quantity int,price float);
create table products(product_id int Primary Key,product_name varchar(200),category varchar(200),price float);
create table categories(category_id int,category_name varchar(200));

INSERT INTO customer (customer_id, customer_name, customer_email, customer_city) VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com', 'New York'),
(2, 'Bob Smith', 'bob.smith@example.com', 'Los Angeles'),
(3, 'Charlie Brown', 'charlie.brown@example.com', 'Chicago'),
(4, 'David Williams', 'david.williams@example.com', 'Houston'),
(5, 'Eve Davis', 'eve.davis@example.com', 'Phoenix'),
(6, 'Frank Harris', 'frank.harris@example.com', 'Philadelphia'),
(7, 'Grace Moore', 'grace.moore@example.com', 'San Antonio'),
(8, 'Hank Thompson', 'hank.thompson@example.com', 'San Diego'),
(9, 'Ivy Clark', 'ivy.clark@example.com', 'Dallas'),
(10, 'Jack White', 'jack.white@example.com', 'San Jose'),
(11, 'Karen Martin', 'karen.martin@example.com', 'Austin'),
(12, 'Leo Scott', 'leo.scott@example.com', 'Jacksonville'),
(13, 'Mia King', 'mia.king@example.com', 'San Francisco'),
(14, 'Noah Walker', 'noah.walker@example.com', 'Indianapolis'),
(15, 'Olivia Adams', 'olivia.adams@example.com', 'Columbus'),
(16, 'Paul Allen', 'paul.allen@example.com', 'Fort Worth'),
(17, 'Quinn Lee', 'quinn.lee@example.com', 'Charlotte'),
(18, 'Rita Baker', 'rita.baker@example.com', 'Seattle'),
(19, 'Steve Garcia', 'steve.garcia@example.com', 'Denver'),
(20, 'Tina Young', 'tina.young@example.com', 'El Paso'),
(21, 'John Doe', 'john.doe1@example.com', 'Los Angeles'),
(22, 'Jane Smith', 'jane.smith2@example.com', 'Chicago'),
(23, 'Michael Brown', 'michael.brown3@example.com', 'Houston'),
(24, 'Emily Davis', 'emily.davis4@example.com', 'Phoenix'),
(25, 'David Wilson', 'david.wilson5@example.com', 'Philadelphia'),
(26, 'Sarah Johnson', 'sarah.johnson6@example.com', 'San Antonio'),
(27, 'James Martin', 'james.martin7@example.com', 'San Diego'),
(28, 'Jessica Taylor', 'jessica.taylor8@example.com', 'Dallas'),
(29, 'William Anderson', 'william.anderson9@example.com', 'San Jose'),
(30, 'Olivia Thompson', 'olivia.thompson10@example.com', 'Austin'),
(31, 'Sophia White', 'sophia.white11@example.com', 'Fort Worth'),
(32, 'Liam Moore', 'liam.moore12@example.com', 'Columbus'),
(33, 'Isabella Lee', 'isabella.lee13@example.com', 'Charlotte'),
(34, 'Noah Harris', 'noah.harris14@example.com', 'San Francisco'),
(35, 'Mia Clark', 'mia.clark15@example.com', 'Indianapolis'),
(36, 'Lucas Lewis', 'lucas.lewis16@example.com', 'Seattle'),
(37, 'Charlotte Allen', 'charlotte.allen17@example.com', 'Denver'),
(38, 'Ethan Walker', 'ethan.walker18@example.com', 'Washington'),
(39, 'Amelia Scott', 'amelia.scott19@example.com', 'Boston'),
(40, 'Mason Young', 'mason.young20@example.com', 'El Paso'),
(41, 'Benjamin Adams', 'benjamin.adams21@example.com', 'Nashville'),
(42, 'Ava Hill', 'ava.hill22@example.com', 'Detroit'),
(43, 'Alexander King', 'alexander.king23@example.com', 'Oklahoma City'),
(44, 'Harper Baker', 'harper.baker24@example.com', 'Las Vegas'),
(45, 'Daniel Green', 'daniel.green25@example.com', 'Louisville'),
(46, 'Evelyn Carter', 'evelyn.carter26@example.com', 'Baltimore'),
(47, 'Elijah Nelson', 'elijah.nelson27@example.com', 'Milwaukee'),
(48, 'Abigail Mitchell', 'abigail.mitchell28@example.com', 'Albuquerque'),
(49, 'Matthew Perez', 'matthew.perez29@example.com', 'Tucson'),
(50, 'Chloe Roberts', 'chloe.roberts30@example.com', 'Fresno'),
(51, 'Sebastian Rivera', 'sebastian.rivera31@example.com', 'Sacramento'),
(52, 'Madison Stewart', 'madison.stewart32@example.com', 'Mesa'),
(53, 'Jack Sanchez', 'jack.sanchez33@example.com', 'Kansas City'),
(54, 'Ella Morris', 'ella.morris34@example.com', 'Atlanta'),
(55, 'Henry Murphy', 'henry.murphy35@example.com', 'Miami'),
(56, 'Scarlett Cooper', 'scarlett.cooper36@example.com', 'New Orleans'),
(57, 'Aiden Reed', 'aiden.reed37@example.com', 'Cleveland'),
(58, 'Grace Morgan', 'grace.morgan38@example.com', 'Minneapolis'),
(59, 'Samuel Bell', 'samuel.bell39@example.com', 'Raleigh'),
(60, 'Zoe Gomez', 'zoe.gomez40@example.com', 'Virginia Beach'),
(61, 'Isaac Hughes', 'isaac.hughes41@example.com', 'Omaha'),
(62, 'Avery Howard', 'avery.howard42@example.com', 'Oakland'),
(63, 'Logan Ward', 'logan.ward43@example.com', 'Tampa'),
(64, 'Lily Cox', 'lily.cox44@example.com', 'Tulsa'),
(65, 'Ryan Butler', 'ryan.butler45@example.com', 'Arlington'),
(66, 'Nora Torres', 'nora.torres46@example.com', 'Bakersfield'),
(67, 'Owen Flores', 'owen.flores47@example.com', 'Honolulu'),
(68, 'Layla Brooks', 'layla.brooks48@example.com', 'Anaheim'),
(69, 'Luke Rogers', 'luke.rogers49@example.com', 'Santa Ana'),
(70, 'Hannah Long', 'hannah.long50@example.com', 'Riverside');


INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 999.99),
(2, 'Smartphone', 'Electronics', 699.99),
(3, 'Headphones', 'Electronics', 199.99),
(4, 'Desk Chair', 'Furniture', 149.99),
(5, 'Monitor', 'Electronics', 299.99),
(6, 'Keyboard', 'Electronics', 49.99),
(7, 'Mouse', 'Electronics', 29.99),
(8, 'Tablet', 'Electronics', 499.99),
(9, 'Printer', 'Electronics', 199.99),
(10, 'Router', 'Electronics', 99.99),
(11, 'Bookshelf', 'Furniture', 129.99),
(12, 'Office Desk', 'Furniture', 249.99),
(13, 'Lamp', 'Furniture', 39.99),
(14, 'Coffee Table', 'Furniture', 89.99),
(15, 'Sofa', 'Furniture', 499.99),
(16, 'Dining Table', 'Furniture', 699.99),
(17, 'Bed Frame', 'Furniture', 399.99),
(18, 'Wardrobe', 'Furniture', 549.99),
(19, 'Refrigerator', 'Appliances', 1199.99),
(20, 'Microwave', 'Appliances', 249.99),
(21, 'Fitness Tracker', 'Electronics', 129.99),
(22, 'Dishwasher', 'Appliances', 750.00),
(23, 'Dryer', 'Appliances', 650.00),
(24, 'Oven', 'Appliances', 900.00),
(25, 'Air Fryer', 'Appliances', 180.00),
(26, 'Electric Kettle', 'Appliances', 40.00),
(27, 'Juicer', 'Appliances', 120.00),
(28, 'Coffee Maker', 'Appliances', 90.00),
(29, 'Water Purifier', 'Appliances', 250.00),
(30, 'Smart Light', 'Electronics', 60.00),
(31, 'Bluetooth Speaker', 'Electronics', 80.00),
(32, 'Router', 'Electronics', 130.00),
(33, 'External Hard Drive', 'Electronics', 100.00),
(34, 'USB Flash Drive', 'Electronics', 25.00),
(35, 'Power Bank', 'Electronics', 45.00),
(36, 'Smart Thermostat', 'Electronics', 150.00),
(37, 'Drone', 'Electronics', 400.00),
(38, 'E-Reader', 'Electronics', 140.00),
(39, 'Electric Shaver', 'Personal Care', 70.00),
(40, 'Hair Dryer', 'Personal Care', 50.00),
(41, 'Electric Toothbrush', 'Personal Care', 60.00),
(42, 'Massage Chair', 'Furniture', 1200.00),
(43, 'Office Chair', 'Furniture', 300.00),
(44, 'Standing Desk', 'Furniture', 400.00),
(45, 'Bookshelf', 'Furniture', 150.00),
(46, 'Sofa', 'Furniture', 950.00),
(47, 'Dining Table', 'Furniture', 600.00),
(48, 'Wardrobe', 'Furniture', 500.00),
(49, 'Bed Frame', 'Furniture', 700.00),
(50, 'Mattress', 'Furniture', 800.00),
(51, 'Fan', 'Appliances', 120.00),
(52, 'Humidifier', 'Appliances', 80.00),
(53, 'Electric Heater', 'Appliances', 90.00),
(54, 'Rice Cooker', 'Appliances', 65.00),
(55, 'Slow Cooker', 'Appliances', 50.00),
(56, 'Food Processor', 'Appliances', 180.00),
(57, 'Hair Straightener', 'Personal Care', 45.00),
(58, 'Treadmill', 'Fitness', 700.00),
(59, 'Exercise Bike', 'Fitness', 600.00),
(60, 'Elliptical Machine', 'Fitness', 850.00),
(61, 'Dumbbells Set', 'Fitness', 120.00),
(62, 'Yoga Mat', 'Fitness', 30.00),
(63, 'Jump Rope', 'Fitness', 15.00),
(64, 'Resistance Bands', 'Fitness', 20.00),
(65, 'Golf Clubs', 'Sports', 400.00),
(66, 'Tennis Racket', 'Sports', 150.00),
(67, 'Soccer Ball', 'Sports', 25.00),
(68, 'Basketball', 'Sports', 30.00),
(69, 'Baseball Glove', 'Sports', 80.00),
(70, 'Hockey Stick', 'Sports', 150.00);


INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(1, '2023-08-01', 1, 1249.98),
(2, '2023-08-02', 2, 699.99),
(3, '2023-08-03', 3, 299.99),
(4, '2023-08-04', 4, 999.99),
(5, '2023-08-05', 5, 549.98),
(6, '2023-08-06', 6, 129.98),
(7, '2023-08-07', 7, 1249.98),
(8, '2023-08-08', 8, 529.98),
(9, '2023-08-09', 9, 1249.98),
(10, '2023-08-10', 10, 749.98),
(11, '2023-08-11', 11, 1699.98),
(12, '2023-08-12', 12, 349.98),
(13, '2023-08-13', 13, 999.98),
(14, '2023-08-14', 14, 749.98),
(15, '2023-08-15', 15, 549.98),
(16, '2023-08-16', 16, 349.98),
(17, '2023-08-17', 17, 1199.98),
(18, '2023-08-18', 18, 249.98),
(19, '2023-08-19', 19, 1099.98),
(20, '2023-08-20', 20, 1199.98),
(21, '2023-08-21', 21, 875.00),
(22, '2023-08-22', 22, 450.00),
(23, '2023-08-23', 23, 1299.00),
(24, '2023-08-24', 24, 160.50),
(25, '2023-08-25', 25, 410.00),
(26, '2023-08-26', 26, 860.00),
(27, '2023-08-27', 27, 930.00),
(28, '2023-08-28', 28, 710.00),
(29, '2023-08-29', 29, 1300.00),
(30, '2023-08-30', 30, 2150.00),
(31, '2023-08-31', 31, 1700.00),
(32, '2023-09-01', 32, 1200.00),
(33, '2023-09-02', 33, 900.00),
(34, '2023-09-03', 34, 1400.00),
(35, '2023-09-04', 35, 600.00),
(36, '2023-09-05', 36, 1450.00),
(37, '2023-09-06', 37, 2000.00),
(38, '2023-09-07', 38, 720.00),
(39, '2023-09-08', 39, 1600.00),
(40, '2023-09-09', 40, 1320.00),
(41, '2023-09-10', 41, 1580.00),
(42, '2023-09-11', 42, 490.00),
(43, '2023-09-12', 43, 880.00),
(44, '2023-09-13', 44, 220.00),
(45, '2023-09-14', 45, 560.00),
(46, '2023-09-15', 46, 240.00),
(47, '2023-09-16', 47, 1390.00),
(48, '2023-09-17', 48, 450.00),
(49, '2023-09-18', 49, 960.00),
(50, '2023-09-19', 50, 480.00),
(51, '2023-09-20', 51, 670.00),
(52, '2023-09-21', 52, 1180.00),
(53, '2023-09-22', 53, 150.00),
(54, '2023-09-23', 54, 910.00),
(55, '2023-09-24', 55, 780.00),
(56, '2023-09-25', 56, 350.00),
(57, '2023-09-26', 57, 190.00),
(58, '2023-09-27', 58, 1120.00),
(59, '2023-09-28', 59, 720.00),
(60, '2023-09-29', 60, 1640.00),
(61, '2023-09-30', 61, 990.00),
(62, '2023-10-01', 62, 750.00),
(63, '2023-10-02', 63, 1290.00),
(64, '2023-10-03', 64, 380.00),
(65, '2023-10-04', 65, 110.00),
(66, '2023-10-05', 66, 1450.00),
(67, '2023-10-06', 67, 460.00),
(68, '2023-10-07', 68, 790.00),
(69, '2023-10-08', 69, 1340.00),
(70, '2023-10-09', 70, 270.00);



INSERT INTO orderdetails (order_detail_id, order_id, product_id, quantity, price) VALUES
(1, 1, 1, 1, 999.99),
(2, 1, 5, 1, 249.99),
(3, 2, 2, 1, 699.99),
(4, 3, 4, 1, 149.99),
(5, 3, 7, 1, 149.99),
(6, 4, 1, 1, 999.99),
(7, 5, 6, 1, 49.99),
(8, 5, 7, 1, 149.99),
(9, 6, 7, 2, 29.99),
(10, 7, 1, 1, 999.99),
(11, 7, 5, 1, 249.99),
(12, 8, 4, 1, 149.99),
(13, 8, 6, 1, 49.99),
(14, 9, 1, 1, 999.99),
(15, 9, 5, 1, 249.99),
(16, 10, 8, 1, 499.99),
(17, 10, 9, 1, 199.99),
(18, 11, 11, 1, 129.99),
(19, 11, 16, 1, 699.99),
(20, 12, 13, 1, 39.99),
(21, 21, 21, 1, 129.99),
(22, 22, 22, 2, 750.00),
(23, 23, 23, 1, 160.00),
(24, 24, 24, 1, 90.00),
(25, 25, 25, 1, 410.00),
(26, 26, 26, 1, 860.00),
(27, 27, 27, 1, 930.00),
(28, 28, 28, 1, 710.00),
(29, 29, 29, 1, 1300.00),
(30, 30, 30, 2, 2150.00),
(31, 31, 31, 1, 1700.00),
(32, 32, 32, 1, 1200.00),
(33, 33, 33, 1, 900.00),
(34, 34, 34, 1, 1400.00),
(35, 35, 35, 1, 600.00),
(36, 36, 36, 1, 1450.00),
(37, 37, 37, 1, 2000.00),
(38, 38, 38, 2, 720.00),
(39, 39, 39, 1, 1600.00),
(40, 40, 40, 2, 1320.00),
(41, 41, 41, 1, 1580.00),
(42, 42, 42, 1, 490.00),
(43, 43, 43, 1, 880.00),
(44, 44, 44, 1, 220.00),
(45, 45, 45, 2, 560.00),
(46, 46, 46, 1, 240.00),
(47, 47, 47, 1, 1390.00),
(48, 48, 48, 1, 450.00),
(49, 49, 49, 1, 960.00),
(50, 50, 50, 1, 480.00),
(51, 51, 51, 1, 670.00),
(52, 52, 52, 1, 1180.00),
(53, 53, 53, 1, 150.00),
(54, 54, 54, 1, 910.00),
(55, 55, 55, 1, 780.00),
(56, 56, 56, 1, 350.00),
(57, 57, 57, 2, 190.00),
(58, 58, 58, 1, 1120.00),
(59, 59, 59, 1, 720.00),
(60, 60, 60, 1, 1640.00),
(61, 61, 61, 1, 990.00),
(62, 62, 62, 1, 750.00),
(63, 63, 63, 1, 1290.00),
(64, 64, 64, 1, 380.00),
(65, 65, 65, 1, 110.00),
(66, 66, 66, 1, 1450.00),
(67, 67, 67, 1, 460.00),
(68, 68, 68, 2, 790.00),
(69, 69, 69, 1, 1340.00),
(70, 70, 70, 1, 270.00);


INSERT INTO categories (category_id, category_name) VALUES
(1, 'Electronics'),
(2, 'Furniture'),
(3, 'Appliances'),
(4, 'Books'),
(5, 'Clothing'),
(6, 'Beauty'),
(7, 'Sports'),
(8, 'Toys'),
(9, 'Jewelry'),
(10, 'Automotive'),
(11, 'Groceries'),
(12, 'Health'),
(13, 'Music'),
(14, 'Outdoors'),
(15, 'Pet Supplies'),
(16, 'Office Supplies'),
(17, 'Tools'),
(18, 'Garden'),
(19, 'Baby Products'),
(20, 'Home Decor'),
(21, 'Shoes'),
(22, 'Clothing'),
(23, 'Kitchen Appliances'),
(24, 'Cameras'),
(25, 'Computers & Accessories'),
(26, 'Video Games'),
(27, 'Movies & TV'),
(28, 'Smart Home Devices'),
(29, 'Fitness Wearables'),
(30, 'Outdoor Gear'),
(31, 'Camping Equipment'),
(32, 'Handbags & Wallets'),
(33, 'Cosmetics'),
(34, 'Skincare Products'),
(35, 'Hair Care Products'),
(36, 'Fragrances'),
(37, 'Stationery'),
(38, 'Craft Supplies'),
(39, 'Art Supplies'),
(40, 'Lighting'),
(41, 'Heating & Cooling'),
(42, 'Home Decor'),
(43, 'Bedding & Linens'),
(44, 'Cleaning Supplies'),
(45, 'Storage & Organization'),
(46, 'Tools & Hardware'),
(47, 'Security & Surveillance'),
(48, 'Bicycles'),
(49, 'Motorcycles'),
(50, 'Car Accessories'),
(51, 'Tires'),
(52, 'Car Electronics'),
(53, 'Office Furniture'),
(54, 'Printers & Scanners'),
(55, 'Networking Equipment'),
(56, 'Software'),
(57, 'Educational Materials'),
(58, 'Collectibles'),
(59, 'Action Figures'),
(60, 'Board Games'),
(61, 'Puzzles'),
(62, 'Baby Clothing'),
(63, 'Maternity Wear'),
(64, 'Luggage & Backpacks'),
(65, 'Sunglasses'),
(66, 'Bath & Body'),
(67, 'Fitness Equipment'),
(68, 'Beverages'),
(69, 'Snack Foods'),
(70, 'Meats & Seafood');



-- Write a query to select the customer names and their corresponding cities.--

select customer_name,customer_city from customer;

-- Write a query to display the order ID, order date, and total amount for all orders. --

select order_id,order_date ,total_amount from orders;


-- Write a query to list all products that belong to the category "Electronics." --

select product_name from products where category='Electronics';




-- Write a query to find the total amount spent by each customer. --

select customer.customer_name,orders.total_amount from customer join orders on customer.customer_id=orders.customer_id;



-- Write a query to count the number of orders placed by customers in each city. --

select customer.customer_city,count(orders.order_id) AS num_of_orders 
 from customer join orders on customer.customer_id=orders.customer_id
 group by customer.customer_city
 order by num_of_orders DESC;
 
 --  (OR)  --
 
 select customer.customer_city,count(orders.order_id) AS num_of_orders 
 from customer join orders on customer.customer_id=orders.customer_id
 group by customer.customer_city;
 
 
-- Write a query to find the average quantity ordered for each product. --


select products.product_name,avg(orderdetails.quantity) AS avg_quantity 
from products join orderdetails on orderdetails.product_id=products.product_id
group by products.product_name;


-- Write a query to rank the products by price and list the top 5 most expensive ones. --



select product_name as Expensive_product ,price from products order by price DESC limit 5 ;



-- Write a query to rank customers based on their total spending --


select customer.customer_name,sum(orders.total_amount) AS total_spend,
dense_rank() over (order by sum(orders.total_amount) DESC) AS ranking 
from customer join orders on customer.customer_id=orders.order_id
group by customer.customer_id
order by total_spend;



-- Write a query to find customers who have placed orders above the average order amount. --


select customer.customer_name ,orders.order_id,orders.total_amount
from customer join orders 
on customer.customer_id=orders.customer_id
where orders.total_amount > (select avg(total_amount) from orders)
order by orders.total_amount DESC;



-- Write a query to find the product with the highest sales in each category. --

with product_sales AS
(select products.product_name,categories.category_name,sum(orderdetails.quantity*orderdetails.price) AS total_sales 
from products join orderdetails on products.product_id=orderdetails.product_id
join categories on products.category=categories.category_name
group by products.product_name,categories.category_name)
select category_name,product_name,total_sales from product_sales 
where (category_name,total_sales) in (select category_name,max(total_sales)
from product_sales group by category_name);


--  Write a query to list all customers who have placed more than one order, including their customer names and the number of orders they have placed.--

select customer.customer_name,count(orders.order_id)  AS num_of_orders 
 from customer inner join orders on customer.customer_id=orders.customer_id
 group by customer.customer_id,customer.customer_name 
 having count(orders.order_id)>1
 order by num_of_orders DESC;



-- Write a query to retrieve all orders placed in the last 30 days, showing the order ID, order date, and customer name. --

Select orders.order_id, orders.order_date, customer.customer_name 
from orders join customer ON orders.customer_id = customer.customer_id 
where orders.order_date between 2023-09-01 and 2023-10-09
order by orders.order_date DESC;



-- Write a query to display each customer and the products they have ordered, including the customer name, product name, and quantity ordered. --



select customer.customer_name,products.product_name,orderdetails.quantity
from customer inner join orders on customer.customer_id=orders.customer_id
join orderdetails on orders.order_id=orderdetails.order_id
join products on orderdetails.product_id=products.product_id
order by customer.customer_name,products.product_name;


-- Write a query to calculate the total revenue generated for each product category, displaying the category name and total revenue. --


select categories.category_name, sum(orderdetails.quantity*products.price) As Total_Revenue
from categories join products on categories.category_name=products.category
join orderdetails on products.product_id=orderdetails.product_id
join orders on orders.order_id=orderdetails.order_id
group by categories.category_name
order by Total_Revenue DESC;


-- Write a query to count how many orders were placed in each month of the current year, displaying the month and the number of orders. --



select MONTH(orders.order_date) AS month,
 COUNT(orders.order_id) AS number_of_orders
from orders
where YEAR(orders.order_date) = YEAR('2023-08-01')
group by  MONTH(orders.order_date)
order by month;



-- Write a query to list products that have been ordered fewer than 10 times, displaying the product name and the total quantity ordered. --



select products.product_name,sum(orderdetails.quantity) AS Total_Quantity_Ordered
from products join orderdetails on products.product_id=orderdetails.product_id
group by products.product_name
having sum(orderdetails.quantity) < 10
order by Total_Quantity_Ordered;



-- Write a query to list customers who have placed more than 10 orders, displaying the customer name and the total number of orders they’ve placed --

select customer.customer_name,count(orders.order_id) AS Total_Orders
from customer join orders on customer.customer_id=orders.customer_id
group by customer.customer_name
having count(orders.order_id) > 10
order by Total_Orders;


-- Write a query to rank cities based on the total revenue generated from orders placed by customers residing in each city, displaying the city name and total revenue. --

select customer.customer_city,SUM(orderdetails.quantity * products.price) AS Total_Revenue
from customer join orders  on customer.customer_id = orders.customer_id
join orderdetails  on orders.order_id = orderdetails.order_id
join products  on orderdetails.product_id = products.product_id
group by customer.customer_city
order by Total_Revenue DESC;


-- Write a query to find all orders where more than 3 different products were ordered, displaying the order ID, order date, and customer name. --

select orders.order_id,orders.order_date,customer.customer_name
from orders join customer on customer.customer_id=orders.customer_id
join
 ( select order_id from orderdetails
         group by order_id
         having count(distinct product_id)>1)
 orderdetails on orders.order_id=orderdetails.order_id;
 
 





