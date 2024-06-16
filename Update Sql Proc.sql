CREATE PROC [dbo].[USP_UPDATEStaff]
@Staff_Id		INT,
@Name			VARCHAR(200),
@DOB			DATE,
@Age			TINYINT,
@Address		VARCHAR(200),
@Ph				VARCHAR(200),
@Pincode		INT

AS
	BEGIN
		UPDATE [dbo].[Staff] 
		SET
			Name	=	@Name,
			DOB		=	@DOB,
			Age		=	@Age,
			Address	=	@Address,
			Ph		=	@Ph,
			Pincode	=	@Pincode
	WHERE	
		   Staff_Id =	@Staff_Id

		END;

CREATE PROC [dbo].[USP_UPDATERolls]
@Roll_Id		INT ,
@Roll_Name		VARCHAR(100),
@Staff_Id		INT

AS
	BEGIN
		UPDATE [dbo].[Rolls]
	SET
		
		Roll_Name	=	@Roll_Name,
		Staff_Id	=	@Staff_Id
	WHERE 
		Roll_Id		=	@Roll_Name

		END;

CREATE PROC [dbo].[USP_UPDATEStaff_Attendance]
@Staff_Attendance_Id		INT,
@Staff_Id					INT,
@DATE						DATE,
@Attendance					BIT
AS
	BEGIN
		UPDATE [dbo].[Staff_Attendance]
	SET
		
		Staff_Id	=	@Staff_Id,
		DATE		=	@DATE,
		Attendance	=	@Attendance

WHERE
		Staff_Attendance_Id	= @Staff_Attendance_Id

		END;

CREATE PROC [dbo].[USP_UPDATEStaff_Salary]
@Salary_Id				INT ,
@Staff_Id				INT,
@Salary					DECIMAL(18,2),
@Bonus					DECIMAL(18,2),
@Total					DECIMAL(18,2)
AS
	BEGIN
		UPDATE	[dbo].[Staff_Salary]
	SET
		
	Staff_Id	=	@Staff_Id,
	Salary		=	@Salary,			
	Bonus		=	@Bonus,			
	Total		=	@Total
WHERE
	Salary_Id	=	@Salary_Id

	END;

CREATE PROC [dbo].[USP_UPDATEPatients]
@Patient_Id				INT ,
@Name					VARCHAR(300),
@Age					TINYINT,
@Address				VARCHAR(300),
@Ph						VARCHAR(300),
@Pincode				VARCHAR(100)
AS
	BEGIN
		UPDATE [dbo].[Patients]
	SET
		Name	=	@Name,
		Age		=	@Age,
		Address	=	@Address,
		Ph		=	@Ph,
		Pincode	=	@Pincode
	WHERE
		Patient_Id	=	@Patient_Id

	END;

CREATE PROC [dbo].[USP_UPDATEAppointment]
@Appointment_Id			INT,
@Appointment_Date		DATE,
@Patient_Id				INT,
@Staff_Id				INT

AS
	BEGIN
		UPDATE [dbo].[Appointment]
	SET
		Appointment_Date	=	@Appointment_Date,
		Patient_Id			=	@Patient_Id,
		Staff_Id			=	@Staff_Id
	WHERE
		Appointment_Id		=	@Appointment_Id
	END;

CREATE PROC [dbo].[USP_UPDATEPatient_Medical_Record]
@Record_Id			INT,
@Patient_Id			INT,
@Staff_Id			INT,
@Diagnosis			VARCHAR(200),
@Current_Symptoms	VARCHAR(200),
@Prescription		VARCHAR(200)
AS
	BEGIN
		UPDATE [dbo].[Patient_Medical_Record]
	SET
		Patient_Id			=	@Patient_Id,
		Staff_Id			=	@Staff_Id,
		Diagnosis			=	@Diagnosis,
		Current_Symptoms	=	@Current_Symptoms,
		Prescription		=	@Prescription
	WHERE
		Record_Id			=	@Record_Id
	END;

CREATE PROC [dbo].[USP_UPDATETreatment]
@Treatment_Id		INT ,
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
		UPDATE [dbo].[Treatment]
	SET
		Treatment_Name		=		@Treatment_Name,
		Record_Id			=		@Record_Id,
		Patient_Id			=		@Patient_Id,
		Staff_Id			=		@Staff_Id,
		Admitted			=		@Admitted,
		Admitted_Time		=		@Admitted_Time,
		Discharged			=		@Discharged,
		Discharged_Time		=		@Discharged_Time
	WHERE
		Treatment_Id		=		@Treatment_Id
	END;

CREATE PROC [dbo].[USP_UPDATEPatient_Fees]
@Fees_Id			INT ,
@Patient_Id			INT,
@Payment			DATETIME,
@Advance_Fees		DECIMAL(18,2),
@Remaining_Fees		DECIMAL(18,2),
@Total				DECIMAL(18,2)

AS
	BEGIN
		UPDATE [dbo].[Patient_Fees]
	SET
		Patient_Id		=	@Patient_Id,
		Payment			=	@Payment,
		Advance_Fees	=	@Advance_Fees,
		Remaining_Fees	=	@Remaining_Fees,
		Total			=	@Total
	WHERE
		Fees_Id			=	@Fees_Id
	END;