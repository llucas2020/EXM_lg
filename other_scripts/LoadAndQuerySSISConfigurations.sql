EXEC dbo.usp_LoadSSISConfigurations;

SELECT s.*
  FROM dbo.[SSIS Configurations] as s;