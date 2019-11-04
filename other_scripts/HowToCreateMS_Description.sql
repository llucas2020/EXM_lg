-- Table
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Position Dimension table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblPositionDim';

-- Columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary key for Position records.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblPositionDim', @level2type=N'COLUMN',@level2name=N'p_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A one character abbreviation for the Position.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblPositionDim', @level2type=N'COLUMN',@level2name=N'p_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Full word verbiage of the Position name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblPositionDim', @level2type=N'COLUMN',@level2name=N'p_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The targeted talent inventory level for this position per team.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblPositionDim', @level2type=N'COLUMN',@level2name=N'p_target';

