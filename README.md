# 📊 Task 6: Sales Trend Analysis Using Aggregations

## 📌 Objective
The objective of this task is to analyze **monthly sales trends** by calculating:
- Monthly revenue  
- Monthly order volume  

This analysis is performed using **SQL aggregation functions** and **time-based grouping**, as specified in the Task 6 PDF.

---

## 🛠 Tools Used
- **Database:** MySQL  
- **Interface:** MySQL Workbench  
- **Language:** SQL  

---

## 🗂 Dataset Description
The task references the following dataset structure:

- **Database:** `online_sales`  
- **Table:** `orders`  
- **Columns:**  
  - `order_date` – Date of the order  
  - `amount` – Revenue generated from the order  
  - `product_id` – Product identifier  
  - `order_id` – Unique order identifier (used for order volume calculation)

**Note:**  
No dataset file was provided with the task. Therefore, a **dummy dataset** was created following the given schema to demonstrate the required SQL concepts.

---

## 🧱 Table Structure
`orders (order_id INT, order_date DATE, amount DECIMAL(10,2), product_id INT)`

---

## 📈 SQL Implementation Overview
The SQL implementation follows all hints provided in the task’s **Mini Guide**:

- Extracting month and year from `order_date`
- Grouping data by year and month
- Calculating monthly revenue using `SUM(amount)`
- Calculating monthly order volume using `COUNT(DISTINCT order_id)`
- Sorting results using `ORDER BY`
- Limiting output to specific periods using `LIMIT`

Each query was executed separately in **MySQL Workbench**, and screenshots were captured after execution.

---

## 🧠 Key SQL Concepts Demonstrated
- `EXTRACT()` for date components  
- `GROUP BY` for aggregation  
- `SUM()` for revenue calculation  
- `COUNT(DISTINCT ...)` for order volume  
- `ORDER BY` for sorting results  
- `LIMIT` for restricting output  

---

## 📊 Outcome
- Successfully analyzed monthly revenue trends  
- Identified top-performing months by sales  
- Demonstrated correct use of SQL aggregation and grouping techniques  
- All results align with the task requirements and provided hints  

---

## 🎤 Presentation (Canva)
A presentation explaining the task, SQL queries, results, and insights was created using Canva.

**Presentation Link:**  

https://www.canva.com/design/DAG74OmdfNY/F4bZD7AmkLtSiRspHcMz8g/edit?utm_content=DAG74OmdfNY&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton

---

## 📁 Repository Contents
- `task6_sales_trend_analysis.sql` – SQL script containing all queries  
- `screenshots/` – Query execution screenshots  
- `README.md` – Task documentation  

---

## ✅ Conclusion
This task demonstrates how SQL aggregation functions can be used to analyze time-based sales trends effectively. By following the provided hints and using a structured approach, meaningful insights were derived from the sales data.


