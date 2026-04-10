USE hw3;

DROP FUNCTION IF EXISTS DivideFloat;

DELIMITER //

CREATE FUNCTION DivideFloat(
value1 FLOAT, 
value2 FLOAT
) 
RETURNS FLOAT
NO SQL
DETERMINISTIC 
BEGIN
	DECLARE result FLOAT;
    
	IF value2 = 0 THEN 
        RETURN NULL;
    END IF;
	
	SET result = value1 / value2;
	RETURN result;
END //

DELIMITER ;

SELECT 
    id, 
    quantity, 
    DivideFloat(CAST(quantity AS FLOAT), 2.0) AS half_quantity
FROM order_details
WHERE quantity > 0;