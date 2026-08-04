CREATE DATABASE Sales_Data_Project;
USE Sales_Data_Project;

SELECT * 
FROM dbo.[Sales_Data_Project]

-- Total Sales Analysis
SELECT CAST(SUM(Sales_Amount) AS DECIMAL(18,2)) AS Total_Sales
FROM dbo.[Sales_Data_Project]

-- Total Profit Analysis
SELECT CAST(SUM(Profit) AS DECIMAL(18,2)) AS Total_Profit
FROM dbo.[Sales_Data_Project]

-- Sales Performance by Region
SELECT Region,
CAST(SUM(Sales_Amount) AS DECIMAL(10,2)) Total_Sales
FROM dbo.[Sales_Data_Project]
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Top Performing Sales Representatives
SELECT Sales_Rep,
CAST(SUM(Profit) AS DECIMAL(10,2)) Total_Profit
FROM dbo.[Sales_Data_Project]
GROUP BY Sales_Rep
ORDER BY Total_Profit DESC;

-- Average Discount Analysis
SELECT Product_Category,
CAST(AVG(Discount)AS DECIMAL(10,2)) AS Average_Discount
FROM dbo.[Sales_Data_Project]
GROUP BY Product_Category
ORDER BY Average_Discount DESC;

-- Sales Channel Analysis
SELECT Sales_Channel,
CAST(SUM(Sales_Amount) AS DECIMAL(10,2)) AS Total_Sales
FROM dbo.[Sales_Data_Project]
GROUP BY Sales_Channel;

-- Payment Method Analysis
SELECT Payment_Method,
COUNT(*) AS Total_Transactions
FROM dbo.[Sales_Data_Project]
GROUP BY Payment_Method
ORDER BY Total_Transactions DESC;

-- Most Profitable Region
SELECT TOP (3) Region,
CAST(SUM(Profit) AS DECIMAL(10,2)) Total_Profit
FROM dbo.[Sales_Data_Project]
GROUP BY Region
ORDER BY SUM (Profit) DESC;

-- Monthly Sales Trend Analysis
SELECT 
MONTH(Sale_Date) AS Sales_Month,
CAST(SUM(Sales_Amount) AS DECIMAL(10,2)) Monthly_Sales
FROM dbo.[Sales_Data_Project]
GROUP BY MONTH(Sale_Date)
ORDER BY Sales_Month;
