/*
Seed data
*/
USE LanguageSchool;
GO

SET IDENTITY_INSERT [Login] ON  
GO
INSERT INTO Login(UserId, UserName, Password) VALUES (1,'roger', '12345' );
INSERT INTO Login(UserId, UserName, Password) VALUES (2,'jim', '45678');
INSERT INTO Login(UserId, UserName, Password) VALUES (3,'marcio', '78901' );
SET IDENTITY_INSERT [Login] OFF
GO

SET IDENTITY_INSERT Course ON  
GO
INSERT INTO Course(CourseId, Name, Description, StartDate, EndDate, StartTime, EndTime) VALUES (1, 'Japanese', 'Intermediate', '2020-07-01','2020-11-30', '08:30 AM', '10:30 AM');
INSERT INTO Course(CourseId, Name, Description, StartDate, EndDate, StartTime, EndTime) VALUES (2, 'English', 'Advanced', '2020-07-01','2020-12-09', '08:30 AM', '10:30 AM');
INSERT INTO Course(CourseId, Name, Description, StartDate, EndDate, StartTime, EndTime) VALUES (3, 'French', 'Basic', '2020-06-01','2020-06-30', '08:30 AM', '10:30 AM');
INSERT INTO Course(CourseId, Name, Description, StartDate, EndDate, StartTime, EndTime) VALUES (4, 'Portuguese', 'Basic', '2020-07-01','2020-10-30', '10:30 AM', '12:30 PM');
INSERT INTO Course(CourseId, Name, Description, StartDate, EndDate, StartTime, EndTime) VALUES (5, 'Spanish', 'Intermediate', '2020-07-01','2020-10-30', '01:30 PM', '05:30 PM');
INSERT INTO Course(CourseId, Name, Description, StartDate, EndDate, StartTime, EndTime) VALUES (6, 'Russian', 'Advanced', '2020-03-01','2020-05-30', '04:30 PM', '06:30 PM');
SET IDENTITY_INSERT Course OFF
GO

SET IDENTITY_INSERT Student ON  
GO
INSERT INTO Student(StudentId, FirstName, MiddleName, LastName, Phone, City, State, Country, PostalCode, Street) VALUES (1, 'Chris', NULL, 'Cusack', '(506)332-1122','Moncton', 'NB', 'Canada','E9D 6B7', 'John st');
INSERT INTO Student(StudentId, FirstName, MiddleName, LastName, Phone, City, State, Country, PostalCode, Street) VALUES (2, 'Stephen', NULL, 'Carter','(506)332-1133','Moncton', 'NB', 'Canada', 'E9D 8C8', 'Mountain rd');
INSERT INTO Student(StudentId, FirstName, MiddleName, LastName, Phone, City, State, Country, PostalCode, Street) VALUES (3,'Dave', NULL,'Burchill', '(506)332-1144','Moncton', 'NB', 'Canada','E9D 5Y5', 'Low River rd');
INSERT INTO Student(StudentId, FirstName, MiddleName, LastName, Phone, City, State, Country, PostalCode, Street) VALUES (4, 'Delon', NULL,'Van de Venter', '(506)332-1155','Moncton', 'NB','Canada','E9D 1A1', 'Sunny rd');
INSERT INTO Student(StudentId, FirstName, MiddleName, LastName, Phone, City, State, Country, PostalCode, Street) VALUES (5, 'Bonnie', NULL, 'Ryan', '(506)332-1166', 'Moncton','NB', 'Canada', 'E49 U0B', 'Green rd');
INSERT INTO Student(StudentId, FirstName, MiddleName, LastName, Phone, City, State, Country, PostalCode, Street) VALUES (6, 'John', NULL, 'Willians', '(506)332-2222','Moncton', 'NB', 'Canada','E0D 6A7', 'Jay st');
INSERT INTO Student(StudentId, FirstName, MiddleName, LastName, Phone, City, State, Country, PostalCode, Street) VALUES (7, 'Roy', NULL, 'Leblanc','(506)332-2233','Moncton', 'NB', 'Canada', 'E1D 8B8', 'Hill rd');
INSERT INTO Student(StudentId, FirstName, MiddleName, LastName, Phone, City, State, Country, PostalCode, Street) VALUES (8,'David', NULL,'Carlson', '(506)332-2244','Moncton', 'NB', 'Canada','E2D 5C5', 'H River rd');
INSERT INTO Student(StudentId, FirstName, MiddleName, LastName, Phone, City, State, Country, PostalCode, Street) VALUES (9, 'Joel', NULL,'Armstrong', '(506)332-2255','Moncton', 'NB','Canada','E3D 1D1', 'Xt rd');
INSERT INTO Student(StudentId, FirstName, MiddleName, LastName, Phone, City, State, Country, PostalCode, Street) VALUES (10, 'Fabiola', NULL, 'Rusevell', '(506)332-2266', 'Moncton','NB', 'Canada', 'E59 3U3', 'Blue rd');
INSERT INTO Student(StudentId, FirstName, MiddleName, LastName, Phone, City, State, Country, PostalCode, Street) VALUES (11, 'Henry', NULL, 'Gordan', '(506)332-4466', 'Moncton','NB', 'Canada', 'E49 6B6', 'Gray rd');
INSERT INTO Student(StudentId, FirstName, MiddleName, LastName, Phone, City, State, Country, PostalCode, Street) VALUES (12, 'Philip', NULL, 'Winston', '(506)332-8866', 'Moncton','NB', 'Canada', 'E79 0B0', 'White rd');
SET IDENTITY_INSERT Student OFF
GO

