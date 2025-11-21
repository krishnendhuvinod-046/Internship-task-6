# Internship-task-6
## 📌 Project Overview
The objective was to analyze sales trends by calculating **monthly revenue** and **order volume** from a dataset of online sales orders.
The analysis focuses on aggregating data by time periods (Year and Month) to identify sales patterns.

## 🛠️ Tools & Technologies Used
* **Database:** MySQL
* **IDE:** Visual Studio Code (with MySQL Database Client extension)
* **Language:** SQL
* **Dataset:** `online_sales.csv`

## 📂 Dataset & Schema
The dataset contains 240 records of sales transactions. To align with the task requirements, the CSV columns were mapped to a standardized SQL schema:

| CSV Header       | SQL Column Name | Data Type       | Description                  |
| :--------------- | :-------------- | :-------------- | :--------------------------- |
| order_id         | `order_id`      | `INT`           | Unique identifier for orders |
| order_date       | `order_date`    | `DATE`          | Date of the transaction      |
| amount           | `amount`        | `DECIMAL(10,2)` | Revenue generated            |
| category         | `category`      | `VARCHAR(50)`   | Category of the item         |
| ...              | ...             | ...             | ...                          |

## 📝 Process
1.  **Database Setup:** Created a database named `task`.
2.  **Table Creation:** Designed a table `online_sales` with appropriate data types (using `DECIMAL` for currency and `DATE` for time).
3.  **Data Import:** Imported the raw `online_sales.csv` data into the MySQL table, mapping specific headers to the required column names.
4.  **Analysis:** Wrote a SQL query using aggregate functions:
    * `EXTRACT(YEAR/MONTH)` to group data by time.
    * `SUM(amount)` to calculate Total Revenue.
    * `COUNT(DISTINCT order_id)` to calculate Order Volume.

## 📊 SQL Analysis Script
The following query was used to generate the insights:

```sql
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
```

📈 Results
The analysis successfully grouped the sales data. Below is a screenshot of the query output:

<img width="889" height="450" alt="output" src="https://github.com/user-attachments/assets/058e5c81-cd45-4829-ba53-a12cb0dcca37" />


💡 Key Findings
The data was successfully aggregated by month.

Total Revenue varies significantly across different months.

Order Volume tracks the number of unique transaction IDs per period.
