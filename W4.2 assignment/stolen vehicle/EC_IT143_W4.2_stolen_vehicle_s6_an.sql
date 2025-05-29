-- Q: What color of vehicle was stolen the most?

-- A: Let's query the stolen vehicle dataset to find out...

-- 1) Reload data

TRUNCATE TABLE dbo.t_vehicle_max_color;


INSERT INTO dbo.t_vehicle_max_color
	  SELECT v.most_stolen_color,
			 v.number_stolen
	   FROM dbo.v_vehicle_max_color AS v;

-- 2) Review results

SELECT t.*
	FROM dbo.t_vehicle_max_color AS t;