SET IDENTITY_INSERT Enrollment ON  
GO
INSERT INTO Enrollment(EnrollmentId, FinalGrade, StudentId, CourseId) VALUES (1, NULL, 1, 1);
INSERT INTO Enrollment(EnrollmentId, FinalGrade, StudentId, CourseId) VALUES (2, 8.2, 5, 6);
INSERT INTO Enrollment(EnrollmentId, FinalGrade, StudentId, CourseId) VALUES (3, 7.5, 4, 6);
INSERT INTO Enrollment(EnrollmentId, FinalGrade, StudentId, CourseId) VALUES (4, NULL, 2, 1);
INSERT INTO Enrollment(EnrollmentId, FinalGrade, StudentId, CourseId) VALUES (5, NULL, 3, 4);
INSERT INTO Enrollment(EnrollmentId, FinalGrade, StudentId, CourseId) VALUES (6, NULL, 4, 4);

INSERT INTO Enrollment(EnrollmentId, FinalGrade, StudentId, CourseId) VALUES (7, NULL, 3, 3);
INSERT INTO Enrollment(EnrollmentId, FinalGrade, StudentId, CourseId) VALUES (8, NULL, 4, 3);
INSERT INTO Enrollment(EnrollmentId, FinalGrade, StudentId, CourseId) VALUES (9, NULL, 5, 3);
INSERT INTO Enrollment(EnrollmentId, FinalGrade, StudentId, CourseId) VALUES (10, NULL, 6, 3);
INSERT INTO Enrollment(EnrollmentId, FinalGrade, StudentId, CourseId) VALUES (11, NULL, 7, 3);
INSERT INTO Enrollment(EnrollmentId, FinalGrade, StudentId, CourseId) VALUES (12, NULL, 8, 3);
INSERT INTO Enrollment(EnrollmentId, FinalGrade, StudentId, CourseId) VALUES (13, NULL, 9, 3);
INSERT INTO Enrollment(EnrollmentId, FinalGrade, StudentId, CourseId) VALUES (14, NULL, 10, 3);
INSERT INTO Enrollment(EnrollmentId, FinalGrade, StudentId, CourseId) VALUES (15, NULL, 11, 3);
INSERT INTO Enrollment(EnrollmentId, FinalGrade, StudentId, CourseId) VALUES (16, NULL, 12, 3);

SET IDENTITY_INSERT Enrollment OFF  
GO
