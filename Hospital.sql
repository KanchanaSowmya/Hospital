CREATE DATABASE ApolloHospital;
GO

CREATE TABLE Hospital(
Branch_No		VARCHAR(20),
ADDRESS			VARCHAR(100),
PH				VARCHAR(50));

CREATE TABLE Staff(
Staff_Id		INT IDENTITY(1,1),
Name			VARCHAR(200),
DOB				DATE,
Age				TINYINT,
Address			VARCHAR(200),
Ph				VARCHAR(200),
Pincode			INT
CONSTRAINT PK_Staff_Staff_Id PRIMARY KEY (Staff_Id));

CREATE TABLE Rolls(
Roll_Id			INT IDENTITY(1,1),
Roll_Name		VARCHAR(100),
Staff_Id		INT
CONSTRAINT PK_Rolls_Roll_Id PRIMARY KEY (Roll_Id),
CONSTRAINT FK_Staff_Staff_Id FOREIGN KEY (Staff_Id) REFERENCES Staff(Staff_Id));

CREATE TABLE Staff_Attendance(
Staff_Attendance_Id			INT IDENTITY(1,1),
Staff_Id					INT,
DATE						DATE,
Attendance					BIT,
CONSTRAINT PK_Staff_Attendance_Staff_Attendance_Id PRIMARY KEY (Staff_Attendance_Id),
CONSTRAINT FK_Staff_Attendance_Staff_Id FOREIGN KEY (Staff_Id) REFERENCES Staff(Staff_Id));

CREATE TABLE Staff_Salary(
Salary_Id				INT IDENTITY(1,1),
Staff_Id				INT,
Salary					DECIMAL(18,2),
Bonus					DECIMAL(18,2),
Total					DECIMAL(18,2)
CONSTRAINT PK_Staff_Salary_Salary_Id PRIMARY KEY (Salary_Id),
CONSTRAINT FK_Staff_Salary_Staff_Id  FOREIGN KEY(Staff_Id) REFERENCES Staff(Staff_Id));

CREATE TABLE Patients(
Patient_Id				INT IDENTITY(1,1),
Name					VARCHAR(300),
Age						TINYINT,
Address					VARCHAR(300),
Ph						VARCHAR(300),
Pincode					VARCHAR(100)
CONSTRAINT PK_Patients_Patient_Id PRIMARY KEY (Patient_Id));

CREATE TABLE Appointment(
Appointment_Id			INT IDENTITY(1,1),
Appointment_Date		DATE,
Patient_Id				INT,
Staff_Id				INT
CONSTRAINT UQ_Appointment_Appointment_Id UNIQUE (Appointment_Id),
CONSTRAINT PK_Appointment PRIMARY KEY (Patient_Id,Staff_Id),
CONSTRAINT FK_Patients_Patient_Id FOREIGN KEY(Patient_Id) REFERENCES Patients(Patient_Id),
CONSTRAINT FK_Appointment_Staff_Id  FOREIGN KEY(Staff_Id) REFERENCES Staff(Staff_Id));


CREATE TABLE Patient_Medical_Record(
Record_Id			INT IDENTITY (1,1),
Patient_Id			INT,
Staff_Id			INT,
Diagnosis			VARCHAR(200),
Current_Symptoms	VARCHAR(200),
Prescription		VARCHAR(200),
CONSTRAINT UQ_Patient_Medical_Record_Record_Id UNIQUE(Record_Id),
CONSTRAINT PK_Patient_Medical_Record PRIMARY KEY (Patient_Id,Staff_Id),
CONSTRAINT FK_Patient_Medical_Record_Patient_Id FOREIGN KEY (Patient_Id) REFERENCES Patients(Patient_Id),
CONSTRAINT FKPatient_Medical_Record_Staff_Id FOREIGN KEY (Staff_Id) REFERENCES Staff(Staff_Id));

CREATE TABLE Treatment(
Treatment_Id		INT IDENTITY (1,1),
Treatment_Name		VARCHAR(100),
Record_Id			INT,
Patient_Id			INT,
Staff_Id			INT,
Admitted			DATE,
Admitted_Time		TIME,
Discharged			DATE,
Discharged_Time		TIME
CONSTRAINT UQ_Treatment_Treatment_Id UNIQUE(Treatment_Id),
CONSTRAINT PK_Treatment PRIMARY KEY (Patient_Id,Staff_Id),
CONSTRAINT FK_Treatment_Record_Id FOREIGN KEY(Record_Id) REFERENCES Patient_Medical_Record(Record_Id),
CONSTRAINT FK_Treatmen_Patient_Id FOREIGN KEY(Patient_Id) REFERENCES Patients(Patient_Id),
CONSTRAINT FK_Treatmen_Staff_Id FOREIGN KEY(Staff_Id) REFERENCES Staff (Staff_Id));

CREATE TABLE Patient_Fees(
Fees_Id			INT IDENTITY(1,1),
Patient_Id		INT,
Payment			DATETIME,
Advance_Fees	DECIMAL(18,2),
Remaining_Fees	DECIMAL(18,2),
Total			DECIMAL(18,2)
CONSTRAINT PK_Patient_Fees_Fees_Id PRIMARY KEY(Fees_Id),
CONSTRAINT FK_Patient_Fees_Patient_Id FOREIGN KEY(Patient_Id) REFERENCES Patients(Patient_Id));

