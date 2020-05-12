/*****************************************************************************************************************
NAME:    dbo.tblTeamDim
PURPOSE: Create the dbo.tblTeamDim table

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     08/02/2019   JJAUSSI       1. Built this table for LDS BC IT240
1.1     05/06/2020   JJAUSSI       1. Added Team Name


RUNTIME: 
Approx. 0 min

NOTES:
The Team Dimension tables hold the Team attributes

LICENSE: This code is covered by the GNU General Public License which guarantees end users
the freedom to run, study, share, and modify the code. This license grants the recipients
of the code the rights of the Free Software Definition. All derivative work can only be
distributed under the same license terms.
 
******************************************************************************************************************/

/****** Object:  Table [dbo].[tblTeamDim]    Script Date: 8/2/2019 11:53:11 PM ******/
DROP TABLE [dbo].[tblTeamDim]
GO

/****** Object:  Table [dbo].[tblTeamDim]    Script Date: 8/2/2019 11:53:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblTeamDim](
	[t_id] [int] NOT NULL,
	[t_code] [varchar](5) NOT NULL,
	[t_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblTeamDim] PRIMARY KEY CLUSTERED 
(
	[t_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


