CREATE PROCEDURE dbo.usp_restaurant_max_order
AS

/*****************************************************************************************************************
NAME:    dbo.v_restaurant_max_order
PURPOSE: Restaurant max order - Load view

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

		TRUNCATE TABLE dbo.t_restaurant_max_order;

		INSERT INTO dbo.t_restaurant_max_order
			 SELECT v.item_name,
					v.order_count
			   FROM dbo.v_restaurant_max_order AS v;

		-- 2) Review results

		SELECT t.*
			FROM dbo.t_restaurant_max_order AS t;

	END;
GO