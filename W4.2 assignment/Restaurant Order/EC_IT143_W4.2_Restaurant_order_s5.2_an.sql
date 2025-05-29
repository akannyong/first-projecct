DROP TABLE IF EXISTS dbo.t_restaurant_max_order;
GO

CREATE TABLE dbo.t_restaurant_max_order (
		item_name VARCHAR(50) NOT NULL PRIMARY KEY,
		order_count int NOT NULL
		);
		GO