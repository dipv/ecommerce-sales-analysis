-- Monthly revenue trend
SELECT
DATE_TRUNC('month', order_purchase_timestamp) AS month,
SUM(payment_value) AS revenue
FROM orders o
JOIN payments p
ON o.order_id = p.order_id
GROUP BY month
ORDER BY month;

-- Month with highest sales
SELECT
DATE_TRUNC('month', order_purchase_timestamp) AS month,
SUM(payment_value) AS revenue
FROM orders o
JOIN payments p
ON o.order_id = p.order_id
GROUP BY month
ORDER BY revenue DESC
LIMIT 1;
