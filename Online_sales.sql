/* =========================================================
   TASK 6: Sales Trend Analysis Using Aggregations
   Dataset: online_sales
   Table: orders
   Tool: MySQL Workbench
   Note: Dummy data is used as no dataset was provided.
   ========================================================= */


/* ---------- Step 0: Create Database ---------- */
CREATE DATABASE IF NOT EXISTS online_sales;
USE online_sales;
/* 📸 Screenshot NOT required */


/* ---------- Step 1: Create Orders Table ---------- */
/*
   Table structure follows the PDF description:
   orders table with order_date, amount, product_id.
   order_id is included to calculate order volume
   using COUNT(DISTINCT order_id).
*/
CREATE TABLE IF NOT EXISTS orders (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);
/* 📸 Screenshot REQUIRED */


/* ---------- Step 2: Insert Sample (Dummy) Data ---------- */
/*
   Sample data spanning multiple months
   to demonstrate monthly sales trends.
*/
INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1, '2024-01-05', 2500.00, 101),
(2, '2024-01-18', 1800.00, 102),

(3, '2024-02-03', 3200.00, 103),
(4, '2024-02-20', 2100.00, 101),

(5, '2024-03-01', 4000.00, 104),
(6, '2024-03-22', 1500.00, 102),

(7, '2024-04-07', 5000.00, 105),
(8, '2024-04-25', 2700.00, 103),

(9, '2024-05-10', 3600.00, 101),
(10,'2024-05-28', 2900.00, 104);
/* 📸 Screenshot OPTIONAL */


/* ---------- Step 3: Verify Data ---------- */
SELECT * FROM orders;
/* 📸 Screenshot REQUIRED */


/* =========================================================
   ONE QUERY PER PDF HINT (MINI GUIDE)
   ========================================================= */


/* ---------- Query 1: Extract Month from order_date ---------- */
/*
   PDF Hint:
   Use EXTRACT(MONTH FROM order_date) for month.

   Purpose:
   Demonstrates extracting month from a date column.
*/
SELECT
    order_date,
    EXTRACT(MONTH FROM order_date) AS order_month
FROM orders;
/* 📸 Screenshot REQUIRED */


/* ---------- Query 2: Group Data by Year and Month ---------- */
/*
   PDF Hint:
   GROUP BY year/month.

   Purpose:
   Groups records by year and month for
   time-based analysis.
*/
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    COUNT(*) AS total_records
FROM orders
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date);
/* 📸 Screenshot REQUIRED */


/* ---------- Query 3: Calculate Monthly Revenue ---------- */
/*
   PDF Hint:
   Use SUM() for revenue.

   Purpose:
   Calculates total revenue for each month.
*/
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS monthly_revenue
FROM orders
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date);
/* 📸 Screenshot REQUIRED */


/* ---------- Query 4: Calculate Monthly Order Volume ---------- */
/*
   PDF Hint:
   COUNT(DISTINCT order_id) for volume.

   Purpose:
   Counts unique orders per month.
*/
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date);
/* 📸 Screenshot REQUIRED */


/* ---------- Query 5: Sort Results Using ORDER BY ---------- */
/*
   PDF Hint:
   Use ORDER BY for sorting.

   Purpose:
   Sorts monthly revenue in descending order.
*/
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS monthly_revenue
FROM orders
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    monthly_revenue DESC;
/* 📸 Screenshot REQUIRED */


/* ---------- Query 6: Limit Results for Specific Time Periods ---------- */
/*
   PDF Hint:
   Limit results for specific time periods.

   Purpose:
   Displays only the top 3 months by revenue.
*/
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS monthly_revenue
FROM orders
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    monthly_revenue DESC
LIMIT 3;
/* 📸 Screenshot REQUIRED */
