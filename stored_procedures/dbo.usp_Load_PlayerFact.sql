USE [EXM]
GO

/****** Object:  StoredProcedure [dbo].[usp_Load_PlayerFact]    Script Date: 11/22/2019 10:55:28 PM ******/
DROP PROCEDURE dbo.usp_Load_PlayerFact
GO

/****** Object:  StoredProcedure [dbo].[usp_Load_PlayerFact]    Script Date: 11/22/2019 10:55:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE dbo.usp_Load_PlayerFact
AS

/*****************************************************************************************************************
NAME:    dbo.usp_Load_PlayerFact
PURPOSE: Load Player Fact

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/22/2019   JJAUSSI       1. Built this procedure for LDS BC IT240



RUNTIME: 
Approx. 10 sec

NOTES: 


LICENSE: 
This code is covered by the GNU General Public License which guarantees end users
the freedom to run, study, share, and modify the code. This license grants the recipients
of the code the rights of the Free Software Definition. All derivative work can only be
distributed under the same license terms.
 
******************************************************************************************************************/

BEGIN

-- 1) Remove existing data

TRUNCATE TABLE dbo.tblPlayerFact;



-- 2) Create a temporary table

SELECT p.pl_id 
     , FLOOR(RAND(CHECKSUM(NEWID()))*(200000-10000+1)+10000) as mtd_salary
	 INTO #TempTable
  FROM dbo.tblPlayerDim AS p;



-- 3) Load Player Fact

WITH s1
AS
(
SELECT '2019-12-31' as as_of_date UNION
SELECT '2019-11-30' as as_of_date UNION
SELECT '2019-10-31' as as_of_date UNION
SELECT '2019-09-30' as as_of_date UNION
SELECT '2019-08-31' as as_of_date UNION
SELECT '2019-07-31' as as_of_date UNION
SELECT '2019-06-30' as as_of_date UNION
SELECT '2019-05-31' as as_of_date UNION
SELECT '2019-04-30' as as_of_date UNION
SELECT '2019-03-31' as as_of_date UNION
SELECT '2019-02-28' as as_of_date UNION
SELECT '2019-01-31' as as_of_date
)
INSERT INTO dbo.tblPlayerFact
SELECT s1.as_of_date
     , t.pl_id
	 , t.mtd_salary
  FROM s1 CROSS JOIN #TempTable AS t
 ORDER BY 1, 2;



-- 4) Drop temporary table

DROP TABLE #TempTable;


END;

GO


