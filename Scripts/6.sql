-- TRANSFORMATIONS

-- Numeric Transformations
SELECT 
	unit_price * 0.90 AS discounted_price,
    unit_price + 10 as taxed_price,
    unit_price / 10 as fractioned_price,
    ROUND(unit_price,1) as rounded_price,
    unit_price * unit_price as multiply_price
FROM 
	dim_product;