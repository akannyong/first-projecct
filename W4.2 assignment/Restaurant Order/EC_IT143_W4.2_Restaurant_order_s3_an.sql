-- Q: What is the most ordered item in the restaurant database?

-- A: Let's query the restaurant database and find out...

SELECT TOP (1) m.item_name,
	  COUNT(o.item_id) AS order_count
	  FROM dbo.order_details AS o
	  JOIN dbo.menu_items AS m
	    ON o.item_id = m.menu_item_id
	 GROUP BY m.item_name
	 ORDER BY COUNT(o.item_id) DESC
