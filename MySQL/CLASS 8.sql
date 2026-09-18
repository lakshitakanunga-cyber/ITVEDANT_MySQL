use BankingDB;

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

INSERT INTO Accounts
(AccountID, AccountType, Balance)
VALUES
(202, 'Current', 40000),
(203, 'Savings', 35000),
(204, 'Current', 60000),
(205, 'Savings', 45000);

ALTER TABLE Accounts
ADD CONSTRAINT PK_Accounts
PRIMARY KEY (AccountID);

ALTER TABLE Transactions
ADD CONSTRAINT PK_Transactions
PRIMARY KEY (TransactionID);

ALTER TABLE Transactions
ADD AccountID INT;

-- Insert 5 Records into Transactions Table
INSERT INTO Transactions
(TransactionID, AccountID, TransactionDate, Amount, TransactionType)
VALUES
(301, 201, '2025-05-10', 5000, 'Deposit'),
(302, 202, '2025-05-11', 2500, 'Withdraw'),
(303, 203, '2025-05-12', 10000, 'Deposit'),
(304, 204, '2025-05-13', 3000, 'Withdraw'),
(305, 205, '2025-05-14', 7000, 'Deposit');

alter table transactions add constraint FK_Transactions_Accounts
foreign key(AccountID) references accounts(AccountID);

Create table Pare2
(P_ID int primary key,
P_Name varchar(45),
P_age int unsigned
);

Create table Childd
(CH_ENR int primary key,
CH_LNAME text,
CH_P int);

alter table Childd add constraint FK_WER foreign key (CH_P) references Pare2(P_ID);

select*from Pare2 inner join Childd on
Pare2.P_ID=Childd.CH_P;

select*from Pare2 left join Childd on
Pare2.P_ID=Childd.CH_P;

select*from Pare2 full join Childd;

Create Table IT_Admedabad
(Trainer_Id int primary key,
Trainer_name varchar(45),
Trainer_Subject Varchar(45)
);

Create Table students
(Student_ID int primary key,
Student_Name Varchar(45),
Student_traniner int
);

Alter Table students add constraint FK_TSI foreign key (Student_Traniner) references IT_Admedabad(Trainer_Id);

select*from IT_Admedabad inner join Students on
Trainer_ID=Student_Traniner;