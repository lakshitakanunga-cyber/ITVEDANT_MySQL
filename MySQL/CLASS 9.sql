use BankingDB;
select avg(Amount) from transactions;
select * from transactions where amount > ( select avg(Amount)from transactions);
select * from transactions where amount < ( select avg(Amount)from transactions);

SELECT AccountID,AccountType,Balance FROM Accounts WHERE AccountID IN
(SELECT AccountID FROM Transactions WHERE TransactionType = 'Deposit'
);