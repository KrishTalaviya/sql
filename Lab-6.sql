--lab_6.1 MATH FUNCTION
--ANS1
SELECT 5*30
--ANS2
SELECT ABS(-25),ABS(25),ABS(-50),ABS(50)
--ANS3
SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2)
--ANS4
SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2)
--ANS5
SELECT 5%2,5%3
--ANS6
SELECT POWER(3,2),POWER(4,2)
--ANS7.1 POWERFUNCTION
SELECT POWER(25,0.5),POWER(30,0.5),POWER(50,0.5)
--ANS7.2 SQRT FUNCTION
SELECT SQRT(25),SQRT(30),SQRT(50)
--ANS8 POWER FUNCTION 
SELECT POWER(5,2),POWER(15,2),POWER(25,2)
--ANS8.2 SQUARE FUNCTION
SELECT SQUARE(5),SQUARE(15),SQUARE(25)
--ANS9
SELECT PI()
--ANS10
SELECT  ROUND(157.732,2),ROUND(157.732,0),ROUND(157.732,-2)
--ANS11
SELECT EXP(2),EXP(3)
--ANS12
SELECT LOG10(5),LOG(100)
--ANS13
SELECT SIN(3.1415),COS(3.1415),TAN(3.1415)
--ANS14
SELECT SIGN(-25),SIGN(0),SIGN(25)
--ANS15
SELECT RAND()

--LAB-6.2 STRING FUNCTIONS
--ANS1
SELECT LEN(NULL),LEN('HELLO'),LEN('')
--ANS2
SELECT LOWER('DARSHAN'),UPPER('DARSHAN')
--ANS3
SELECT SUBSTRING('DARSHAN',1,3)
--ANS4
SELECT SUBSTRING('DARSHANUNIVERSITY',3,8)
--ANS5
SELECT REPLACE('abc123efg',123,'XYZ'),REPLACE('abcabcabc','c',5)
--ANS6
SELECT ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII(0),ASCII(9)
--ANS7
SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57)
--ANS8
SELECT LTRIM('   HELLO')
--ANS9
SELECT RTRIM('HELLO   ')
--ANS10
SELECT LEFT('SQL SERVER',4),RIGHT('SQL SERVER',5)
--ANS11
SELECT CAST(1234.56 AS FLOAT)
--ANS12
SELECT CONVERT(INT,10.58)
--ANS13
SELECT SPACE(10)+'DARSHAN'
--ANS14.1
SELECT 'DARSHAN'+'UNIVERSITY'
--ANS14.2
SELECT CONCAT('DARSHAN','UNIVERSITY')
--ANS15
SELECT REVERSE('DARSHAN')
--ANS16
SELECT REPLICATE('DARSHAN',3)
--ANS17
SELECT STUFF('SQL TUTOTRIAL',1,3,'HTML')
--ANS18
SELECT COALESCE(NULL,NULL,NULL,NULL,'CSS',NULL)
--ANS19
SELECT ISNUMERIC('A-1234')
--ANS20
SELECT CHARINDEX('T','CUSTOMERS')
 
