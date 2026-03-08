# Ecommerce-Sales-Analysis
End-to-end E-Commerce Sales Analysis project using Python (data cleaning), SQL (business analysis), and Power BI (interactive dashboard) to analyze revenue trends, product performance, and regional sales insights.The project includes data cleaning, business analysis, and dashboard visualization to support data-driven decision making.

Project Workflow:
Data Cleaning → Python
Business Analysis → SQL
Visualization → Power BI

Tools used:
Python – Data cleaning and preprocessing
SQL (MySQL) – Business analysis queries
Power BI – Interactive dashboard and visualization

Dataset Description:

The dataset contains 7,268 e-commerce transactions including information about:
Order ID
Order Date
Customer ID
Product Name
Product Category
City and Region
Pricing and Discount
Quantity
Revenue
Customer Rating
Payment Method

This dataset enables analysis of sales performance, customer preferences, and product demand.

Data Cleaning (Python):

The dataset was cleaned and prepared using Python and Pandas.
Steps performed:
Handled missing values using median and mode
Converted order_date to datetime format
Checked and removed duplicate records

Created new features:
discount_amount
order_month
order_year

These steps ensured the dataset was consistent and ready for analysis.

SQL Business Analysis:

SQL queries were used to answer important business questions such as:
Which product category generates the highest revenue
Which region contributes the most sales
What are the top selling products
Which payment methods are most commonly used
How revenue changes month by month
Which products perform best within each category

Power BI Dashboard:

An interactive Power BI dashboard was created to visualize business insights.

Dashboard Features:
Total Revenue KPI
Total Orders KPI
Total Units Sold KPI
Average Customer Rating

Visualizations:
Revenue by Product Category
Revenue by Region
Monthly Revenue Trend
Top 10 Products by Revenue
Payment Method Distribution

Key Insights:

Some important insights discovered from the analysis:

Electronics category generates the highest revenue
West region contributes the most sales
A small number of products generate a large portion of revenue
UPI and Debit Card are the most frequently used payment methods
Monthly revenue shows seasonal variation


Dashboard Preview:

<img width="1416" height="829" alt="image" src="https://github.com/user-attachments/assets/0404fe60-7547-4b8b-856b-92a10f7cb4ef" />

Project Files:
E-Commerce_sales_Analysis.ipynb     → Python data cleaning
Ecommerce_sales_data.sql            → SQL analysis queries
E-commerce_sales_analysis.pbix      → Power BI dashboard
E-Commerce-Sales-Performance-Analysis.pdf → Project report
dataset.csv                         → Dataset

Conclusion:

This project demonstrates how Python, SQL, and Power BI can be combined to perform an end-to-end data analysis workflow, transforming raw data into meaningful insights that support business decision making.
