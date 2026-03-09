
-- 01_create_tables.sql
-- Create all tables for ecommerce analysis

CREATE TABLE customers (
    customer_id         VARCHAR(40) PRIMARY KEY,
    customer_unique_id  VARCHAR(40),
    customer_zip_code   VARCHAR(10),
    customer_city       VARCHAR(100),
    customer_state      VARCHAR(5)
);

CREATE TABLE orders (
    order_id                      VARCHAR(40) PRIMARY KEY,
    customer_id                   VARCHAR(40),
    order_status                  VARCHAR(20),
    order_purchase_timestamp      TIMESTAMP,
    order_delivered_customer_date TIMESTAMP
);

CREATE TABLE payments (
    order_id        VARCHAR(40),
    payment_type    VARCHAR(20),
    payment_value   NUMERIC(10,2)
);

CREATE TABLE products (
    product_id               VARCHAR(40) PRIMARY KEY,
    product_category_name    VARCHAR(100),
    product_weight_g         INT,
    product_length_cm        INT,
    product_height_cm        INT,
    product_width_cm         INT
);

CREATE TABLE order_items (
    order_id    VARCHAR(40),
    product_id  VARCHAR(40),
    price       NUMERIC(10,2),
    freight_value NUMERIC(10,2)
);
