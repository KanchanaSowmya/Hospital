USE ApolloHospital;

CREATE PROC [dbo].[USP_DELETEStaff]
@Staff_Id		INT

AS
	BEGIN
		 DELETE [dbo].[Staff] WHERE Staff_Id	=	@Staff_Id
END;


CREATE PROC [dbo].[USP_DELETERolls]
@Roll_Id			INT

AS
	BEGIN
		 DELETE [dbo].[Rolls] WHERE Roll_Id		=		@Roll_Id
END;


CREATE PROC [dbo].[USP_DELETEStaff_Attendance]
@Staff_Attendance_Id			INT

AS
	BEGIN
		DELETE [dbo].[Staff_Attendance] WHERE Staff_Attendance_Id		=		@Staff_Attendance_Id
END;


CREATE PROC [dbo].[USP_DELETEStaff_Salary]
@Salary_Id				INT

AS
	BEGIN
		DELETE	[dbo].[Staff_Salary] WHERE Salary_Id		=		@Salary_Id
END;


CREATE PROC [dbo].[USP_DELETEPatients]
@Patient_Id				INT

AS
	BEGIN
		DELETE [dbo].[Patients] WHERE Patient_Id	=	@Patient_Id
END;


CREATE PROC [dbo].[USP_DELETEAppointment]
@Appointment_Id			INT

AS
	BEGIN
		DELETE [dbo].[Appointment]	WHERE Appointment_Id	 =		@Appointment_Id
END;


CREATE PROC [dbo].[USP_DELETEPatient_Medical_Record]
@Record_Id			INT

AS
	BEGIN
		DELETE [dbo].[Patient_Medical_Record]	WHERE Record_Id		=		@Record_Id
END;


CREATE PROC [dbo].[USP_DELETETreatment]
@Treatment_Id		INT

AS
	BEGIN
		DELETE [dbo].[Treatment]	WHERE Treatment_Id		=		@Treatment_Id
END;

CREATE PROC [dbo].[USP_DELETEPatient_Fees]
@Fees_Id			INT

AS
	BEGIN
		DELETE [dbo].[Patient_Fees]	  WHERE Fees_Id		=		@Fees_Id
END;
