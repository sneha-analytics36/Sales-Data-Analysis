# Sales-Data-Analysis & Executive Dashboard
An end-to-end sales analytics project covering Excel data cleaning, performing exploratory analytics in SQL Server (SSMS) and an interactive Power BI dashboard.

---

## Data Pipeline & Tech Stack

* **Data Cleaning & Structuring:** MS Excel (`Sales_Data_Analysis.xlsx`)
* **Database Querying & Analytics:** MS SQL Server (`Sales_Data_Analysis.sql`)
* **Visualization & Reporting:** Power BI

---

## SQL Analytics & Key Queries

The following SQL queries were executed in MS Excel to extract core business metrics, regional performnance and analyze customer behavior patterns:

### 1. Total Sales & Profit Analysis (KPIs) 
```sql
-- Total Sales Analysis
SELECT CAST(SUM(Sales_Amount) AS DECIMAL(18,2)) AS Total_Sales
FROM dbo.[Sales_Data_Project]; 

-- Total Profit Analysis
SELECT CAST(SUM(Profit) AS DECIMAL(18,2)) AS Total_Profit
FROM dbo.[Sales_Data_Project]
```

### 2. Regional Sales Breakdown 
```sql
-- Sales Performance by Region
SELECT Region,
CAST(SUM(Sales_Amount) AS DECIMAL(10,2)) AS Total_Sales
FROM dbo.[Sales_Data_Project]
GROUP BY Region
ORDER BY Total_Sales DESC;
```

### 3. Payment Method Analysis
```sql
-- Payment Method Analysis
SELECT Payment_Method,
COUNT(*) AS Total_Transactions
FROM dbo.[Sales_Data_Project]
GROUP BY Payment_Method
ORDER BY Total_Transactions DESC;
```

### 4. Monthly Trend Analysis
```sql
-- Monthly Sales Trend Analysis
SELECT 
MONTH(Sale_Date) AS Sales_Month,
CAST(SUM(Sales_Amount) AS DECIMAL(10,2)) Monthly_Sales
FROM dbo.[Sales_Data_Project]
GROUP BY MONTH(Sale_Date)
ORDER BY Sales_Month;
``` 
