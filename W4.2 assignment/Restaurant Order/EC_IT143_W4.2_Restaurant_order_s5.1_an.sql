-- Q: What is the most ordered item in the restaurant database?

-- A: Let's query the restaurant database and find out...

SELECT v.item_name,
	   v.order_count
  INTO dbo.t_restaurant_max_order
  FROM dbo.v_restaurant_max_order AS v;

 