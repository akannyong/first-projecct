-- Q: What color of vehicle was stolen the most?

-- A: Let's query the stolen vehicle dataset to find out...

SELECT TOP (1) color AS most_stolen_color,
	   COUNT(color) AS number_stolen
	 FROM stolen_vehicles
	GROUP BY color
	ORDER BY COUNT(color) DESC;