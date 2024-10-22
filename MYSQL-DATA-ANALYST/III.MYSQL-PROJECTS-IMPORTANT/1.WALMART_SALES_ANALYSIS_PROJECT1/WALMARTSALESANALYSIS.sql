-- MYSQL WALMART SALES ANALYSIS PROJECT -1:JULY2024
-- CREATE TABLE :
CREATE DATABASE IF NOT EXISTS WALMART;
USE WALMART;
-- Create a table :sales 
create table sales(
invoice_id VARCHAR(30) NOT NULL PRIMARY KEY,
    branch VARCHAR(5) NOT NULL,
    city VARCHAR(30) NOT NULL,
    customer_type VARCHAR(30) NOT NULL,
    gender VARCHAR(30) NOT NULL,
    product_line VARCHAR(100) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    tax_pct FLOAT(6,4) NOT NULL,
    total DECIMAL(12, 4) NOT NULL,
    date DATETIME NOT NULL,
    time TIME NOT NULL,
    payment VARCHAR(15) NOT NULL,
    cogs DECIMAL(10,2) NOT NULL,
    gross_margin_pct FLOAT(11,9),
    gross_income DECIMAL(12, 4),
    rating FLOAT(2, 1)
);
-- -------------------------------------------------------------------------------------------------
SELECT * FROM walmart.sales;
-- -------------------#Data cleaning :---------------------------------------------

-- -----------------------------# Feature engineering :---------------------------------------
-- time_of day:
SELECT
	time,
	(CASE
		WHEN `time` BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
        WHEN `time` BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
        ELSE "Evening"
    END) AS time_of_day
FROM sales;
-- ALTER TABLE ADD THIS TIME_OF _DAY COLUMN 
ALTER TABLE sales ADD COLUMN time_of_day VARCHAR(20);
-- -- For this to work turn off safe mode for update--
-- Edit > Preferences > SQL EditoR > scroll down and toggle safe mode(unclick)
-- Reconnect to MySQL: Query > Reconnect to server THEN run this update query 

UPDATE sales
SET time_of_day = (
	CASE
		WHEN `time` BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
        WHEN `time` BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
        ELSE "Evening"
    END
); # time_of_daycolumnadded with values 
-- ------Add day_name column:
SELECT
	date,
	DAYNAME(date)  # dayname():It returns the name of the day for a given date value.
FROM sales;
-- alter +add columnname day_name:
ALTER TABLE sales ADD COLUMN day_name VARCHAR(10);
-- Update set with day_name=dayname(date):
UPDATE sales
SET day_name = DAYNAME(date);

-- Add month_name column:
SELECT
	date,
	MONTHNAME(date) # This function that returns the name of the month for a given date value
FROM sales;
-- alter with add column month_name:
ALTER TABLE sales ADD COLUMN month_name VARCHAR(10);
-- Update set month_name valueof monthname(date)
UPDATE sales
SET month_name = MONTHNAME(date);
-- ADDED  new columns:time_of_day,day_name and month_name.
-- -------- Feature engineering done-------


-- III.---------------------------------------------
SELECT * FROM walmart.sales;
-- -- --------------------------------------------------------------------
-- ---------------------------- General questions ------------------------------
-- 1.How many unique cities does the data have?
-- -----------------------------------------------------------------------
SELECT distinct City FROM SALES;     # Yangon ,Mandalay ,Naypyitaw:3 cities 
-- 2. In which city is each branch?
SELECT 
	DISTINCT city,
    branch
FROM sales;
-- -------
SELECT 
	 city,
    branch
FROM sales;

-- General questions done ------------------------------------------------------
-- IV :
SELECT * FROM walmart.sales;
-- --------------------------------------------------------------------------------
-- ----------------------------II. Product:Related questions -------------------------------
-- ------------------------------------------------------------------------------------
-- 1. How many unique product lines does the data have?
SELECT DISTINCT product_line 
from sales;
# 6 unique product_line
SELECT count(DISTINCT product_line) from sales;  #6

-- 2. What is the most selling product line?
SELECT
	SUM(quantity) as qty,
    product_line
FROM sales
GROUP BY product_line
ORDER BY qty DESC;       # most selling product is Health & beauty =92

-- 3. What is the most common payment methods?
SELECT payment, count(payment) as cnt 
 FROM sales
 group by payment # Ewallet payment 
 order by cnt desc;  
 
select count(invoice_id) from sales; #74 data rows 
-- 4.What is the total revenue by month
SELECT
	month_name AS month,
	SUM(total) AS total_revenue
FROM sales
GROUP BY month_name 
ORDER BY total_revenue; -- March	8711.5455 
-- January	9277.9575
-- February	9543.2085
SELECT *FROM SALES;

-- 5.What month had the largest COGS?-- COGS to determine how much it costs Walmart to sell its products.
-- Direct cost to make or buy the product.:(units_price * quantity_sold)
SELECT
	month_name AS month,
	SUM(cogs) AS cogs
FROM sales
GROUP BY month_name 
ORDER BY cogs desc;

-- 6.What product line had the largest revenue?
select *from sales ;     
SELECT
	product_line,
	sum(total) as total_revenue
FROM sales
GROUP BY product_line
ORDER BY total_revenue DESC;        
-- 7.Which city has the largest revenue?
SELECT
	branch,
	city,
	SUM(total) AS total_revenue
FROM sales
GROUP BY city, branch 
ORDER BY total_revenue desc;  #Yangon

-- 8. What product line had the largest VAT?- VALUE ADDED TAX
SELECT
	product_line,
	AVG(tax_pct) as avg_tax
FROM sales
GROUP BY product_line
ORDER BY avg_tax DESC
LIMIT 1;  #SPORTS :22.648 has paid largest vat

