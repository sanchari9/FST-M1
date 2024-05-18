REM   Script: Activity_1_2_3_4_5
REM   Reskilling Program

DROP TABLE salesman;

CREATE TABLE salesman ( 
    salesman_id int PRIMARY KEY, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int 
);

DESCRIBE salesman


INSERT ALL 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5001, James Hoog, New York, 15) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5002, Nail Knite, Paris, 13) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5005, Pit Alex, London, 11) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5006, McLyon, Paris, 14) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5007, Paul Adam, Rome, 13) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5003, Lauson Hen, San Jose, 12) 
SELECT 1 FROM DUAL;

DROP TABLE salesman; /*To make the table reusable*/ 
CREATE TABLE salesman ( 
    salesman_id int PRIMARY KEY, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int 
);

DESCRIBE salesman


INSERT ALL 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5001, 'James Hoog', 'New York', 15) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5002, Nail Knite, Paris, 13) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5005, Pit Alex, London, 11) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5006, McLyon, Paris, 14) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5007, Paul Adam, Rome, 13) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5003, Lauson Hen, San Jose, 12) 
SELECT 1 FROM DUAL;

DESCRIBE salesman


INSERT ALL 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5001, 'James Hoog', 'New York', 15) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5002, 'Nail Knite', Paris, 13) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5005, 'Pit Alex', London, 11) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5006, McLyon, Paris, 14) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5007, 'Paul Adam', Rome, 13) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

DROP TABLE salesman; /*To make the table reusable*/ 
CREATE TABLE salesman ( 
    salesman_id int PRIMARY KEY, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int 
);

DESCRIBE salesman


INSERT ALL 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5001, 'James Hoog', 'New York', 15) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5002, 'Nail Knite', 'Paris', 13) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5005, 'Pit Alex', 'London', 11) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5006, 'McLyon', 'Paris', 14) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5007, 'Paul Adam', 'Rome', 13) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

INSERT ALL 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5001, 'James Hoog', 'New York', 15) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5002, 'Nail Knite', 'Paris', 13) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5005, 'Pit Alex', 'London', 11) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5006, 'McLyon', 'Paris', 14) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5007, 'Paul Adam', 'Rome', 13) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

