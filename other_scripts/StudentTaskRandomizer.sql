/*****************************************************************************************************************
NAME:    StudentTaskRandomizer.sql
PURPOSE: Student Task Randomizer

SUPPORT: Jaussi Consulting LLC
         www.jaussiconsulting.net
         jon@jaussiconsulting.net

MODIFICATION LOG:
Ver       Date         Author       Description
-------   ----------   ----------   -----------------------------------------------------------------------------
1.0       12/13/2019   JJAUSSI      1. Built this script for LDSBC IT240


RUNTIME: 
approx 1 sec.

NOTES: 
We have students. We have tasks. Sometimes I need to randomly pick which students perform which tasks.

https://stackoverflow.com/questions/848872/select-n-random-rows-from-sql-server-table
http://www.sqlservertutorial.net/sql-server-window-functions/sql-server-rank-function/
http://www.sqlservertutorial.net/sql-server-window-functions/sql-server-row_number-function/

LICENSE: 
This code is covered by the GNU General Public License which guarantees end users
the freedom to run, study, share, and modify the code. This license grants the recipients
of the code the rights of the Free Software Definition. All derivative work can only be
distributed under the same license terms.

******************************************************************************************************************/

WITH student_cte
AS
(
SELECT 'Eloisa' as student_name
UNION
SELECT 'Eder' as student_name
UNION
SELECT 'George' as student_name
UNION
SELECT 'Edu' as student_name
UNION
SELECT 'Alex' as student_name
UNION
SELECT 'Lucus' as student_name
),
task_cte
AS
(
SELECT 1 as task_order, 'Spiritual Thought' as task_name
UNION
SELECT 2 as task_order, 'Opening Prayer' as task_name
UNION
SELECT 3 as task_order, 'Some Task 1' as task_name
UNION
SELECT 4 as task_order, 'Some Task 2' as task_name
UNION
SELECT 5 as task_order, 'Some Task 3' as task_name
UNION
SELECT 6 as task_order, 'Some Task 4' as task_name
),
--s3 -- One student can potentially be assinged to more than one task
--as
--(
--SELECT ROW_NUMBER() OVER (PARTITION BY t.task_name ORDER BY NEWID() ) as my_rank
--      ,t.* 
--	  ,s.*
--  FROM student_cte as s CROSS JOIN task_cte as t
--)
--SELECT s3.task_order
--      ,s3.task_name
--      ,s3.student_name
--  FROM s3
-- WHERE s3.my_rank = 1
-- ORDER BY 1;
s3 -- One student per task
as
(
SELECT ROW_NUMBER() OVER (ORDER BY NEWID() ) as my_rank
      ,s.* 
  FROM student_cte as s
), s4
as
(
SELECT ROW_NUMBER() OVER (ORDER BY NEWID() ) as my_rank
      ,t.* 
  FROM task_cte as t
)
SELECT s4.task_order
      ,s4.task_name
	  ,s3.student_name
  FROM s3 INNER JOIN s4 ON s3.my_rank = s4.my_rank    
 ORDER BY 1;

