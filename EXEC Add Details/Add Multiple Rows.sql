USE ApolloHospital;

CREATE TYPE dbo.StaffType AS TABLE
(
    Name VARCHAR(200),
    DOB DATE,
    Age TINYINT,
    Address VARCHAR(200),
    Ph VARCHAR(200),
    Pincode INT
);

ALTER PROCEDURE [dbo].[USP_ADDStaff]
    @StaffData dbo.StaffType READONLY
AS
BEGIN
    INSERT INTO [dbo].[Staff] (Name, DOB, Age, Address, Ph, Pincode)
    SELECT Name, DOB, Age, Address, Ph, Pincode
    FROM @StaffData;
END;

USE [ApolloHospital];
GO
DECLARE @StaffData dbo.StaffType;

INSERT INTO @StaffData (Name, DOB, Age, Address, Ph, Pincode)
VALUES
    ('John Doe', '1990-01-01', 32, '123 Main Street', '555-1234', 12345),
    ('Jane Smith', '1985-05-15', 37, '456 Oak Avenue', '555-5678', 67890),
    ('Bob Johnson', '1988-08-20', 34, '789 Pine Road', '555-9876', 98765);

EXEC [dbo].[USP_ADDStaff] @StaffData;

SELECT *
FROM @StaffData;

EXEC [dbo].[USP_ADDStaff] @StaffData;

/* Drop
USE [ApolloHospital]
GO

-- Drop the stored procedure
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_NAME = 'USP_ADDStaff' AND ROUTINE_TYPE = 'PROCEDURE')
BEGIN
    DROP PROCEDURE [dbo].[USP_ADDStaff];
END;

-- Drop the user-defined table type
IF EXISTS (SELECT * FROM sys.types WHERE name = 'StaffType')
BEGIN
    DROP TYPE dbo.StaffType;
END;*/

EXEC [dbo].[USP_GETStaff] @Staff_Id = 1;