/*****************************************************************************************************************
NAME:    DataOutput
PURPOSE: Data Output process for Example data

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     08/02/2019   JJAUSSI       1. Built this table for LDS BC IT240


RUNTIME: 
Approx. 1 min

NOTES:
Data output manipulations for the Example Data

LICENSE: This code is covered by the GNU General Public License which guarantees end users
the freedom to run, study, share, and modify the code. This license grants the recipients
of the code the rights of the Free Software Definition. All derivative work can only be
distributed under the same license terms.
 
******************************************************************************************************************/


-- 1) Team Detail

SELECT v.t_id AS 'Player Team ID'
      ,v.t_code AS 'Player Team Code'					
      ,v.p_id AS 'Player Position ID'
      ,v.p_code AS 'Player Position Code'
      ,v.p_name AS 'Player Position Name'
      ,v.pl_id AS 'Player ID'
      ,v.pl_name AS 'Player Name'
      ,v.pl_num AS 'Player Number'
  FROM dbo.v_team_detail_dim v
ORDER BY v.t_id
       , v.p_id
       , v.pl_name;



-- 2) Team Position Sum

SELECT v.t_id AS 'Team ID'
      ,v.t_code AS 'Team Code'
      ,v.p_id AS 'Position ID'
      ,v.p_code AS 'Position Code'
      ,v.p_name AS 'Position Name'
      ,v.p_id_count AS 'Position Player Count Actual'
      ,v.p_target AS 'Position Player Count Target'
      ,v.p_target_var AS 'Position Player Count Variance'
  FROM dbo.v_team_sum AS v
 ORDER BY v.t_id
        , v.p_id;
