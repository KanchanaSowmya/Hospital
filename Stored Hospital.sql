USE ApolloHospital;

CREATE PROCEDURE [dbo].[USP_AddHospital]

@Branch_No		VARCHAR(20),
@ADDRESS		VARCHAR(100),
@PH				VARCHAR(50)

AS
BEGIN
	INSERT INTO [dbo].[Hospital](Branch_No, ADDRESS, PH	)
	VALUES(@Branch_No, @ADDRESS, @PH)

END;


CREATE PROCEDURE [dbo].[USP_UpdateHospital]

@Branch_No		VARCHAR(20),
@ADDRESS		VARCHAR(100),
@PH				VARCHAR(50)
AS
BEGIN
	UPDATE [dbo].[Hospital] 
	SET PH			= @PH,
		Address		= @ADDRESS
	WHERE Branch_No =@Branch_No;
END;


CREATE PROCEDURE [dbo].[USP_GETHospital]
AS
	BEGIN
		SELECT Branch_No, ADDRESS, PH	
	FROM [dbo].[Hospital]
END;


CREATE PROCEDURE [dbo].[USP_DELETEHospital]

@Branch_No		VARCHAR(20)
AS 
	BEGIN  
		DELETE [dbo].[Hospital] WHERE Branch_No = @Branch_No
	END;
