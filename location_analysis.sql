-- ================================================
-- GIS Location Analysis with SQL
-- Author: nmujtaba01-debug
-- GitHub: github.com/nmujtaba01-debug
-- Platform: W3Schools Northwind Database
-- Description: Location data analysis using SQL
-- ================================================

-- Q1: Total number of customers
SELECT COUNT(*) AS Total_customers
FROM Customers;

-- Q2: Customers from cities starting with B
SELECT CustomerName, City
FROM Customers
WHERE City LIKE 'B%'
ORDER BY City ASC;

-- Q3: Cities with more than 1 customer
SELECT City,
COUNT(*) AS No_of_customers
FROM Customers
GROUP BY City
HAVING COUNT(*) > 1
ORDER BY No_of_customers DESC;

-- Q4: Customers with complete location data
SELECT CustomerName, City, Country, PostalCode
FROM Customers
WHERE PostalCode IS NOT NULL
ORDER BY CustomerName ASC;

-- Q5: Top 3 countries by customer count
SELECT TOP 3 Country,
COUNT(*) AS Total_customers
FROM Customers
GROUP BY Country
ORDER BY COUNT(*) DESC;

-- Q6: Customers from countries starting with G or F
SELECT CustomerName, City, Country
FROM Customers
WHERE Country LIKE 'G%' OR Country LIKE 'F%'
ORDER BY Country ASC, City ASC;

-- Q7: Countries with more than 3 customers
SELECT Country,
COUNT(*) AS No_of_customers
FROM Customers
GROUP BY Country
HAVING COUNT(*) > 3;

-- Q8: All customers sorted by Country then City
SELECT CustomerName, City, Country
FROM Customers
ORDER BY Country ASC, City ASC;
