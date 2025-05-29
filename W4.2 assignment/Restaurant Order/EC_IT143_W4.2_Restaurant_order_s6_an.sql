-- Q: What is the most ordered item in the restaurant dataset?

-- A: Let's query the restaurant dataset and find out...

-- 1) Reload data

TRUNCATE TABLE dbo.t_restaurant_max_order;

INSERT INTO dbo.t_restaurant_max_order
	 SELECT v.item_name,
		    v.order_count
	   FROM dbo.v_restaurant_max_order AS v;

-- 2) Review results

SELECT t.*
	FROM dbo.t_restaurant_max_order AS t;