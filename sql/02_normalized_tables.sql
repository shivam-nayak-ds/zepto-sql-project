-- Customers table
CREATE TABLE customers AS
SELECT DISTINCT
customer_id, customer_name, email, gender, age, city, state
FROM raw_data;

-- Products table
CREATE TABLE products AS
SELECT DISTINCT
product_id, product_name, category, price
FROM raw_data;

-- Orders table
CREATE TABLE orders AS
SELECT DISTINCT
order_id, customer_id, order_date, order_status
FROM raw_data;

-- Transactions table
CREATE TABLE transactions AS
SELECT DISTINCT
transaction_id, order_id, payment_mode, amount
FROM raw_data;

-- Ratings table
CREATE TABLE ratings AS
SELECT DISTINCT
order_id, rating
FROM raw_data
WHERE rating IS NOT NULL;

-- Delivery table
CREATE TABLE delivery AS
SELECT DISTINCT
order_id, delivery_time_minutes, delivery_status
FROM raw_data;
