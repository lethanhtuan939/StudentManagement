CREATE DATABASE StudentManagement
GO
USE StudentManagement
GO
CREATE TABLE Users(
	UserName VARCHAR(20) PRIMARY KEY,
	Password VARCHAR(30) NOT NULL,
	Role NVARCHAR(50) NOT NULL
)
CREATE TABLE Student (
	ID CHAR(7) PRIMARY KEY,
	Name NVARCHAR(50) NOT NULL,
	Email NVARCHAR(50) NOT NULL,
	Phone VARCHAR(11),
	Gender SMALLINT NOT NULL,
	Address NVARCHAR(150),
	Image image
)
CREATE TABLE Result (
	Rollno INT IDENTITY(1, 1) PRIMARY KEY,
	ID CHAR(7) FOREIGN KEY REFERENCES Student(ID),
	English FLOAT,
	Informatics FLOAT,
	PhysicalEducation FLOAT
)