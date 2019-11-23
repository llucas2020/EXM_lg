/*****************************************************************************************************************
NAME:    dbo.tblPlayerDim
PURPOSE: Create the dbo.tblPlayerDim table

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     08/02/2019   JJAUSSI       1. Built this table for LDS BC IT240


RUNTIME: 
Approx. 0 min

NOTES:
The Player Dimension tables hold the Player attributes

LICENSE: This code is covered by the GNU General Public License which guarantees end users
the freedom to run, study, share, and modify the code. This license grants the recipients
of the code the rights of the Free Software Definition. All derivative work can only be
distributed under the same license terms.
 
******************************************************************************************************************/

/****** Object:  Table [dbo].[tblPlayerDim]    Script Date: 8/2/2019 11:53:11 PM ******/
DROP TABLE [dbo].[tblPlayerDim]
GO

/****** Object:  Table [dbo].[tblPlayerDim]    Script Date: 8/2/2019 11:53:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblPlayerDim](
	[pl_id] [int] NOT NULL,
	[l_name] [varchar](50) NOT NULL,
	[f_name] [varchar](50) NOT NULL,
	[pl_name] [varchar](100) NOT NULL,
	[t_id] [int] NOT NULL,
	[p_id] [int] NOT NULL,
	[pl_num] [int] NOT NULL,
 CONSTRAINT [PK_tblPlayerDim] PRIMARY KEY CLUSTERED 
(
	[pl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE dbo.tblPlayerDim
ADD CONSTRAINT FK_tblPlayerDim_tblPositionDim FOREIGN KEY(p_id) REFERENCES dbo.tblPositionDim(p_id);

ALTER TABLE dbo.tblPlayerDim
ADD CONSTRAINT FK_tblPlayerDim_tblTeamDim FOREIGN KEY(t_id) REFERENCES dbo.tblTeamDim(t_id);