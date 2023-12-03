-- Task 1: Retrieve the total sales amount for each product category for a specific time period
SELECT
    pc.category_name,
    SUM(s.sales_amount) AS total_sales_amount
FROM
    sales s
    JOIN product p ON s.product_id = p.product_id
    JOIN product_category pc ON p.category_id = pc.category_id
WHERE
    s.transaction_date BETWEEN 'start_date' AND 'end_date'
GROUP BY
    pc.category_name;

-- Task 2: Calculate the average sales quantity by region for a particular product
SELECT
    r.region_name,
    AVG(s.sales_quantity) AS avg_sales_quantity
FROM
    sales s
    JOIN store st ON s.store_id = st.store_id
    JOIN region r ON st.region_id = r.region_id
    JOIN product p ON s.product_id = p.product_id
WHERE
    p.product_name = 'your_product_name'
GROUP BY
    r.region_name;


-- Task 3: Find the top five customers with the highest total sales amount
SELECT
    c.customer_id,
    c.customer_name,
    SUM(s.sales_amount) AS total_sales_amount
FROM
    sales s
    JOIN customer c ON s.customer_id = c.customer_id
GROUP BY
    c.customer_id, c.customer_name
ORDER BY
    total_sales_amount DESC
LIMIT 5;
