# Company Database Design

This project demonstrates the creation of a database for a company's essential features. The SQL code sets up various tables to manage data related to employees, departments, projects, contracts, cars, and dependents. The design uses both **Primary Keys** and **Foreign Keys** for data integrity and relational mapping.

## Features

This SQL schema includes tables for the following:

- **Employee**: Stores information about employees, including their SSN, name, salary, contact details, and supervisor.
- **Department**: Contains department information, including department name and number.
- **Dependent**: Tracks dependents related to employees.
- **Car**: Holds data for cars assigned to employees, including plate number, model, and color.
- **Project**: Represents projects within the company.
- **Contract**: Stores contract details, including type and start date.

### Key Concepts:

- **Primary Key**: Each table contains a primary key to ensure each record is unique.
- **Foreign Key**: Relations between tables are maintained using foreign keys. For example, the `Employee` table references the `Department` and other employees (supervisors).

  ## Tables in the Database:

1. **Department**: Contains department details.
    ```sql
    CREATE TABLE Department (
        departmentname VARCHAR(50),
        departmentnumber INT PRIMARY KEY
    );
    ```

2. **Employee**: Contains employee details, linked to supervisors and departments.
    ```sql
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
    ```

3. **Dependent**: Tracks employees' dependents.
    ```sql
    CREATE TABLE Dependent (
        Name VARCHAR(50),
        relation VARCHAR(50),
        SSN CHAR(9),
        FOREIGN KEY (SSN) REFERENCES Employee(SSN)
    );
    ```

4. **Project**: Contains project details.
    ```sql
    CREATE TABLE Project (
        projectname VARCHAR(60),
        projectnumber INT PRIMARY KEY
    );
    ```

5. **Car**: Stores data on cars assigned to employees.
    ```sql
    CREATE TABLE Car (
        platenumber INT PRIMARY KEY,
        model INT,
        color VARCHAR(40)
    );
    ```

6. **Contract**: Details about contracts within the company.
    ```sql
    CREATE TABLE Contract (
        type VARCHAR(30),
        startDate DATE,
        Contractid INT PRIMARY KEY
    );
    ```


## How to Use
1. **Clone the repository**:
   ```bash
   git clone https://github.com/USERNAME/YourSQLProject.git

MADE BY : Fatma Badwy.
