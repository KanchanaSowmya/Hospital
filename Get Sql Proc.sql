USE ApolloHospital;

CREATE PROC [dbo].[USP_GETStaff]
AS
	BEGIN
		SELECT
			Staff_Id, Name, DOB, Age, Address, Ph, Pincode
	FROM	[dbo].[Staff]
END;


CREATE PROC [dbo].[USP_GETRolls]
AS
	BEGIN
		SELECT
			Roll_Id, Roll_Name, Staff_Id
	FROM [dbo].[Rolls]
END;