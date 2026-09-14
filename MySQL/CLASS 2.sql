CREATE DATABASE BankingDB;

USE BankingDB;

CREATE TABLE Customers
(
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);
INSERT INTO Customers VALUES
(1234,"Reet","Ranka","reetranka@gmail.com","9999022224");

SELECT * FROM Customers;
SHOW DATABASES;

DESCRIBE Customers;


CREATE TABLE Customers2
(   CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone  bigint);
    
INSERT INTO Customers2 VALUES
(1234,"Harshvi","Kanunga","harshvikanunga@gmail.com","1234567890");    
    
    select * from customers2;
    CREATE TABLE Accounts (
    AccountID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2)
);
CREATE TABLE Transactions (
    TransactionID INT,
    TransactionDate DATE,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(20)
);
CREATE TABLE Branches (
    BranchID INT,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);
CREATE TABLE AccountBranches ( 
		AssignmentDate DATE
);
CREATE TABLE Loans (
    LoanID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE
);
ALTER TABLE Customers ADD COLUMN DOB DATE ;
UPDATE customers set DOB = "2008-07-12";
ALTER TABLE Customers ADD COLUMN DOB2 DATE BEFORE LastName ;
ALTER TABLE Customers ADD COLUMN DOB2 DATE AFTER FirstName ;
SELECT CustomerID, FirstName, DOB2, LastName, Email, Phone FROM customers;

CREATE TABLE CUSTT2
SELECT CustomerID, FirstName, DOB2, LastName, Email, Phone FROM customers;

INSERT INTO custt2 values
(2,"Sid", "2007-07-05","Jain","sidjain@gmail.com",9000112345);

DELETE FROM CUSTT2 WHERE CustomerID = 2;

CREATE TABLE DATA3 
(D3_ID INT PRIMARY KEY,
 D3_FNAME VARCHAR(50),
 D3_AGE INT,
 D3_CITY VARCHAR(20)
 );
 
 INSERT INTO DATA3 VALUES
 (1235,"DIVYAM",13,"SURAT");
 

