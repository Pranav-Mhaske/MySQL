-- WINDOW FUNCTIONS
-- 1)
SELECT
	*,
    SUM(unit_price) OVER(ORDER BY launch_date)
FROM 
	dim_product;

-- 2) FRAMES
SELECT 
	*,
    SUM(unit_price) OVER(ORDER BY launch_date ROWS BETWEEN unbounded preceding AND current row)
FROM 
	dim_product;

SELECT 
	*,
    SUM(unit_price) OVER(ORDER BY launch_date ROWS BETWEEN unbounded preceding AND unbounded following)
FROM 
	dim_product;

-- unbounded preceding means all the previous values till my current row
-- unbounded following means all the next values from my current row


-- RANKING
-- 1)
SELECT 
	unit_price,
    ROW_NUMBER() OVER(ORDER BY unit_price) AS 'row_number',
    RANK() OVER(ORDER BY unit_price) AS 'rank',
    DENSE_RANK() OVER(ORDER BY unit_price) AS 'dense_rank'
FROM 
	dim_product;

-- 2)
SELECT 
	unit_price,
    category,
    ROW_NUMBER() OVER(PARTITION BY category ORDER BY unit_price) AS 'row_number',
    RANK() OVER(PARTITION BY category ORDER BY unit_price) AS 'rank',
    DENSE_RANK() OVER(PARTITION BY category ORDER BY unit_price) AS 'dense_rank'
FROM 
	dim_product

-- Row Number will give a unique number to each row, even if there are ties in the unit_price.
-- Rank will give the same rank to rows with the same unit_price, but it will skip the next rank(s) for the following rows. For example, if two rows are tied for rank 1, the next rank will be 3.
-- Dense Rank will give the same rank to rows with the same unit_price, but it will not skip any ranks for the following rows. For example, if two rows are tied for rank 1, the next rank will be 2.