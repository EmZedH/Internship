CREATE TABLE COMPANY (ID INT PRIMARY KEY, NAME TEXT, AGE TEXT, ADDRESS TEXT, SALARY TEXT);

INSERT INTO COMPANY VALUES (1,'PAUL',32,'CALIFORNIA',20000),
(2,'ALLEN',25,'TEXAS',15000),(3,'TEDDY',23,'NORWAY',20000),
(4,'MARK',25,'RICH-MOND',65000),
(5,'DAVID',27,'TEXAS',85000),
(6,'KIM',22,'SOUTH-HALL',45000),
(7,'JAMES',24,'HOUSTON',10000);

.mode column
.header on

SELECT * FROM COMPANY;

/*
id  name   age  address     salary 
--  -----  ---  ----------  -------
1   PAUL   32   CALIFORNIA  20000.0
2   ALLEN  25   TEXAS       15000.0
3   TEDDY  23   NORWAY      20000.0
4   MARK   25   RICH-MOND   65000.0
5   DAVID  27   TEXAS       85000.0
6   KIM    22   SOUTH-HALL  45000.0
7   JAMES  24   HOUSTON     10000.0
*/