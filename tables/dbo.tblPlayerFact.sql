/*****************************************************************************************************************
NAME:    dbo.tblPlayerFact
PURPOSE: Create the dbo.tblPlayerFact table

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/27/2019   JJAUSSI       1. Built this table for LDS BC IT243


RUNTIME: 
Approx. 0 min

NOTES:
The Player Dimension tables hold the Player attributes

LICENSE: This code is covered by the GNU General Public License which guarantees end users
the freedom to run, study, share, and modify the code. This license grants the recipients
of the code the rights of the Free Software Definition. All derivative work can only be
distributed under the same license terms.
 
******************************************************************************************************************/

USE [EXM]
GO

/****** Object:  Table [dbo].[tblPlayerFact]    Script Date: 10/27/2019 3:22:54 PM ******/
DROP TABLE [dbo].[tblPlayerFact]
GO

/****** Object:  Table [dbo].[tblPlayerFact]    Script Date: 10/27/2019 3:22:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblPlayerFact](
	[as_of_date] [varchar](10) NOT NULL,
	[pl_id] [int] NOT NULL,
	[mtd_salary] [float] NOT NULL,
 CONSTRAINT [PK_tblPlayerFact] PRIMARY KEY CLUSTERED 
(
	[as_of_date] ASC,
	[pl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE dbo.tblPlayerFact
ADD CONSTRAINT FK_tblPlayerFact_tblPlayerDim FOREIGN KEY(pl_id) REFERENCES dbo.tblPlayerDim(pl_id);
