USE hw3;

SELECT 
    temp_table.order_id, 
    AVG(temp_table.quantity) AS average_quantity
FROM (
    SELECT order_id, quantity 
    FROM order_details 
    WHERE quantity > 10
) AS temp_table
GROUP BY temp_table.order_id;