-- Task 1: Retrieve the total sales amount for each product category for a specific time period
SELECT ProductCategory, SUM(SalesAmount) AS TotalSales
FROM YourSalesTable
WHERE Date >= 'start_date' AND Date <= 'end_date'
GROUP BY ProductCategory;

-- Task 2: Calculate the average sales quantity by region for a particular product
SELECT Region, AVG(SalesQuantity) AS AvgSalesQuantity
FROM YourSalesTable
WHERE Product = 'your_product'
GROUP BY Region;

-- Task 3: Find the top five customers with the highest total sales amount
SELECT CustomerID, SUM(SalesAmount) AS TotalSales
FROM YourSalesTable
GROUP BY CustomerID
ORDER BY TotalSales DESC
LIMIT 5;
