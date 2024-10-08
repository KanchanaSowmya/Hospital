USE [ApolloHospital]
GO
/****** Object:  StoredProcedure [dbo].[USP_ADDStaff]    Script Date: 12/24/2023 1:17:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[USP_ADDStaff]
@Name			VARCHAR(200),
@DOB				DATE,
@Age				TINYINT,
@Address			VARCHAR(200),
@Ph				VARCHAR(200),
@Pincode			INT

AS
	BEGIN
		INSERT INTO [dbo].[Staff](Name, DOB, Age, Address, Ph, Pincode)

		VALUES(@Name, @DOB, @Age, @Address, @Ph, @Pincode)
	END;

EXEC [dbo].[USP_ADDStaff] @Name = 'Bunny',@DOB = '1998-07-04',@Age = 25,@Address = 'Sai Nagar',@Ph = '+91 7337009567', @Pincode = 533005;


