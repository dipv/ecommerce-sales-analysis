-- 1 Count total customers
SELECT COUNT(*) FROM customers;

-- 2 Count total orders
SELECT COUNT(*) FROM orders;

-- 3 Distinct order status
SELECT DISTINCT order_status
FROM orders;

-- 4 Total revenue
SELECT SUM(payment_value)
FROM payments;

-- 5 Average payment value
SELECT AVG(payment_value)
FROM payments;

-- 6 Payment types
SELECT COUNT(DISTINCT payment_type)
FROM payments;

-- 7 Top 5 cities with most customers
SELECT customer_city, COUNT(*) AS customer_count
FROM customers
GROUP BY customer_city
ORDER BY customer_count DESC
LIMIT 5;

-- 8 Products per category
SELECT product_category_name, COUNT(*)
FROM products
GROUP BY product_category_name;
