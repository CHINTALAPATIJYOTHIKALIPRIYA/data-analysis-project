-- Total Sales by Category

SELECT Category,
       SUM(Sales) AS Total_Sales
FROM data
GROUP BY Category
ORDER BY Total_Sales DESC;


-- Total Profit by Region

SELECT Region,
       SUM(Profit) AS Total_Profit
FROM data
GROUP BY Region
ORDER BY Total_Profit DESC;


-- Top 5 Sub-Categories by Sales

SELECT "Sub-Category",
       SUM(Sales) AS Total_Sales
FROM data
GROUP BY "Sub-Category"
ORDER BY Total_Sales DESC
LIMIT 5;


-- Loss-Making Sub-Categories

SELECT "Sub-Category",
       SUM(Profit) AS Total_Profit
FROM data
GROUP BY "Sub-Category"
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;


-- Impact of Discounts on Profit

SELECT Discount,
       SUM(Profit) AS Total_Profit
FROM data
GROUP BY Discount
ORDER BY Discount;