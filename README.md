# Walmart Sales Performance Analysis using Advanced MySQL

## Overview

This project focuses on analyzing sales data from Walmart stores using advanced SQL techniques. The objective was to uncover business insights related to store performance, product profitability, customer behavior, and sales trends. The analysis was performed using MySQL, working with data on transactions, customers, products, and payments.

## Objective

To help Walmart improve decision-making through data-driven insights by answering key business questions like:
- Which branch is growing the fastest?
- What product lines are most profitable?
- Who are the top customers?
- Which days drive the most sales?
- What is the impact of customer type, gender, and payment method on sales?

## Tools Used

- MySQL (Advanced SQL queries)
- Tableau / PowerPoint (for visualization & presentation)
- Walmart transactional dataset (simulated)

---

## Key Analyses Performed

### 1. **Top Branch by Sales Growth Rate**
Calculated total monthly sales for each branch and identified which branch showed the highest average growth rate over time.

### 2. **Most Profitable Product Line by Branch**
Computed profit as `gross income - cost of goods sold (COGS)` and identified the top-performing product line for each branch.

### 3. **Customer Segmentation by Spending**
Segmented customers into:
- High spenders (> ₹1000)
- Medium spenders (₹500–₹1000)
- Low spenders (< ₹500)

### 4. **Anomaly Detection in Transactions**
Detected unusually high or low transactions by comparing individual sales to average sales per product line, using thresholds (e.g., 1.5x and 0.5x the average).

### 5. **Most Popular Payment Method by City**
Identified which payment method (cash, credit, mobile) is most frequently used in each city.

### 6. **Monthly Sales Distribution by Gender**
Analyzed how total monthly sales vary between male and female customers using `SUM()` and date grouping.

### 7. **Best Product Line by Customer Type**
Compared product preferences between "Members" and "Normal Customers" by analyzing total sales and gross income by product line.

### 8. **Repeat Customer Identification**
Used `DATEDIFF` and self-joins to find customers who made another purchase within 30 days of their last transaction.

### 9. **Top 5 Customers by Sales Volume**
Ranked customers based on their total sales contribution and identified the top 5 most valuable customers.

### 10. **Sales Trends by Day of the Week**
Used `DAYNAME()` to analyze which weekday consistently generated the highest sales.

---

## Key Insights

- **Branch A** showed the highest sales growth over time.
- **Electronics** emerged as the most profitable product line across branches.
- **Saturday** recorded the highest total sales compared to other weekdays.
- **Members** tend to prefer certain high-margin products more than normal customers.
- **Credit Card** usage was the most dominant payment method in urban locations.
- **Repeat customers** made up a significant portion of total revenue in some segments.

---

## Conclusion

This project provided valuable insights into Walmart’s sales dynamics using structured SQL queries and logical data breakdown. The findings can support strategic decisions in areas such as branch management, inventory planning, customer engagement, and targeted marketing.

## Author

**Suraj Dhondiyal**  
SQL Project – Sales Data Analysis  
