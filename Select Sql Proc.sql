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


CREATE PROC [dbo].[USP_GETStaff_Attendance]
AS
	BEGIN 
		SELECT
			Staff_Attendance_Id, Staff_Id, DATE, Attendance
	FROM [dbo].[Staff_Attendance]
END;


CREATE PROC [dbo].[USP_GETStaff_Salary]
AS
	BEGIN
		SELECT
			Salary_Id, Staff_Id, Salary, Bonus, Total
	FROM [dbo].[Staff_Salary]
END;


CREATE PROC [dbo].[USP_GETPatients]
AS
	BEGIN
		SELECT
			Patient_Id, Name, Age, Address, Ph, Pincode
	FROM [dbo].[Patients]
END;


CREATE PROC [dbo].[USP_GETAppointment]
AS
	BEGIN
		SELECT
			Appointment_Id, Appointment_Date, Patient_Id, Staff_Id
	FROM [dbo].[Appointment]
END;


CREATE PROC [dbo].[USP_GETPatient_Medical_Record]
AS
	BEGIN
		SELECT
			Record_Id, Patient_Id, Staff_Id, Diagnosis, Current_Symptoms, Prescription
	FROM [dbo].[Patient_Medical_Record]
END;


CREATE PROC [dbo].[USP_GETTreatment]
AS
	BEGIN
		SELECT
			Treatment_Id, Treatment_Name, Record_Id, Patient_Id, Staff_Id, Admitted, Admitted_Time, Discharged, Discharged_Time
	FROM [dbo].[Treatment]
END;


CREATE PROC [dbo].[USP_GETPatient_Fees]
AS
	BEGIN
		SELECT
			Fees_Id, Patient_Id, Payment, Advance_Fees, Remaining_Fees, Total
	FROM [dbo].[Patient_Fees]
END;