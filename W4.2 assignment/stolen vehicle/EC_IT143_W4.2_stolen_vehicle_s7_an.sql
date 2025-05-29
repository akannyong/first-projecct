CREATE PROCEDURE dbo.usp_vehicle_max_color
AS

/*****************************************************************************************************************
NAME:    dbo.usp_vehicle_max_color
PURPOSE: Count top 1 vehicle color stolen - Load user stored procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/29/2025   Akan Nyong    1. Built this script for assignment 4.2


RUNTIME:
00:00:00

NOTES: 
This script was built to help me learn step 7 of 8 in the Answer Focused Approach for T-SQL Data Manipulation
 
******************************************************************************************************************/

	BEGIN

		-- 1) Reload data

		TRUNCATE TABLE dbo.t_vehicle_max_color;


		INSERT INTO dbo.t_vehicle_max_color
			  SELECT v.most_stolen_color,
					 v.number_stolen
			   FROM dbo.v_vehicle_max_color AS v;

		-- 2) Review results

		SELECT t.*
			FROM dbo.t_vehicle_max_color AS t;

		END;
	Go