INSERT ALL 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5001, 'James Hoog', 'New York', 15) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5002, 'Nail Knite', 'Paris', 13) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5005, 'Pit Alex', 'London', 11) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5006, 'McLyon', 'Paris', 14) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5007, 'Paul Adam', 'Rome', 13) 
	INTO salesman (salesman_id, salesman_name, salesman_city, commission) VALUES (5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

DESCRIBE salesman


DROP TABLE salesman; /*To make the table reusable*/ 
CREATE TABLE salesman ( 
    salesman_id int PRIMARY KEY, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int 
);

DESCRIBE salesman


INSERT ALL 
	INTO salesman VALUES (5001, 'James Hoog', 'New York', 15) 
	INTO salesman VALUES (5002, 'Nail Knite', 'Paris', 13) 
	INTO salesman VALUES (5005, 'Pit Alex', 'London', 11) 
	INTO salesman VALUES (5006, 'McLyon', 'Paris', 14) 
	INTO salesman VALUES (5007, 'Paul Adam', 'Rome', 13) 
	INTO salesman VALUES (5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

DROP TABLE salesman; /*To make the table reusable*/ 
CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int 
);

DESCRIBE salesman


INSERT ALL 
	INTO salesman VALUES (5001, 'James Hoog', 'New York', 15) 
	INTO salesman VALUES (5002, 'Nail Knite', 'Paris', 13) 
	INTO salesman VALUES (5005, 'Pit Alex', 'London', 11) 
	INTO salesman VALUES (5006, 'McLyon', 'Paris', 14) 
	INTO salesman VALUES (5007, 'Paul Adam', 'Rome', 13) 
	INTO salesman VALUES (5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

DROP TABLE salesman; /;

DROP TABLE salesman;

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int 
);

DESCRIBE salesman


INSERT ALL 
	INTO salesman VALUES (5001, 'James Hoog', 'New York', 15) 
	INTO salesman VALUES (5002, 'Nail Knite', 'Paris', 13) 
	INTO salesman VALUES (5005, 'Pit Alex', 'London', 11) 
	INTO salesman VALUES (5006, 'McLyon', 'Paris', 14) 
	INTO salesman VALUES (5007, 'Paul Adam', 'Rome', 13) 
	INTO salesman VALUES (5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

DROP TABLE salesman;

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int 
);

DESCRIBE salesman


salesman_id int AUTO INCREMENT; 


INSERT ALL 
	INTO salesman VALUES (5001, 'James Hoog', 'New York', 15) 
	INTO salesman VALUES (5002, 'Nail Knite', 'Paris', 13) 
	INTO salesman VALUES (5005, 'Pit Alex', 'London', 11) 
	INTO salesman VALUES (5006, 'McLyon', 'Paris', 14) 
	INTO salesman VALUES (5007, 'Paul Adam', 'Rome', 13) 
	INTO salesman VALUES (5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

DROP TABLE salesman;

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int 
);

DESCRIBE salesman


INSERT ALL 
	INTO salesman VALUES (5001, 'James Hoog', 'New York', 15) 
	INTO salesman VALUES (5002, 'Nail Knite', 'Paris', 13) 
	INTO salesman VALUES (5005, 'Pit Alex', 'London', 11) 
	INTO salesman VALUES (5006, 'McLyon', 'Paris', 14) 
	INTO salesman VALUES (5007, 'Paul Adam', 'Rome', 13) 
	INTO salesman VALUES (5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

DROP TABLE salesman;

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int 
);

DESCRIBE salesman


INSERT ALL 
	INTO salesman VALUES (5001, 'James Hoog', New York, 15) 
	INTO salesman VALUES (5002, 'Nail Knite', 'Paris', 13) 
	INTO salesman VALUES (5005, 'Pit Alex', 'London', 11) 
	INTO salesman VALUES (5006, 'McLyon', 'Paris', 14) 
	INTO salesman VALUES (5007, 'Paul Adam', 'Rome', 13) 
	INTO salesman VALUES (5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

DROP TABLE salesman;

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int 
);

DESCRIBE salesman


INSERT ALL 
	INTO salesman VALUES (5001, 'James Hoog', 'New York', 15) 
	INTO salesman VALUES (5002, 'Nail Knite', 'Paris', 13) 
	INTO salesman VALUES (5005, 'Pit Alex', 'London', 11) 
	INTO salesman VALUES (5006, 'McLyon', 'Paris', 14) 
	INTO salesman VALUES (5007, 'Paul Adam', 'Rome', 13) 
	INTO salesman VALUES (5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

SELECT * FROM salesman;

SELECT salesman_id, salesman_city FROM salesman;

SELECT * FROM salesman;

	WHERE salesman_city = 'Paris';


SELECT salesman_id FROM salesman;

	WHERE salesman_city = 'Paris';


SELECT * FROM salesman 
	WHERE salesman_city = 'Paris';

DROP TABLE salesman;

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int 
);

DESCRIBE salesman


INSERT ALL 
	INTO salesman VALUES (5001, 'James Hoog', 'New York', 15) 
	INTO salesman VALUES (5002, 'Nail Knite', 'Paris', 13) 
	INTO salesman VALUES (5005, 'Pit Alex', 'London', 11) 
	INTO salesman VALUES (5006, 'McLyon', 'Paris', 14) 
	INTO salesman VALUES (5007, 'Paul Adam', 'Rome', 13) 
	INTO salesman VALUES (5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

SELECT * FROM salesman;

SELECT salesman_id, salesman_city FROM salesman;

SELECT * FROM salesman 
	WHERE salesman_city = 'Paris';

SELECT * FROM salesman 
	WHERE salesman_city = 'Paris';

SELECT salesman_id, commission FROM salesman 
	WHERE salesman_name = 'Paul Adam';

DROP TABLE salesman;

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int 
);

DESCRIBE salesman


INSERT ALL 
	INTO salesman VALUES (5001, 'James Hoog', 'New York', 15) 
	INTO salesman VALUES (5002, 'Nail Knite', 'Paris', 13) 
	INTO salesman VALUES (5005, 'Pit Alex', 'London', 11) 
	INTO salesman VALUES (5006, 'McLyon', 'Paris', 14) 
	INTO salesman VALUES (5007, 'Paul Adam', 'Rome', 13) 
	INTO salesman VALUES (5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

SELECT * FROM salesman;

SELECT salesman_id, salesman_city FROM salesman;

SELECT * FROM salesman 
	WHERE salesman_city = 'Paris';

SELECT salesman_id, commission FROM salesman 
	WHERE salesman_name = 'Paul Adam';

ALTER TABLE salesman 
	ADD (grade int);

ALTER TABLE salesman 
ADD COLUMN grade int;

DROP TABLE salesman;

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int 
);

DESCRIBE salesman


INSERT ALL 
	INTO salesman VALUES (5001, 'James Hoog', 'New York', 15) 
	INTO salesman VALUES (5002, 'Nail Knite', 'Paris', 13) 
	INTO salesman VALUES (5005, 'Pit Alex', 'London', 11) 
	INTO salesman VALUES (5006, 'McLyon', 'Paris', 14) 
	INTO salesman VALUES (5007, 'Paul Adam', 'Rome', 13) 
	INTO salesman VALUES (5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

SELECT * FROM salesman;

SELECT salesman_id, salesman_city FROM salesman;

SELECT * FROM salesman 
	WHERE salesman_city = 'Paris';

SELECT salesman_id, commission FROM salesman 
	WHERE salesman_name = 'Paul Adam';

ALTER TABLE salesman 
	ADD (grade int);

PDATE salesman 


	SET grade = 100


SELECT grade FROM salesman;

UPDATE salesman 
	SET grade = 100;

SELECT grade FROM salesman;

DROP TABLE salesman;

DROP TABLE salesman;

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int 
);

DESCRIBE salesman


INSERT ALL 
	INTO salesman VALUES (5001, 'James Hoog', 'New York', 15) 
	INTO salesman VALUES (5002, 'Nail Knite', 'Paris', 13) 
	INTO salesman VALUES (5005, 'Pit Alex', 'London', 11) 
	INTO salesman VALUES (5006, 'McLyon', 'Paris', 14) 
	INTO salesman VALUES (5007, 'Paul Adam', 'Rome', 13) 
	INTO salesman VALUES (5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

SELECT * FROM salesman;

SELECT salesman_id, salesman_city FROM salesman;

SELECT * FROM salesman 
	WHERE salesman_city = 'Paris';

SELECT salesman_id, commission FROM salesman 
	WHERE salesman_name = 'Paul Adam';

ALTER TABLE salesman 
	ADD (grade int);

UPDATE salesman 
	SET grade = 100 
SELECT grade FROM salesman;

DROP TABLE salesman;

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int 
);

DESCRIBE salesman


INSERT ALL 
	INTO salesman VALUES (5001, 'James Hoog', 'New York', 15) 
	INTO salesman VALUES (5002, 'Nail Knite', 'Paris', 13) 
	INTO salesman VALUES (5005, 'Pit Alex', 'London', 11) 
	INTO salesman VALUES (5006, 'McLyon', 'Paris', 14) 
	INTO salesman VALUES (5007, 'Paul Adam', 'Rome', 13) 
	INTO salesman VALUES (5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

SELECT * FROM salesman;

SELECT salesman_id, salesman_city FROM salesman;

SELECT * FROM salesman 
	WHERE salesman_city = 'Paris';

SELECT salesman_id, commission FROM salesman 
	WHERE salesman_name = 'Paul Adam';

ALTER TABLE salesman 
	ADD (grade int);

UPDATE salesman 
	SET grade = 100;

SELECT grade FROM salesman;

UPDATE salesman 
	SET grade = 200 
	WHERE salesman_city = 'Rome';

UPDATE salesman 
	SET grade = 300 
	WHERE salesman_name = 'James Hoog';

UPDATE salesman 
	RENAME 'McLyon' TO 'Pierre';

ALTER salesman 
	RENAME 'McLyon' TO 'Pierre';

UPDATE salesman 
	SET salesman_name = 'Pierre' 
    WHERE salesman_name = 'McLyon';

SELECT * FROM salesman;

