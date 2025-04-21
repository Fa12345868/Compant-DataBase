
USE Company;

CREATE TABLE Department (
    departmentname VARCHAR(50),
    departmentnumber INT PRIMARY KEY
);

CREATE TABLE Employee (
    SSN CHAR(9) PRIMARY KEY,
    Name VARCHAR(50),
    Salary DECIMAL(10,2),
    ID VARCHAR(20),
    phone VARCHAR(12),
    address VARCHAR(50),
    street VARCHAR(10),
    zone VARCHAR(20),
    Age INT,
    DOB DATE,
    supervisorSSN CHAR(9),
    departmentid INT,
    FOREIGN KEY (supervisorSSN) REFERENCES Employee(SSN),
    FOREIGN KEY (departmentid) REFERENCES Department(departmentnumber)
);

CREATE TABLE Dependent (
    Name VARCHAR(50),
    relation VARCHAR(50),
    SSN CHAR(9),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN)
);

CREATE TABLE Project (
    projectname VARCHAR(60),
    projectnumber INT PRIMARY KEY
);

CREATE TABLE Car (
    platenumber INT PRIMARY KEY,
    model INT,
    color VARCHAR(40)
);

CREATE TABLE Contract (
    type VARCHAR(30),
    startDate DATE,
    Contractid INT PRIMARY KEY
);
