CREATE DATABASE task;

USE task;

CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    category VARCHAR(100),
    product_name VARCHAR(255),
    units_sold INT,
    unit_price DECIMAL(10, 2),
    amount DECIMAL(10, 2),
    region VARCHAR(100),
    payment_method VARCHAR(50)
);

SELECT * FROM online_sales LIMIT 5;


SELECT 
    
    EXTRACT(YEAR FROM order_date) AS Sales_Year,
    EXTRACT(MONTH FROM order_date) AS Sales_Month,
    

    SUM(amount) AS Total_Revenue,
    

    COUNT(DISTINCT order_id) AS Order_Volume

FROM 
    online_sales


GROUP BY 
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)


ORDER BY 
    Sales_Year, 
    Sales_Month;