/* SELECT
	product_line,
	AVG(VAT) as avg_tax
FROM sales
GROUP BY product_line
ORDER BY avg_tax DESC; */ #VAT column NOT PRESENT HERE .
select *FROM SALES;


-- 9.-- Which branch sold more products than average product sold?--
select branch ,
sum(quantity) as qty 
from sales 
GROUP BY branch
HAVING SUM(quantity) > (SELECT AVG(quantity) FROM sales); #A BRANCH 

-- 10. What is the most common product line by gender?--
select product_line,gender,
count(gender) as total_cnt 
from sales 
GROUP BY product_line,gender
ORDER BY total_cnt desc
#limit 1;  # health and beauty ,gender male =9

/*-- use window function to get accurate results:
SWITH RankedProductLines AS (
    SELECT product_line, gender, COUNT(*) as total_cnt,
           ROW_NUMBER() OVER (PARTITION BY gender ORDER BY COUNT(*) DESC) as rank
    FROM sales
    GROUP BY product_line, gender
)
SELECT product_line, gender, total_cnt
FROM RankedProductLines
WHERE rank = 1;*/

-- 11.-- What is the average rating of each product line
SELECT
product_line,
	ROUND(AVG(rating), 2) as avg_rating
FROM sales
GROUP BY product_line
ORDER BY avg_rating DESC;

-- 12.-- Fetch each product line and add a column to those product --
-- line showing "Good", "Bad". Good if its greater than average sales?  

-- PRDUCT RELATED QUESTIONS DONE --------------------------

-- --------------------------------------------------------------------
-- --------------------------------------------------------------------
-- - -------------------------- III.Sales:Related questions ------------
-- --------------------------------------------------------------------
-- 1. Number of sales made in each time of the day per weekday?
 SELECT *from Sales;
 SELECT time_of_day ,
 count(*) as total_sales
 FROM sales 
GROUP BY time_of_day 
ORDER BY total_sales DESC;  
-- Evening experience most sales than afternnon and morning 
-- and 
SELECT
	time_of_day,
	COUNT(*) AS total_sales
FROM sales
WHERE day_name = "Sunday"
GROUP BY time_of_day 
ORDER BY total_sales DESC;  #on sunday afternnon time more sales

 -- 2. -- Which of the customer types brings the most revenue?
 SELECT
	customer_type,
	SUM(total) AS total_revenue
FROM sales
GROUP by customer_type
ORDER BY total_revenue DESC; 
-- MEMBER gives more revenue ,not significant difference 

-- 3. Which city has the largest tax/VAT percent?
SELECT
	city,
    ROUND(AVG(tax_pct), 2) AS avg_tax_pct
FROM sales
GROUP BY city 
ORDER BY avg_tax_pct DESC;

-- 4. - Which customer type pays the most in VAT?
SELECT
	customer_type,
	AVG(tax_pct) AS total_tax
FROM sales
GROUP BY customer_type
ORDER BY total_tax DESC;

-- Sales related questions end  -------------------------------
-- --------------------------------------------------------------------
-- --------------------------------------------------------------------
-- --------------------------------------------------------------------
-- - -------------------------- IV.Customers:Related questions ------------
-- ---------------------------------------------------------------------
-- 1.How many unique customer types does the data have?
SELECT distinct customer_type 
FROM SALES; #
-- 2 TYPES : Member & Normal 

-- 2.How many unique payment methods does the data have?
SELECT DISTINCT payment FROM SALES; 
-- 3types of unique payemnts 

-- 3. What is the most common customer type?
SELECT
	customer_type,
	count(*) as count_common
FROM sales
GROUP BY customer_type
ORDER BY count_common DESC;
-- Most common customers are :Member type 

-- 4. Which customer type buys the most?
SELECT
	customer_type,
    COUNT(*)
FROM sales
GROUP BY customer_type ;

-- 5.  What is the gender of most of the customers?
SELECT
	gender,
	COUNT(*) as gender_cnt
FROM sales
GROUP BY gender
ORDER BY gender_cnt DESC;  #MALE

-- 6.  What is the gender distribution per branch?
SELECT
	gender,
	COUNT(*) as gender_cnt
FROM sales
WHERE branch = "C"
GROUP BY gender
ORDER BY gender_cnt DESC;

-- 7. Which time of the day do customers give most ratings?
SELECT
	time_of_day,
	AVG(rating) AS avg_rating
FROM sales
GROUP BY time_of_day
ORDER BY avg_rating DESC;  
-- At morning time customer rating little more not too much differences,
--  Looks like time of the day does not really affect the rating

-- 8. Which time of the day do customers give most ratings per branch?
SELECT time_of_day ,
branch ,
avg(rating) as avg_ratings
FROM sales
 WHERE branch = "B"
GROUP BY time_of_day
ORDER BY avg_ratings DESC;
-- Branch A and C are doing well in ratings, branch B needs to do a 
-- little more to get better ratings.

-- 9. Which day fo the week has the best avg ratings?
SELECT
	day_name,
	AVG(rating) AS avg_rating
FROM sales
GROUP BY day_name 
ORDER BY avg_rating DESC;
-- SUN, Saturday and Friday are the top best days for good ratings
-- why is that the case, how many sales are made on these days?

-- - Which day of the week has the best average ratings per branch?
SELECT 
	day_name,
	COUNT(day_name) total_sales
FROM sales
WHERE branch = "B"
GROUP BY day_name
ORDER BY total_sales DESC;
-- Sunday &Saturday has more salesof C branch 
-- Sunday &friday  has more sales of A branch 
-- Only on Friday B branch has  sales more . 
