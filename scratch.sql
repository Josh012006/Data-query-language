SELECT * 
FROM Customer;

SELECT product_name, category 
FROM Product
WHERE (Price >= 5000) AND (Price <= 10000);

SELECT *
FROM Product 
ORDER BY Price DESC;

SELECT Product_id, COUNT(*), AVG(total_amount), MAX(total_amount), MIN(total_amount)
FROM Orders
GROUP BY Product_id;

SELECT Customer_id 
FROM Orders
WHERE (quantity > 2);

SELECT COUNT(*)
FROM Orders
WHERE (EXTRACT(YEAR FROM OrderDate) = 2020)
GROUP BY (EXTRACT (MONTH FROM OrderDate));

SELECT Product.product_name, Customer.customer_Name, Orders.OrderDate
FROM Orders
INNER JOIN Product ON (Product.Product_id = Orders.Product_id)
INNER JOIN Customer ON (Customer.Customer_id = Orders.Customer_id);

SELECT *
FROM Orders
WHERE OrderDate <= (05/01/2024);

SELECT Customer_id 
FROM Customer
MINUS
SELECT Customer_id
FROM Orders;