DROP VIEW IF EXISTS dbo.v_restaurant_max_order;
GO

CREATE VIEW v_restaurant_max_order
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
This script was built to help me learn step 4 of 8 in the Answer Focused Approach for T-SQL Data Manipulation
 
******************************************************************************************************************/

	SELECT TOP (1) m.item_name,
		  COUNT(o.item_id) AS order_count
		  FROM dbo.order_details AS o
		  JOIN dbo.menu_items AS m
			ON o.item_id = m.menu_item_id
		 GROUP BY m.item_name
		 ORDER BY COUNT(o.item_id) DESC;