use bankingDb;
CREATE TABLE Loans (
    LoanID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE,
    CustomerID int primary key auto_increment
);
INSERT INTO Loans
(LoanID, LoanAmount, InterestRate, StartDate, EndDate,CustomerID)
VALUES
(301, 500000, 8.50, '2025-01-15', '2030-01-15', 101),
(302, 300000, 9.25, '2025-02-10', '2028-02-10', 102),
(303, 750000, 8.75, '2025-03-20', '2032-03-20', 103),
(304, 250000, 10.00, '2025-04-05', '2029-04-05', 104),
(305, 1000000, 7.95, '2025-05-12', '2035-05-12', 105);

select LoanID, LoanAmount,CustomerID,rank() over(order by LoanAmount desc)as LoanRank from loans;
select LoanID, LoanAmount,CustomerID,row_number() over(order by LoanAmount desc)as RowNumber from loans;
select LoanID, LoanAmount,CustomerID,row_number() over(partition by customerID order by LoanAmount desc)as RowNum from loans;
select LoanID, LoanAmount,CustomerID,sum(LoanAmount) over(order by LoanAmount desc)as sum from loans;
select LoanID, LoanAmount,CustomerID,lag(LoanAmount) over(order by LoanAmount desc)as sum from loans;
select LoanID, LoanAmount,CustomerID,lead(LoanAmount) over(order by LoanAmount desc)as sum from loans;
use Sept_7;
select age, count(passengerId) from titanic group by age;
select age, count(passengerId) from titanic group by age order by age;
select age, count(passengerId) from titanic group by age order by count(passengerId) DESC;
select age, count(passengerId) from titanic group by age having count(passengerId) >=20 order by count(PassengerID)desc;

use bankingDB;
create table bank
(B_ID Int primary key auto_increment,
B_FName varchar(23),
B_age int
);

create table bankk2
(B2_ID Int primary key auto_increment,
B2_FName varchar(23),
B2_age int,
check (B2_age >= 18)
);
create table Parent
(P2_ID Int primary key auto_increment,
P2_FName varchar(23),
P2_age int,
check (P2_age >= 18)
);

Create table Child
(
CH_Id Int primary key,
CH_FName Varchar(23),
CH_PA int,
Foreign key(CH_Id) references  parent(P2_ID)
);

Select * from Parent inner Join Child on
Parent.P2_ID = Child.CH_Id ;



