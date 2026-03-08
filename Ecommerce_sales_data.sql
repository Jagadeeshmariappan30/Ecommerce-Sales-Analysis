CREATE DATABASE ecommerce_analysis;
USE ecommerce_analysis;
show tables from ecommerce_analysis;

select * from ecommerce_sales limit 10;

# 1) Which product category generates the highest revenue?

select category, round(sum(revenue),2) as total_Revenue from ecommerce_sales 
group by category order by total_Revenue desc;

# Insight : Electronics generates the highest revenue among all categories, indicating strong demand for electronic products.

# 2) Which region contributes the highest sales?

select region, round(sum(revenue),2) as total_Revenue from ecommerce_sales 
group by region order by total_Revenue desc;

# Insight : The West region contributes the highest revenue, showing strong sales performance compared to other regions.

# 3) Which cities generate the highest revenue?

SELECT city, ROUND(SUM(revenue),2) AS total_revenue FROM ecommerce_sales
GROUP BY city ORDER BY total_revenue DESC limit 10;

# Insight: A few cities generate significantly higher revenue, indicating key markets driving business growth.

# 4) What are the top-selling products?

SELECT product_name, SUM(quantity) AS total_units_sold FROM ecommerce_sales
GROUP BY product_name ORDER BY total_units_sold DESC;

# Insight: Certain products dominate total units sold, suggesting that a small number of popular products drive a large portion of overall sales.

# 5) Which payment method is most commonly used?

SELECT payment_method, count(*) as total_orders from ecommerce_sales
GROUP BY payment_method ORDER BY total_orders DESC;

# Insight: Customers show a clear preference for certain payment methods, which can help businesses prioritize convenient and widely used payment options.

# 6)How does revenue change month by month?

select order_month, ROUND(SUM(revenue),2) AS monthly_revenue FROM ecommerce_sales
GROUP BY order_month ORDER BY order_month;

# Insight: Revenue varies across months, indicating possible seasonal sales patterns that businesses can use for planning marketing campaigns and inventory.

# 7) Which product category has the highest customer ratings?

SELECT category, ROUND(AVG(rating),2) AS average_rating FROM ecommerce_sales
GROUP BY category ORDER BY average_rating DESC;

# Insight: Some categories receive higher average ratings, indicating better customer satisfaction and product quality in those categories.

# 8) Which products perform best inside each category?

SELECT  category, product_name, round(SUM(revenue),2) AS total_revenue,
RANK() OVER(PARTITION BY category ORDER BY SUM(revenue) DESC) AS product_rank
FROM ecommerce_sales
GROUP BY category, product_name;

# Insight: Within each category, a few products generate the majority of revenue, highlighting key products that drive category performance.

# 9) Which cities generate significantly high sales revenue?

SELECT city,ROUND(SUM(revenue),2) AS total_revenue
FROM ecommerce_sales GROUP BY city
HAVING SUM(revenue) > 7000000
ORDER BY total_revenue DESC;

# Insight: Only a few cities generate very high revenue, identifying strong markets where the company should continue investing and expanding.

# 10) What percentage of total revenue comes from each product category?

SELECT category, ROUND(SUM(revenue),2) AS category_revenue,
    ROUND(
        SUM(revenue) * 100 /
        (SELECT SUM(revenue) FROM ecommerce_sales),
        2
    ) AS revenue_percentage
FROM ecommerce_sales
GROUP BY category
ORDER BY category_revenue DESC;

# Insight: Revenue contribution analysis shows which categories account for the largest share of total sales, helping businesses prioritize high-performing product segments.