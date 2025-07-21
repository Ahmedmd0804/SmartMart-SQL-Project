CREATE DATABASE SmartMartDB;
USE SmartMartDB;

SHOW TABLES;
-- Example
SELECT * FROM customers LIMIT 5;
SELECT * FROM products LIMIT 5;
SELECT * FROM order_DETAILS LIMIT 5;

 --  View all customers
SELECT * FROM customers LIMIT 10;

 -- List products priced over $50
SELECT * FROM products WHERE price > 50;

-- 3. Count total orders
SELECT COUNT(*) AS total_orders FROM order_details;

 -- 4. Find latest order date
 SELECT MAX(order_date) AS latest_order FROM orders;
 
 -- 5. Find cheapest and most expensive product
 SELECT MIN(price) AS cheapest, MAX(price) AS most_expensive FROM products;

-- 6. Search for customers from a specific area (use part of the address)
SELECT * FROM customers WHERE address LIKE '%New York%';

-- 7. Show unique category names
SELECT DISTINCT category_name FROM categories;

-- 8. Get the average price of products by category
SELECT c.category_name, AVG(p.price) AS avg_price
FROM products p
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name;

-- 9. Show top 5 products with highest stock
SELECT product_name, stock_quantity 
FROM products 
ORDER BY stock_quantity DESC 
LIMIT 5;

-- 10. Count number of products each supplier provides
SELECT s.supplier_name, COUNT(*) AS total_products
FROM products p
JOIN suppliers s ON p.supplier_id = s.supplier_id
GROUP BY s.supplier_name
ORDER BY total_products DESC;

