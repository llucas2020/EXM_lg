/*****************************************************************************************************************
NAME:    LoadData
PURPOSE: ETL process for Example data

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     08/02/2019   JJAUSSI       1. Built this table for LDS BC IT240


RUNTIME: 
Approx. 1 min

NOTES:
These are the varioius Extract, Transform, and Load steps needed for the Example Data

LICENSE: This code is covered by the GNU General Public License which guarantees end users
the freedom to run, study, share, and modify the code. This license grants the recipients
of the code the rights of the Free Software Definition. All derivative work can only be
distributed under the same license terms.
 
******************************************************************************************************************/


-- 1) Create the Player Dimension table

--SELECT DISTINCT
--       d.pl_id
--     , d.l_name
--     , d.f_name
--     , d.pl_name
--     , d.t_id
--     , d.p_id
--     , d.pl_num
--  INTO dbo.tblPlayerDim
--  FROM dbo.tblData d
-- ORDER BY pl_id;

-- dbo.tblPlayerDim.sql

TRUNCATE TABLE dbo.tblPlayerDim;

INSERT INTO dbo.tblPlayerDim
SELECT DISTINCT
       d.pl_id
     , d.l_name
     , d.f_name
     , d.pl_name
     , d.t_id
     , d.p_id
     , d.pl_num
  FROM dbo.tblData d
 ORDER BY d.pl_id;



-- 2) Create the Position Dimension table

--SELECT DISTINCT
--       d.p_id
--     , d.p_code
--     , d.p_name
--     , d.p_target
--  INTO dbo.tblPositionDim
--  FROM dbo.tblData d
-- ORDER BY d.p_id;

-- dbo.tblPositionDim.sql

TRUNCATE TABLE dbo.tblPositionDim;

INSERT INTO dbo.tblPositionDim
SELECT DISTINCT
       d.p_id
     , d.p_code
     , d.p_name
     , d.p_target
  FROM dbo.tblData d
 ORDER BY d.p_id;



-- 3) Create the Team Dimension table

--SELECT DISTINCT
--       d.t_id
--     , d.t_code
--  INTO dbo.tblTeamDim
--  FROM dbo.tblData d
-- ORDER BY d.t_id;

-- dbo.tblTeamDim.sql

TRUNCATE TABLE dbo.tblTeamDim;

INSERT INTO dbo.tblTeamDim
SELECT DISTINCT
       d.t_id
     , d.t_code
  FROM dbo.tblData d
 ORDER BY d.t_id;






