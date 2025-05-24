#my database name is project1 and my table name is walmart

create database project1;
use project1;
select * from walmart;

##Task 1: Identifying the Top Branch by Sales Growth Rate 

SELECT 
    Branch, 
    SUM(Total) AS TotalSales, 
    MONTH(Date) AS Month, 
    YEAR(Date) AS Year
FROM 
    walmart
GROUP BY 
    Branch, Month, Year
ORDER BY 
    TotalSales DESC;



##Task 2: Finding the Most Profitable Product Line for Each Branch


SELECT 
    Branch, 
    Product_line, 
    SUM(Gross_Income - COGS) AS Profit
FROM 
    project1.walmart
GROUP BY 
    Branch, Product_line
ORDER BY 
    Profit DESC;
    
    
    
    
    
 #Task 3: Analyzing Customer Segmentation Based on Spending   
    
    SELECT 
    Customer_ID,
    SUM(Total) AS Total_Spending,
    CASE
        WHEN SUM(Total) > 1000 THEN 'High'
        WHEN SUM(Total) BETWEEN 500 AND 1000 THEN 'Medium'
        ELSE 'Low'
    END AS Spending_Category
FROM 
    project1.walmart
GROUP BY 
    Customer_ID;
    
    
    
 #Task 4: Detecting Anomalies in Sales Transactions 
  
  
  WITH avg_sales AS (
    SELECT 
        Product_line,
        AVG(Total) AS Avg_Sales
    FROM 
        project1.walmart
    GROUP BY 
        Product_line
)
SELECT 
    w.Invoice_ID,
    w.Product_line,
    w.Total,
    a.Avg_Sales,
    CASE
        WHEN w.Total > a.Avg_Sales * 1.5 OR w.Total < a.Avg_Sales * 0.5 THEN 'Anomaly'
        ELSE 'Normal'
    END AS Anomaly_Status
FROM 
    project1.walmart w
JOIN 
    avg_sales a ON w.Product_line = a.Product_line;
    
    
    
#Task 5: Most Popular Payment Method by City    
    
    
    
    SELECT 
    City,
    Payment,
    COUNT(*) AS Number_of_Transactions
FROM 
    project1.walmart
GROUP BY 
    City, Payment
ORDER BY 
    City, Number_of_Transactions DESC;
    
    
    
    
#Task 6: Monthly Sales Distribution by Gender

SELECT 
    YEAR(Date) AS Year,
    MONTH(Date) AS Month,
    Gender,
    SUM(Total) AS Total_Sales
FROM 
    project1.walmart
GROUP BY 
    Year, Month, Gender
ORDER BY 
    Year, Month, Gender;


#Task 7: Best Product Line by Customer Type


SELECT 
    Customer_type, 
    Product_line, 
    SUM(Gross_Income) AS Total_Income
FROM 
    project1.walmart
GROUP BY 
    Customer_type, Product_line
ORDER BY 
    Customer_type, Total_Income DESC;
    
    
  #Task 8: Identifying Repeat Customers  
    
 SELECT 
    DISTINCT a.Customer_ID
FROM 
    walmart a
JOIN 
    walmart b 
    ON a.Customer_ID = b.Customer_ID 
    AND DATEDIFF(a.Date, b.Date) <= 30
WHERE 
    a.Invoice_ID != b.Invoice_ID;



#Task 9: Finding Top 5 Customers by Sales Volume

 
SELECT 
    Customer_ID, 
    SUM(Total) AS Total_Sales
FROM 
    project1.walmart
GROUP BY 
    Customer_ID
ORDER BY 
    Total_Sales DESC
LIMIT 5;




#Task 10: Analyzing Sales Trends by Day of the Week

SELECT 
    DAYNAME(Date) AS Day_of_Week, 
    SUM(Total) AS Total_Sales
FROM 
    project1.walmart
GROUP BY 
    Day_of_Week
ORDER BY 
    Total_Sales DESC;
    
    
  
    
  