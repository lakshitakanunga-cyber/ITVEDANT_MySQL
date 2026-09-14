USE BankingDB;
SELECT FIRSTNAME,LASTNAME,upper(FIRSTNAME),upper(LASTNAME) FROM CUSTOMERS;

SELECT FIRSTNAME,LASTNAME,LOWER(FIRSTNAME),LOWER(LASTNAME) FROM CUSTOMERS;

SELECT FIRSTNAME, LENGTH(FIRSTNAME) FROM customers;

SELECT FIRSTNAME, LENGTH(EMAIL) FROM customers;

SELECT FIRSTNAME, LEFT(FIRSTNAME,3) AS INTIAL FROM customers;

SELECT FIRSTNAME, RIGHT(FIRSTNAME,3)  FROM customers;

SELECT FIRSTNAME, RIGHT(FIRSTNAME,3) AS RIGHT_FIRSTNAME FROM customers;

SELECT FIRSTNAME,LASTNAME,EMAIL,
concat(FIRSTNAME,"_",LASTNAME,"_",EMAIL) FROM CUSTOMERS;

SELECT FIRSTNAME,LASTNAME,EMAIL,
concat(FIRSTNAME,"_",LASTNAME,"_",EMAIL) AS CONCAT FROM CUSTOMERS;
SELECT FIRSTNAME,LASTNAME,EMAIL,
concat_ws("_",FIRSTNAME,LASTNAME,EMAIL) AS CONCAT_WS FROM CUSTOMERS;

USE SEPT_7;
SELECT PassengerId, Survived, Pclass, Name, Sex, Fare, round(FARE,2) FROM TITANIC;

SELECT PassengerId, Survived, Pclass, Name, Sex, Fare, CEIL(FARE) FROM TITANIC;

SELECT PassengerId, Survived, Pclass, Name, Sex, Fare, FLOOR(FARE) FROM TITANIC;

SELECT PassengerId, Survived, Pclass, Name, Sex, Fare, ABS(FARE) FROM TITANIC;

SELECT PassengerId, Survived, Pclass, Name, Sex, Fare, MOD(FARE,AGE) FROM TITANIC;

USE BankingDB;
SELECT CustomerID, FirstName, LastName, Email, Phone, DOB,
DATE_FORMAT(DOB, "%W %D %M %Y") FROM customers;

SELECT CustomerID, FirstName, LastName, Email, Phone, DOB,
DATE_FORMAT(DOB, "%w %d %m %y") FROM customers;

SELECT CustomerID, FirstName, LastName, Email, Phone, DOB,
DATE_FORMAT(DOB, "%w %D %M %Y") FROM customers;

SELECT CustomerID, FirstName, LastName, Email, Phone, DOB,
DATE_FORMAT(DOB, "%w - %d - %m - %y") as full_date_format FROM customers;

SELECT CustomerID, FirstName, LastName, Email, Phone, DOB,
adddate(DOB, interval 2 DAY) FROM customers;

SELECT CustomerID, FirstName, LastName, Email, Phone, DOB,
adddate(DOB, interval 6 MONTH) FROM customers;

SELECT CustomerID, FirstName, LastName, Email, Phone, DOB,
adddate(DOB, interval -6 MONTH) MONTH_6 FROM customers;

SELECT CustomerID, FirstName, LastName, Email, Phone, DOB,
adddate(DOB, interval 6 DAY) DAY_6 FROM customers;

CREATE TABLE CU2 SELECT CustomerID, FirstName, LastName, Email, Phone, DOB,
adddate(DOB, interval 6 DAY) DAY_6 FROM customers;

SELECT CustomerID, FirstName, LastName, Email, Phone, DOB, DAY_6,
DATEDIFF(DOB , DAY_6) FROM CU2;

SELECT CustomerID, FirstName, LastName, Email, Phone, DOB, DAY_6,
DATEDIFF(DAY_6,DOB) AS DIFF_DATE FROM CU2;

SELECT current_date();

SELECT current_time();

SELECT DOB,year(DOB)FROM CU2;

SELECT DOB,MONTH(DOB)FROM CU2;

SELECT DOB,DAY(DOB)FROM CU2;

SELECT DOB,year(DOB),MONTH(DOB),DAY(DOB)FROM CU2;

SELECT DOB,concat_ws("-",YEAR(DOB),MONTH(DOB),DAY(DOB)) AS "*" FROM CU2;


