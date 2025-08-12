📊 Sales Trend Analysis
----------------------
1️⃣ Introduction
------------------
This project performs a Sales Trend Analysis using SQL queries and generates a PDF report summarizing:

Monthly Revenue & Order Volume

Top 3 Months by Revenue

The goal is to identify sales patterns, seasonal peaks, and high-performing months to help in business decision-making.

2️⃣ Data Description
--------------------------
The dataset contains online retail transactions with fields such as:

order_date → Date of purchase

price → Price per unit

quantity → Number of units sold

category_name → Product category

payment_method → Mode of payment

city, gender, age, review_score → Customer demographics and feedback

3️⃣ Analysis Performed
--------------------------
A. Monthly Revenue & Order Volume
Groups data by year and month.

Calculates:
--------------

Monthly Revenue = SUM(price * quantity)

Order Volume = Count of unique orders.

Purpose: Detect month-to-month performance changes.

B. Top 3 Months by Revenue
Ranks months in descending revenue order.

Purpose: Identify peak sales periods for targeted promotions.

4️⃣ Technologies Used
------------------------
PostgreSQL → Data storage & analysis

6️⃣ Example Insights from This Data
------------------------------------
December 2024 had the highest revenue (₹66,331.95), likely due to holiday season sales.

Sales dipped in March 2025, suggesting potential off-season effects.

A spike in August 2024 indicates possible promotional activity or product launch.
