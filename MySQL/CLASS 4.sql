CREATE DATABASE SEPT_7;
USE SEPT_7;
CREATE TABLE DAY2
(ORDER_ID INT PRIMARY KEY AUTO_INCREMENT,
D_NAME VARCHAR (20),
D_AGE INT);

INSERT INTO DAY2 VALUES
(111,"AASHVI",-8);
CREATE TABLE DAY3
(ORDER_ID INT PRIMARY KEY AUTO_INCREMENT,
D_NAME VARCHAR (20),
D_AGE INT UNSIGNED);

INSERT INTO DAY3 VALUES
(111,"AASHVI",18);

CREATE TABLE VALUE_3
(V_ID INT PRIMARY KEY AUTO_INCREMENT,
V_NAME VARCHAR (20),
V_GENDER ENUM ("M","F","O")
);
INSERT INTO VALUE_3 VALUES
(100,"AASHVI","F");

SELECT DISTINCT EMBARKED FROM TITANIC;

SELECT DISTINCT SEX FROM TITANIC;

SELECT DISTINCT AGE FROM TITANIC;

SELECT DISTINCT AGE FROM TITANIC ORDER BY AGE;

SELECT DISTINCT AGE FROM TITANIC ORDER BY AGE DESC;

SELECT*FROM TITANIC ORDER BY AGE ASC,PCLASS DESC;

SELECT*FROM TITANIC ORDER BY AGE ASC,PCLASS DESC LIMIT 5;

DESCRIBE TITANIC;

USE BankingDB;
INSERT INTO ACCOUNTS VALUES(202,"SAVING",10000);
INSERT INTO ACCOUNTS VALUES(203,"Salary",23000);

Select*from accounts where AccountType='Saving';

Select*from accounts where Balance>20000;

Use Sept_7;

Select* from titanic;

Select* from titanic limit 5;

Select* from titanic limit 5 offset 2;

Select* from titanic order by age desc limit 5 offset 2;

Select 4+5;

/*Select age ,Pclass, age+Pclass from titanic;

Select age ,Pclass, age-Pclass from titanic;

Select age ,Pclass, age*Pclass from titanic;
*/

Select age ,Pclass, age/Pclass from titanic;

Select age ,Pclass, age%Pclass from titanic;

Select age ,Pclass, age%Pclass as '% 'from titanic;

