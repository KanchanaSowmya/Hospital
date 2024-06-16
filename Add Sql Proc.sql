USE ApolloHospital;

CREATE PROC [dbo].[USP_ADDStaff]
@Name			VARCHAR(200),
@DOB				DATE,
@Age				TINYINT,
@Address			VARCHAR(200),
@Ph					VARCHAR(200),
@Pincode			INT

AS
	BEGIN
		INSERT INTO [dbo].[Staff](Name, DOB, Age, Address, Ph, Pincode)

		VALUES(@Name, @DOB, @Age, @Address, @Ph, @Pincode)
	END;


	CREATE PROC [dbo].[USP_ADDRolls]
	@Roll_Name		VARCHAR(100),
	@Staff_Id		INT
AS
	BEGIN
		INSERT INTO [dbo].[Rolls] (Roll_Name, Staff_Id)

	VALUES (@Roll_Name, @Staff_Id)
END;


CREATE PROC [dbo].[USP_ADDStaff_Attendance]
@Staff_Id					INT,
@DATE						DATE,
@Attendance					BIT

AS
	BEGIN
		INSERT INTO [dbo].[Staff_Attendance] (Staff_Id, DATE, Attendance)

		VALUES (@Staff_Id, @DATE, @Attendance)
	END;

	CREATE PROC [dbo].[USP_ADDStaff_Salary]
	@Staff_Id				INT,
	@Salary					DECIMAL(18,2),
	@Bonus					DECIMAL(18,2),
	@Total					DECIMAL(18,2)
AS
	BEGIN
		INSERT INTO [dbo].[Staff_Salary] (Staff_Id, Salary, Bonus, Total)

		VALUES (@Staff_Id, @Salary, @Bonus, @Total)
	END;



	CREATE PROC[dbo].[USP_ADDPatients]
@Name					VARCHAR(300),
@Age					TINYINT,
@Address				VARCHAR(300),
@Ph						VARCHAR(300),
@Pincode				VARCHAR(100)

AS	
	BEGIN
			INSERT INTO [dbo].[Patients] (Name, Age, Address, Ph, Pincode)

			VALUES (@Name, @Age, @Address, @Ph, @Pincode)
		END;

	CREATE PROC[dbo].[USP_ADDAppointment]
@Appointment_Date		DATE,
@Patient_Id				INT,
@Staff_Id				INT

AS
	BEGIN

		INSERT INTO [dbo].[Appointment] (Appointment_Date, Patient_Id, Staff_Id)

		VALUES (@Appointment_Date, @Patient_Id, @Staff_Id)

	END;

CREATE PROC [dbo].[USP_ADDPatient_Medical_Record]
@Patient_Id			INT,
@Staff_Id			INT,
@Diagnosis			VARCHAR(200),
@Current_Symptoms	VARCHAR(200),
@Prescription		VARCHAR(200)

AS
	BEGIN

		INSERT INTO [dbo].[Patient_Medical_Record] (Patient_Id, Staff_Id, Diagnosis, Current_Symptoms, Prescription)

		VALUES (@Patient_Id, @Staff_Id, @Diagnosis, @Current_Symptoms, @Prescription)

	END;

CREATE PROC [dbo].[USP_ADDTreatment]
@Treatment_Name		VARCHAR(100),
@Record_Id			INT,
@Patient_Id			INT,
@Staff_Id			INT,
@Admitted			DATE,
@Admitted_Time		TIME,
@Discharged			DATE,
@Discharged_Time	TIME

AS
	BEGIN
		INSERT INTO [dbo].[Treatment] (Treatment_Name, Record_Id, Patient_Id, Staff_Id, Admitted, Admitted_Time, Discharged, Discharged_Time)

		VALUES (@Treatment_Name, @Record_Id, @Patient_Id, @Staff_Id, @Admitted, @Admitted_Time, @Discharged, @Discharged_Time)

	END;

CREATE PROC [dbo].[USP_ADDPatient_Fees]
@Patient_Id		INT,
@Payment		DATETIME,
@Advance_Fees	DECIMAL(18,2),
@Remaining_Fees	DECIMAL(18,2),
@Total			DECIMAL(18,2)

AS
	BEGIN
		INSERT INTO [dbo].[Patient_Fees] (Patient_Id, Payment, Advance_Fees, Remaining_Fees, Total)

		VALUES (@Patient_Id, @Payment, @Advance_Fees, @Remaining_Fees, @Total)

	END;

	EXEC sp_help 'dbo.USP_ADDPatient_Fees';


