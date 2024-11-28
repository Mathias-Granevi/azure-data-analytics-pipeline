-- Create a SQL view in Synapse that reads data from Azure Data Lake Storage Gen2
USE gold_db
GO

CREATE OR ALTER PROC CreateView_gold @ViewName NVARCHAR(100)
AS
BEGIN
    DECLARE @statement VARCHAR(MAX)
    SET @statement = N'CREATE OR ALTER VIEW ' + @ViewName + ' AS
        SELECT
            *
        FROM
            OPENROWSET(
                BULK ''<your-Azure-Data-Lake-Storage-Gen2-URL-path-here>' + @ViewName + '/'',
                FORMAT = ''DELTA''
            ) AS [result]'

    EXEC (@statement)
END
GO
