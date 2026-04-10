USE hw3;

SELECT @@version;

WITH temp AS (
    SELECT order_id, quantity 
    FROM order_details 
    WHERE quantity > 10
)
SELECT 
    order_id, 
    AVG(quantity) AS average_quantity
FROM temp
GROUP BY order_id;