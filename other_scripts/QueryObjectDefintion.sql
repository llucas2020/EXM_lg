/*****************************************************************************************************************
NAME:    QueryObjectDefintion
PURPOSE: Query Object Defintions

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/23/2019   JJAUSSI       1. Built this script for LDS BC IT243


RUNTIME: 
NA

NOTES:
Use this script to query the T-SQL definitions of any
- View
- Stored Procedure

Reference this post
Review view defintions
http://stackoverflow.com/questions/432500/system-views-text-in-sql-server-2005


LICENSE: This code is covered by the GNU General Public License which guarantees end users
the freedom to run, study, share, and modify the code. This license grants the recipients
of the code the rights of the Free Software Definition. All derivative work can only be
distributed under the same license terms.
 
******************************************************************************************************************/


-- 1) View definitions

SELECT SCHEMA_NAME(sv.schema_id) AS view_schema
     , sv.name AS view_name
     , sm.definition AS view_defintion
  FROM sys.sql_modules AS sm
       INNER JOIN
       sys.views AS sv ON sm.object_id = sv.object_id
 WHERE sm.definition LIKE '%749345%'
       --AND sv.schema_id NOT IN (SCHEMA_ID('z035330'), SCHEMA_ID('z078850'))
 ORDER BY 1,2;



-- 2) Stored Proc definitions 

SELECT sp.name AS proc_name
     , sm.definition AS sp_defintion
  FROM sys.sql_modules AS sm
       INNER JOIN
       sys.procedures AS sp ON sm.object_id = sp.object_id
 WHERE sm.definition LIKE '%749345%'
 --AND sp.name LIKE '%CAR%'
 ORDER BY proc_name;