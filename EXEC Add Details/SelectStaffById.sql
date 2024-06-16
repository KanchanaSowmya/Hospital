CREATE PROCEDURE [dbo].[USP_SelectStaffById]
    @Staff_Id INT = NULL
AS
BEGIN
    IF @Staff_Id IS NULL
        SELECT * FROM [dbo].[STAFF];
    ELSE
        SELECT * FROM [dbo].[STAFF] WHERE Staff_Id = @Staff_Id;
END;

EXEC [dbo].[USP_SelectStaffById]

EXEC [dbo].[USP_SelectStaffById] @Staff_Id = 4;

--OR--

CREATE PROCEDURE [dbo].[USP_SelectStaffById]
    @Staff_Id INT = NULL
AS
BEGIN
    SELECT * FROM [dbo].[STAFF]  WHERE (@Staff_Id IS NULL OR Staff_Id = @Staff_Id);
   
END;

EXEC [dbo].[USP_SelectStaffById];
EXEC [dbo].[USP_SelectStaffById] @Staff_Id = 2;


IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_SelectStaffById]') AND type in (N'P', N'PC'))
    DROP PROCEDURE [dbo].[USP_SelectStaffById];
