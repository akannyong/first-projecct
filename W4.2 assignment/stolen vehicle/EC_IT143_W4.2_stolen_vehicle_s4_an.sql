DROP VIEW IF EXISTS dbo.v_vehicle_max_color;
GO

CREATE VIEW dbo.v_vehicle_max_color
AS

/*****************************************************************************************************************
NAME:    dbo.v_vehicle_max_color
PURPOSE: Count top 1 vehicle color stolen - Load view

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/29/2025   Akan Nyong    1. Built this script for assignment 4.2


RUNTIME:
00:00:00

NOTES: 
This script was built to help me learn step 4 of 8 in the Answer Focused Approach for T-SQL Data Manipulation
 
******************************************************************************************************************/

	SELECT TOP (1) color AS most_stolen_color,
		   COUNT(color) AS number_stolen
		 FROM stolen_vehicles
		GROUP BY color
		ORDER BY COUNT(color) DESC;