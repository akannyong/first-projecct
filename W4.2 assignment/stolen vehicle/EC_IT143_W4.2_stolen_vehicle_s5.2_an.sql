DROP TABLE IF EXISTS dbo.t_vehicle_max_color;
GO

CREATE TABLE dbo.t_vehicle_max_color (
		most_stolen_color VARCHAR(50) NOT NULL PRIMARY KEY,
		number_stolen int NOT NULL
		);
		GO