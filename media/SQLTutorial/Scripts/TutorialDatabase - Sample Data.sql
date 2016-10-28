USE [TutorialDatabase]
GO

DECLARE @Record INT 
SET @Record=1
WHILE @Record<=10000
BEGIN
	INSERT INTO [TutorialDatabase].[dbo].[Project]
		([Code], [Name], [BeginDate], [EndDate])
		VALUES ('PROJ_' + cast(@Record as nvarchar), 'Project ' + cast(@Record as nvarchar), getdate(), null)
    SET @RECORD = @RECORD+1
END
GO