-- =========================================
-- SALES PERFORMANCE & CUSTOMER SEGMENTATION ANALYSIS
-- =========================================

-- Preview Data
SELECT * 
FROM sales
LIMIT 10;


-- =========================================
-- 1. SALES BY REGION
-- Purpose: Identify top-performing regions
-- =========================================
SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    COUNT(order_id) AS total_orders
FROM sales
GROUP BY region
ORDER BY total_sales DESC;


-- =========================================
-- 2. SALES BY CATEGORY
-- Purpose: Identify which categories drive revenue
-- =========================================
SELECT
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY category
ORDER BY total_sales DESC;


-- =========================================
-- 3. TOP 10 PRODUCTS
-- Purpose: Best-selling products
-- =========================================
SELECT
    product_name,
    SUM(sales) AS total_sales,
    SUM(quantity) AS total_quantity,
    SUM(profit) AS total_profit
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;


-- =========================================
-- 4. CUSTOMER LIFETIME VALUE (CLV)
-- Purpose: Identify high-value customers
-- =========================================
SELECT
    customer_id,
    customer_name,
    SUM(sales) AS lifetime_value,
    SUM(profit) AS total_profit,
    COUNT(order_id) AS total_orders
FROM sales
GROUP BY customer_id, customer_name
ORDER BY lifetime_value DESC;


-- =========================================
-- 5. SUB-CATEGORY PERFORMANCE
-- Purpose: Find profitable vs loss-making products
-- =========================================
SELECT
    category,
    sub_category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY category, sub_category
ORDER BY total_profit DESC;


-- =========================================
-- 6. DISCOUNT IMPACT ON PROFIT
-- Purpose: Understand effect of discounts
-- =========================================
SELECT
    discount,
    COUNT(*) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(profit), 2) AS avg_profit
FROM sales
GROUP BY discount
ORDER BY discount;


-- =========================================
-- 7. SALES BY CUSTOMER SEGMENT
-- Purpose: Compare Consumer vs Corporate vs Home Office
-- =========================================
SELECT
    segment,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    COUNT(order_id) AS total_orders
FROM sales
GROUP BY segment
ORDER BY total_sales DESC;


-- =========================================
-- 8. MONTHLY SALES TREND
-- Purpose: Identify seasonality patterns
-- =========================================
SELECT
    DATE_TRUNC('month', order_date) AS month,
    SUM(sales) AS monthly_sales,
    SUM(profit) AS monthly_profit
FROM sales
GROUP BY month
ORDER BY month;


-- =========================================
-- 9. REGIONAL CATEGORY PERFORMANCE
-- Purpose: Compare categories across regions
-- =========================================
SELECT
    region,
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY region, category
ORDER BY region, total_sales DESC;


-- =========================================
-- 10. FINAL DATASET FOR DASHBOARDS
-- Purpose: Export clean aggregated data
-- =========================================
SELECT 
    region,
    category,
    sub_category,
    segment,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_quantity,
    AVG(discount) AS avg_discount
FROM sales
GROUP BY region, category, sub_category, segment
ORDER BY total_sales DESC;
