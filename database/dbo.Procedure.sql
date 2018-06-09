CREATE PROCEDURE [dbo].[GetSidebarPageWise]
	@s_PageIndex INT = 1
   ,@s_PageSize INT = 3
   ,@s_PageCount INT OUTPUT
AS
	SET NOCOUNT ON;

	SELECT ROW_NUMBER() OVER
            (
                  ORDER BY [s_id] ASC
            )AS s_RowNumber
      ,s_id
	  ,s_title
      ,s_link
	  ,s_img
    INTO #s_Results
    FROM [Sidebar]

	DECLARE @s_RecordCount INT
    SELECT @s_RecordCount = COUNT(*) FROM #s_Results

	SET @s_PageCount = CEILING(CAST(@s_RecordCount AS DECIMAL(10, 1)) / CAST(@s_PageSize AS DECIMAL(10, 1)))
    PRINT       @s_PageCount
           
    SELECT * FROM #s_Results
    WHERE s_RowNumber BETWEEN(@s_PageIndex -1) * @s_PageSize + 1 AND(((@s_PageIndex -1) * @s_PageSize + 1) + @s_PageSize) - 1
     
    DROP TABLE #s_Results

RETURN 0
