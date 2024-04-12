-- Find top product size sold
SELECT
size,
SUM(Quantity) as TotalQuantity
FROM
OrderItem
LEFT OUTER JOIN
Product
ON
OrderItem.ProductID = Product.ProductID
GROUP BY
size
ORDER BY
TotalQuantity DESC