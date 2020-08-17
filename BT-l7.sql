CREATE DATABASE RiverPlate1
GO
USE RiverPlate1
GO

CREATE TABLE Student(
  StudentNo int PRIMARY KEY,
  StudentName varchar(50),
  StudentAddress varchar(100),
  PhoneNO int 
)

CREATE TABLE Department (
  DeptNO int PRIMARY KEY,
  DeptName varchar(50),
  ManagerName char(30)
)

CREATE TABLE Assignment (
  AssignmentNo int PRIMARY KEY,
  Description varchar(100)
)

CREATE TABLE Works_Assgin(
  JobID int PRIMARY KEY,
  StudentNo int,
  AssignmentNo int,
  TotalHours int,
  JobDetails XML,
  CONSTRAINT FK_Student FOREIGN KEY (StudentNo) REFERENCES Student(StudentNo),
  CONSTRAINT FK_AssignmentNo FOREIGN KEY (AssignmentNo) REFERENCES Assignment(AssignmentNo)
) 
CREATE UNIQUE NONCLUSTERED INDEX IX_Student
ON Student(StudentName)

ALTER INDEX IX_Student ON Student DISABLE 

CREATE NONCLUSTERED INDEX IX_Dept 
ON Department(DeptName, ManagerName) WITH (ALLOW_ROW_LOCKS = ON)