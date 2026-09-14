USE Sept_7;

Select*from titanic where name like'A%';

Select*from titanic where name like'A%N';

Select*from titanic where name like'A_N%';

Select*from titanic where age in (15 ,19,21);

Select*from titanic where age in (15 ,19,21,70) order by age;

Select PassengerId, Survived, Pclass, Name, Sex, Fare, Cabin, Embarked,
case
when age<18 then "ALLOWED FOR VOTE"
WHEN AGE=18 THEN "@@@ WELCOME FOR 1 VOTE"
ELSE "NOT ALLOWED" END AS VOTEE FROM titanic;

Select PassengerId, Survived, Pclass, Name, Sex, Fare, Cabin, Embarked,
RANK() OVER (ORDER BY FARE DESC) FROM TITANIC ORDER BY FARE DESC;

Select PassengerId, Survived, Pclass, Name, Sex, Fare, Cabin, Embarked,
SUM(FARE) OVER (ORDER BY FARE DESC) FROM TITANIC ORDER BY FARE DESC;