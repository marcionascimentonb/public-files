USE [master];
GO

DROP Database IF EXISTS LanguageSchool;
GO

CREATE DATABASE LanguageSchool
Go

USE LanguageSchool;
GO

/*
	Drop FK Contrains on Many-to-Many
*/
IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'Enrollment'))
BEGIN    
	ALTER TABLE Enrollment DROP CONSTRAINT IF EXISTS [FK_Enrollment_Course]
	ALTER TABLE Enrollment DROP CONSTRAINT IF EXISTS [FK_Enrollment_Student]	
END
GO

/*
Login Table
*/
DROP TABLE IF EXISTS Login
GO

CREATE  TABLE Login (
  UserId   int IDENTITY NOT NULL, 
  UserName   nvarchar(255) NOT NULL, 
  Password nvarchar(255) NOT NULL, 
  PRIMARY KEY (UserId));
  GO


/*
Course Table
*/
DROP TABLE IF EXISTS Course
GO

CREATE TABLE Course (
  CourseId    int IDENTITY NOT NULL, 
  Name        nvarchar(50) NOT NULL, 
  Description nvarchar(400) NULL, 
  StartDate   date NOT NULL, 
  EndDate     date NOT NULL, 
  StartTime   time NOT NULL, 
  EndTime     time NOT NULL, 
  PRIMARY KEY (CourseId));
GO

/*
Student Table
*/

DROP TABLE IF EXISTS Student
GO

CREATE TABLE Student (
  StudentId  int IDENTITY NOT NULL, 
  FirstName  nvarchar(20) NOT NULL, 
  MiddleName nvarchar(20) NULL, 
  LastName   nvarchar(20) NOT NULL, 
  Phone      nvarchar(30) NOT NULL, 
  City       nvarchar(100) NOT NULL, 
  State      nvarchar(2) NOT NULL, 
  Country    nvarchar(50) NOT NULL, 
  PostalCode nvarchar(10) NOT NULL, 
  Street     nvarchar(100) NOT NULL, 
  PRIMARY KEY (StudentId));
GO

/*
Enrollment Table
*/

DROP TABLE IF EXISTS Enrollment
GO

CREATE TABLE Enrollment (
  EnrollmentId int IDENTITY NOT NULL, 
  FinalGrade   real NULL, 
  StudentId    int NOT NULL, 
  CourseId     int NOT NULL, 
  PRIMARY KEY (EnrollmentId));
GO  

ALTER TABLE Enrollment ADD CONSTRAINT FK_Enrollment_Course FOREIGN KEY (CourseId) REFERENCES LanguageSchool.dbo.Course (CourseId);
GO
ALTER TABLE Enrollment ADD CONSTRAINT FK_Enrollment_Student FOREIGN KEY (StudentId) REFERENCES LanguageSchool.dbo.Student (StudentId);
GO
ALTER TABLE Enrollment ADD CONSTRAINT UN_Enrollment UNIQUE(CourseId,StudentId);