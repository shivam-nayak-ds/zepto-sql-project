## LEVEL 1: Basic Business Understanding
 
USE zepto_sql;

 =======================

--- 1.  How many customers are registered on the platform?
 =======================

   SELECT COUNT(*) AS total_customers
   FROM orders;

================

---- 2.  How many total orders have been placed?
   ==============

 SELECT COUNT(*) AS total_orders
 FROM orders;

==============
---- 3. How many orders are delivered, cancelled, and pending?
================

SELECT order_status , COUNT(*) AS total_count
FROM orders
GROUP BY order_status;
=====================

---- 4. What are the distinct cities customers belong to?
================
 SELECT DISTINCT city 
  FROM customers;

=======================

---- 5.. What is the average age of customers?
===============  
  
   SELECT ROUND(AVG(age) , 2) AS avg_customer_age
    FROM customers;
======================

--- 6.  What is the earliest and latest order date?

====================

 SELECT MIN(order_date) AS first_order_date,

 SELECT MAX(order_date) AS last_order_date

 FROM orders;

===============

--- 7.. What is the total revenue generated?

=============

SELECT SUM(amount) as total_revenue
FROM transaction;

=================

---- 8.How many orders were placed after a specific date?

======================

 SELECT 
   
COUNT(*) AS order_after_2024-02-01
FROM orders
WHERE order_date > '2024-02-01';

==============
---- 9 ..How many unique customers placed orders?

   SELECT (DISTINCT customer_id) AS active_customers
FROM orders;

================
---- 10... What payment modes are used on the platform?
 
SELECT  DISTINCT payment_mode
 FROM transaction;
   

# LEVEL 2 ---

--1.Which customers placed which orders?
===========================

 SELECT 
  c.customer_id ,
  c.customer_name,
  o.order_status,
  o.order_date
  
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;

=================================

--- 2.. What is the delivery status of each order?

SELECT 
  o.order_id ,
  o.order_date,
  o.order_status,
  d.delivery_status,
  d.distance_km
FROM orders o 
JOIN delivery d
ON o.order_id = d.order_id;

========================

-- 3. What is the transaction amount for each order?

==============================
 SELECT
   o.order_id,
   o.customer_id,
   t.amount,
   t.payment_mode,
    o.order_date
FROM orders o
JOIN transactions t
ON o.order_id = t.order_id;

===============================

--4.. Which customers have placed more than one order?
Identifies repeat customers.
=========================





























































































































