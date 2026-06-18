--1.Display all records--
select *from sales_data;
-- 2. Total Number of Orders
SELECT COUNT(*) AS Total_Orders
FROM sales_data;
-- 3. Total Revenue
SELECT SUM(TotalPrice) AS Total_Revenue
FROM sales_data;
-- 4. Average Order Value
SELECT AVG(TotalPrice) AS Average_Order_Value
FROM sales_data;
-- 5. Revenue by Product
SELECT Product, SUM(TotalPrice) AS Revenue
FROM sales_data
GROUP BY Product;
-- 6. Orders by Payment Method
SELECT PaymentMethod, COUNT(*) AS Orders
FROM sales_data
GROUP BY PaymentMethod;
-- 7. Orders by Status
SELECT OrderStatus, COUNT(*) AS Orders
FROM sales_data
GROUP BY OrderStatus;
-- 8. High Value Orders
SELECT *
FROM sales_data
WHERE TotalPrice > 1000;