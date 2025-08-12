CREATE DATABASE sales_analysis;
USE sales_analysis;

CREATE TABLE online_sales (
    customer_id INT,
    order_date DATE,
    product_id INT,
    category_id INT,
    category_name VARCHAR(100),
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2),
    payment_method VARCHAR(50),
    city VARCHAR(100),
    review_score DECIMAL(3,1),
    gender VARCHAR(10),
    age INT
);

-- 1. Monthly Revenue & Order Volume
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(price * quantity) AS monthly_revenue,
    COUNT(DISTINCT CONCAT(customer_id, '-', order_date)) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

-- 2. Top 3 Months by Revenue
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(price * quantity) AS monthly_revenue,
    COUNT(DISTINCT CONCAT(customer_id, '-', order_date)) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY monthly_revenue DESC
LIMIT 3;

