    Myntra_Fashion_Analysis_2024

-- Q1: the highest average rating by brand

SELECT title, AVG(rating) AS avg_rating
FROM products
GROUP BY title
ORDER BY avg_rating DESC LIMIT 5;

-- Q2: the minimum average discount by category

SELECT category, AVG(discount) AS avg_discount
FROM products
WHERE discount IS NOT NULL
GROUP BY category
ORDER BY avg_discount DESC LIMIT 5;

-- Q3:the most popular product by ratings_count

SELECT title, ratings_count
FROM products
ORDER BY ratings_count DESC LIMIT 3;

-- Q4: the highest average rating by category

SELECT category, AVG(rating) AS avg_rating
FROM products
GROUP BY category
ORDER BY avg_rating DESC LIMIT 5;

-- Q5: average final price per category

SELECT category, AVG(final_price) AS avg_final_price
FROM products
GROUP BY category
ORDER BY avg_final_price DESC LIMIT 5;

-- Q6: month having most orders

SELECT strftime('%m', order_date) AS month, COUNT(*) AS orders
FROM products
GROUP BY month
ORDER BY orders DESC LIMIT 5;

-- Q7: total products by price range

SELECT 
    CASE
        WHEN final_price < 1000 THEN 'Low'
        WHEN final_price < 3000 THEN 'Mid'
        ELSE 'High'
    END AS price_range,
    COUNT(*) AS total_products
FROM products
GROUP BY price_range;

-- Q8: the high discounted products by average rating

SELECT title, AVG(rating) AS avg_rating
FROM products
WHERE discount > 50
GROUP BY title
ORDER BY avg_rating DESC LIMIT 5;
