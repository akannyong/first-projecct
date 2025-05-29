-- Q: What color of vehicle was stolen the most?

-- A: Let's query the stolen vehicle dataset to find out...

SELECT v.most_stolen_color,
	   v.number_stolen
	INTO dbo.t_vehicle_max_color
	FROM dbo.v_vehicle_max_color AS v;