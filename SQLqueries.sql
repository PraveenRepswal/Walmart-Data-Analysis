USE walmart_db;

SELECT * FROM walmart_data;

SELECT COUNT(*) FROM walmart_data;


-- Count payment methods and number of transactions by payment method
SELECT payment_method, COUNT(*) as number_of_payments, SUM(quantity) as total_quantity_sold 
FROM walmart_data
GROUP BY payment_method;

-- Identify the highest-rated category in each branch, Display the branch, category, and avg rating
SELECT Branch, category, AVG(rating) as avg_rating
FROM walmart_data
GROUP BY 1, 2
order by 1, 3 DESC;


-- Changing the date(text datatype) to date format
ALTER TABLE walmart_data
  CHANGE COLUMN `date` `raw_date` VARCHAR(10) NOT NULL;

ALTER TABLE walmart_data
  ADD COLUMN true_date DATE NULL;

UPDATE walmart_data
SET true_date = STR_TO_DATE(TRIM(`raw_date`), '%d/%m/%y');

-- The update part is getting some error


-- Determine the average, minimum, and maximum rating of categories for each city
SELECT 
	city,
    category,
    Min(rating) as min_rating,
    Max(rating) as max_rating,
    Avg(rating) as avg_rating
FROM walmart_data
group by city, category;



-- Calculate the total profit for each category
SELECT 
	category,
    sum(total)  as revenue,
	sum(total * profit_margin) as total_profit
FROM walmart_data
group by category