REM   Script: Activity_9_10
REM   Reskill Training

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int 
);

INSERT ALL 
	INTO salesman VALUES (5001, 'James Hoog', 'New York', 15) 
	INTO salesman VALUES (5002, 'Nail Knite', 'Paris', 13) 
	INTO salesman VALUES (5005, 'Pit Alex', 'London', 11) 
	INTO salesman VALUES (5006, 'McLyon', 'Paris', 14) 
	INTO salesman VALUES (5007, 'Paul Adam', 'Rome', 13) 
	INTO salesman VALUES (5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

create table orders( 
    order_no int primary key,  
    purchase_amount float,  
    order_date date, 
    customer_id int,  
    salesman_id int 
);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

create table customers ( 
    customer_id int primary key,  
    customer_name varchar(32), 
    city varchar(20),  
    grade int,  
    salesman_id int 
);

INSERT ALL 
    INTO customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001) 
    INTO customers VALUES (3007, 'Brad Davis', 'New York', 200, 5001) 
    INTO customers VALUES (3005, 'Graham Zusi', 'California', 200, 5002) 
    INTO customers VALUES (3008, 'Julian Green', 'London', 300, 5002) 
    INTO customers VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006) 
    INTO customers VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003) 
    INTO customers VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007) 
    INTO customers VALUES (3001, 'Brad Guzan', 'London', 300, 5005) 
SELECT 1 FROM DUAL;

SELECT * FROM salesman;

SELECT * FROM orders;

SELECT * FROM customers;

SELECT s.salesman_id, s.salesman_name, c.customer_name, c.customer_id  
FROM salesman s INNER JOIN customers c 
ON s.salesman_id = c.salesman_id;

SELECT c.customer_name, c.customer_id, c.grade, s.salesman_id 
FROM customers c LEFT OUTER JOIN salesman s 
ON s.salesman_id = c.salesman_id WHERE c.grade < 300 
ORDER BY c.customer_name ASC;

SELECT c.customer_name, c.customer_id, s.salesman_id, s.salesman_name, s.commission,  
FROM customers c RIGHT OUTER JOIN salesman s 
ON s.salesman_id = c.salesman_id WHERE s.commission > 12;

SELECT c.customer_name, c.customer_id, s.salesman_id, s.salesman_name, s.commission,  
FROM customers c RIGHT OUTER JOIN salesman s 
ON s.salesman_id = c.salesman_id WHERE s.commission > 12;

SELECT c.customer_name, c.customer_id, s.salesman_id, s.salesman_name, s.commission 
FROM customers c RIGHT OUTER JOIN salesman s 
ON s.salesman_id = c.salesman_id WHERE s.commission > 12;

SELECT c.customer_name, c.customer_id, s.salesman_id, s.salesman_name, s.commission 
FROM customers c LEFT OUTER JOIN salesman s 
ON s.salesman_id = c.salesman_id WHERE s.commission > 12;

SELECT c.customer_name, c.customer_id, s.salesman_id, s.salesman_name, s.commission 
FROM customers c INNER JOIN salesman s 
ON s.salesman_id = c.salesman_id WHERE s.commission > 12;

ELECT c.customer_name, c.customer_id, s.salesman_id, s.salesman_name, s.commission 


FROM customers c LEFT OUTER JOIN salesman s 


ON s.salesman_id = c.salesman_id WHERE s.commission > 12;


SELECT c.customer_name, c.customer_id, s.salesman_id, s.salesman_name, s.commission 
FROM customers c LEFT OUTER JOIN salesman s 
ON s.salesman_id = c.salesman_id WHERE s.commission > 12;

SELECT o.order_no AS "Order Number", o.order_date, o.purchase_amount, o.customer_id, o.salesman_id, c.customer_id, c.salesman_id, c.customer_name, s.salesman_id, s.salesman_name, s.commission 
FROM salesman s INNER JOIN customers c 
ON s.salesman_id = c.customer_id 
INNER JOIN orders o 
ON s.salesman_id = o.salesman_id;

SELECT o.order_no AS "Order Number", o.order_date, o.purchase_amount, o.customer_id, o.salesman_id, c.customer_id, c.salesman_id, c.customer_name, s.salesman_id, s.salesman_name, s.commission 
FROM salesman s FULL JOIN customers c 
ON s.salesman_id = c.customer_id 
FULL JOIN orders o 
ON s.salesman_id = o.salesman_id;

SELECT o.order_no AS "Order Number", o.order_date, o.purchase_amount, o.customer_id, o.salesman_id, c.customer_id, c.salesman_id, c.customer_name, s.salesman_id, s.salesman_name, s.commission 
FROM customers c INNER JOIN salesman s 
ON c.customer_id = s.salesman_id 
INNER JOIN orders o 
ON c.customer_id = o.salesman_id;

SELECT o.order_no, o.order_date, o.purchase_amount, o.customer_id, o.salesman_id, c.customer_id, c.salesman_id, c.customer_name, s.salesman_id, s.salesman_name, s.commission 
FROM customers c INNER JOIN orders o 
ON c.customer_id = o.order_no;

SELECT o.order_no, o.order_date, o.purchase_amount, o.customer_id, o.salesman_id, c.customer_id, c.salesman_id, c.customer_name 
FROM customers c INNER JOIN orders o 
ON c.customer_id = o.order_no;

SELECT o.order_no, o.order_date, o.purchase_amount, o.customer_id, o.salesman_id, c.customer_id, c.salesman_id, c.customer_name 
FROM customers c INNER JOIN orders o 
ON c.customer_id = o.customer_id;

SELECT o.customer_id, o.salesman_id, c.customer_id, c.salesman_id 
FROM customers c INNER JOIN orders o 
ON c.customer_id = o.customer_id;

SELECT o.customer_id, o.salesman_id, c.customer_id, c.salesman_id, s.salesman_id, s.salesman_name 
FROM customers c INNER JOIN orders o 
ON c.customer_id = o.customer_id 
INNER JOIN salesman s 
ON c.salesman_id = s.salesman_id;

SELECT o.salesman_id, c.customer_id, c.salesman_id, s.salesman_id, s.salesman_name 
FROM customers c INNER JOIN orders o 
ON c.customer_id = o.customer_id 
INNER JOIN salesman s 
ON c.salesman_id = s.salesman_id;

SELECT o.order_no AS "Order Number", c.customer_id AS "Customer ID", c.customer_name AS "Customer Name", s.salesman_id AS "Salesman ID", s.salesman_name AS "Salesman Name" 
FROM customers c INNER JOIN orders o 
ON c.customer_id = o.customer_id 
INNER JOIN salesman s 
ON c.salesman_id = s.salesman_id;

SELECT o.order_no AS "Order Number", o.order_date AS "Order Date", o.purchase_amount AS "Purchase Amount", c.customer_name AS "Customer Name", s.salesman_name AS "Salesman Name", s.commission AS "Commission" 
FROM customers c INNER JOIN orders o 
ON c.customer_id = o.customer_id 
INNER JOIN salesman s 
ON c.salesman_id = s.salesman_id;

SELECT c.customer_id, c.customer_name FROM customers 
WHERE c.customer_id = 3007;

SELECT c.customer_id, c.customer_name FROM customers c 
WHERE c.customer_id = 3007;

SELECT c.customer_id, c.customer_name, c.salesman_id FROM customers c 
WHERE c.customer_id = 3007;

SELECT c.customer_id, c.customer_name, s.salesman_name  
FROM customers c INNER JOIN salesman s 
ON c.salesman_id = s.salesman_id 
WHERE c.customer_id = 3007;

SELECT * FROM orders 
WHERE( 
    SELECT c.customer_id, c.customer_name, s.salesman_name  
	FROM customers c INNER JOIN salesman s 
	ON c.salesman_id = s.salesman_id 
	WHERE c.customer_id = 3007;

);


SELECT * FROM orders 
WHERE( 
    SELECT c.customer_id, c.customer_name, s.salesman_name  
	FROM customers c INNER JOIN salesman s 
	ON c.salesman_id = s.salesman_id 
	WHERE c.customer_id = 3007;

)


SELECT * FROM orders 
WHERE( 
    SELECT c.customer_id, c.customer_name, s.salesman_name  
	FROM customers c INNER JOIN salesman s 
	ON c.salesman_id = s.salesman_id 
	WHERE c.customer_id = 3007 
);

SELECT * FROM orders 
WHERE( 
SELECT c.customer_id, c.customer_name, s.salesman_name  
FROM customers c INNER JOIN salesman s 
ON c.salesman_id = s.salesman_id 
WHERE c.customer_id = 3007 
);

SELECT * FROM orders 
WHERE(SELECT c.customer_id, c.customer_name, s.salesman_name  
		FROM customers c INNER JOIN salesman s 
ON c.salesman_id = s.salesman_id 
WHERE c.customer_id = 3007 
);

SELECT * FROM orders 
WHERE o.order_id = ( 
    SELECT c.customer_id, c.customer_name, s.salesman_name  
	FROM customers c INNER JOIN salesman s 
	ON c.salesman_id = s.salesman_id 
	WHERE c.customer_id = 3007 
);

SELECT * FROM orders o 
WHERE o.order_id = ( 
    SELECT c.customer_id, c.customer_name, s.salesman_name  
	FROM customers c INNER JOIN salesman s 
	ON c.salesman_id = s.salesman_id 
	WHERE c.customer_id = 3007 
);

SELECT * FROM orders 
WHERE order_id = ( 
    SELECT c.customer_id, c.customer_name, s.salesman_name  
	FROM customers c INNER JOIN salesman s 
	ON c.salesman_id = s.salesman_id 
	WHERE c.customer_id = 3007 
);

SELECT * FROM orders 
WHERE order_no = ( 
    SELECT c.customer_id, c.customer_name, s.salesman_name  
	FROM customers c INNER JOIN salesman s 
	ON c.salesman_id = s.salesman_id 
	WHERE c.customer_id = 3007 
);

SELECT salesman_id FROM customers 
WHERE customer_id = 3007;

SELECT * FROM orders o 
WHERE o.salesman_id = ( 
    SELECT c.customer_id, c.customer_name, s.salesman_name  
	FROM customers c INNER JOIN salesman s 
	ON c.salesman_id = s.salesman_id 
	WHERE c.customer_id = 3007 
);

SELECT * FROM orders o 
WHERE o.salesman_id = ( 
    SELECT salesman_id FROM customers 
WHERE customer_id = 3007;

);


SELECT * FROM orders o 
WHERE o.salesman_id = ( 
    SELECT salesman_id FROM customers 
WHERE customer_id = 3007 
);

SELECT * FROM orders o 
WHERE o.customer_idd = ( 
    SELECT salesman_id FROM customers 
	WHERE customer_id = 3007 
);

SELECT * FROM orders o 
WHERE o.customer_idd = ( 
    SELECT salesman_id FROM customers 
	WHERE customer_id = 3007 
);

SELECT * FROM orders o 
WHERE o.customer_idd = ( 
    SELECT salesman_id FROM customers 
	WHERE customer_id = 3007 
);

SELECT * FROM orders o 
WHERE o.customer_id = ( 
    SELECT salesman_id FROM customers 
	WHERE customer_id = 3007 
);

SELECT * FROM orders o 
WHERE o.salesman_id  = ( 
    SELECT salesman_id FROM customers 
	WHERE customer_id = 3007 
);

SELECT * FROM orders 
WHERE salesman_id=(SELECT DISTINCT salesman_id FROM orders WHERE customer_id=3007);

SELECT * FROM orders o 
WHERE o.salesman_id  = ( 
    SELECT salesman_id FROM orders 
	WHERE customer_id = 3007 
);

SELECT * FROM orders o 
WHERE o.salesman_id  = ( 
    SELECT salesman_id FROM orders o 
	WHERE o.customer_id = 3007 
);

SELECT salesman_id FROM salesman s 
	WHERE s.salesman_city = "New York";

SELECT salesman_id, salesman_name FROM salesman s 
	WHERE s.salesman_city = 'New York';

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(20), 
    salesman_city varchar2(20), 
    commission int 
);

INSERT ALL 
	INTO salesman VALUES (5001, 'James Hoog', 'New York', 15) 
	INTO salesman VALUES (5002, 'Nail Knite', 'Paris', 13) 
	INTO salesman VALUES (5005, 'Pit Alex', 'London', 11) 
	INTO salesman VALUES (5006, 'McLyon', 'Paris', 14) 
	INTO salesman VALUES (5007, 'Paul Adam', 'Rome', 13) 
	INTO salesman VALUES (5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

create table orders( 
    order_no int primary key,  
    purchase_amount float,  
    order_date date, 
    customer_id int,  
    salesman_id int 
);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

create table customers ( 
    customer_id int primary key,  
    customer_name varchar(32), 
    city varchar(20),  
    grade int,  
    salesman_id int 
);

INSERT ALL 
    INTO customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001) 
    INTO customers VALUES (3007, 'Brad Davis', 'New York', 200, 5001) 
    INTO customers VALUES (3005, 'Graham Zusi', 'California', 200, 5002) 
    INTO customers VALUES (3008, 'Julian Green', 'London', 300, 5002) 
    INTO customers VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006) 
    INTO customers VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003) 
    INTO customers VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007) 
    INTO customers VALUES (3001, 'Brad Guzan', 'London', 300, 5005) 
SELECT 1 FROM DUAL;

SELECT * FROM salesman;

SELECT * FROM orders;

SELECT * FROM customers;

SELECT s.salesman_id, s.salesman_name, c.customer_name, c.customer_id  
FROM salesman s INNER JOIN customers c 
ON s.salesman_id = c.salesman_id;

SELECT c.customer_name, c.customer_id, c.grade, s.salesman_id 
FROM customers c LEFT OUTER JOIN salesman s 
ON s.salesman_id = c.salesman_id WHERE c.grade < 300 
ORDER BY c.customer_name ASC;

SELECT c.customer_name, c.customer_id, s.salesman_id, s.salesman_name, s.commission 
FROM customers c INNER JOIN salesman s 
ON s.salesman_id = c.salesman_id WHERE s.commission > 12;

SELECT o.order_no AS "Order Number", o.order_date AS "Order Date", o.purchase_amount AS "Purchase Amount", c.customer_name AS "Customer Name", s.salesman_name AS "Salesman Name", s.commission AS "Commission" 
FROM customers c INNER JOIN orders o 
ON c.customer_id = o.customer_id 
INNER JOIN salesman s 
ON c.salesman_id = s.salesman_id;

SELECT * FROM orders o 
WHERE o.salesman_id  = ( 
    SELECT salesman_id FROM orders o 
	WHERE o.customer_id = 3007 
);

SELECT * FROM orders o 
WHERE o.salesman_id  = ( 
    SELECT salesman_id, salesman_name FROM salesman s 
	WHERE s.salesman_city = 'New York';

); 


SELECT * FROM orders o 
WHERE o.salesman_id  = ( 
    SELECT salesman_id, salesman_name FROM salesman s 
	WHERE s.salesman_city = 'New York';

);


SELECT * FROM orders o 
WHERE o.salesman_id  = ( 
    SELECT salesman_id, salesman_name FROM salesman s 
	WHERE s.salesman_city = 'New York' 
);

SELECT o.order_no FROM orders o 
WHERE o.salesman_id  = ( 
    SELECT salesman_id FROM salesman s 
	WHERE s.salesman_city = 'New York' 
);

SELECT * FROM orders o 
WHERE o.salesman_id  = ( 
    SELECT salesman_id FROM salesman s 
	WHERE s.salesman_city = 'New York' 
);

SELECT * FROM orders 
WHERE salesman_id  = ( 
    SELECT salesman_id FROM salesman s 
	WHERE s.salesman_city = 'New York' 
);

SELECT * FROM orders 
WHERE salesman_id  IN ( 
    SELECT salesman_id FROM salesman s 
	WHERE s.salesman_city = 'New York' 
);

SELECT * FROM orders o 
WHERE o.salesman_id  IN ( 
    SELECT salesman_id FROM orders o 
	WHERE o.customer_id = 3007 
);

SELECT * FROM orders 
WHERE salesman_id  IN ( 
    SELECT salesman_id FROM salesman s 
	WHERE s.salesman_city = 'New York' 
);

SELECT * FROM orders o 
WHERE o.salesman_id  IN ( 
    SELECT salesman_id, salesman_name FROM salesman s 
	WHERE s.salesman_city = 'New York' 
);

SELECT * FROM orders o 
WHERE o.salesman_id  IN ( 
    SELECT salesman_id FROM salesman s 
	WHERE s.salesman_city = 'New York' 
);

SELECT AVG(c.grade) FROM customers c 
GROUP BY c.city = 'New York';

SELECT c.customer_id, AVG(c.grade) FROM customers c 
GROUP BY c.customer_id 
HAVING c.city = 'New York';

SELECT c.customer_id, AVG(c.grade) FROM customers c 
GROUP BY c.customer_id 
WHERE c.city = 'New York';

SELECT c.customer_id, AVG(c.grade) FROM customers c 
WHERE c.city = 'New York';

GROUP BY c.customer_id


SELECT c.customer_id, AVG(c.grade) FROM customers c 
WHERE c.city = 'New York' 
GROUP BY c.customer_id;

SELECT CONUT(c.customer_id) FROM customers c 
WHERE c.customer_id  IN ( 
    SELECT c.customer_id, AVG(c.grade) FROM customers c 
	WHERE c.city = 'New York' 
	GROUP BY c.customer_id;

);


SELECT CONUT(c.customer_id) FROM customers c 
WHERE c.customer_id  IN ( 
    SELECT c.customer_id, AVG(c.grade) FROM customers c 
	WHERE c.city = 'New York' 
	GROUP BY c.customer_id 
);

SELECT CONUT(*) FROM customers c 
WHERE c.customer_id  IN ( 
    SELECT c.customer_id, AVG(c.grade) FROM customers c 
	WHERE c.city = 'New York' 
	GROUP BY c.customer_id 
);

SELECT CONUT(c.customer_id) FROM customers c 
WHERE c.customer_id  IN ( 
    SELECT AVG(c.grade) FROM customers c 
	WHERE c.city = 'New York' 
);

SELECT AVG(c.grade) FROM customers c 
	WHERE c.city = 'New York';

SELECT CONUT(c.customer_id) FROM customers c 
GROUP BY c.customer_id  HAVING c.grade > ( 
    SELECT AVG(c.grade) FROM customers c 
	WHERE c.city = 'New York' 
);

SELECT CONUT(*) FROM customers c 
GROUP BY c.customer_id  HAVING c.grade > ( 
    SELECT AVG(c.grade) FROM customers c 
	WHERE c.city = 'New York' 
);

SELECT c.customer_id, CONUT(*) FROM customers c 
GROUP BY c.customer_id  HAVING c.grade > ( 
    SELECT AVG(c.grade) FROM customers c 
	WHERE c.city = 'New York' 
);

SELECT c.grade, CONUT(*) FROM customers c 
GROUP BY c.grade  HAVING c.grade > ( 
    SELECT AVG(c.grade) FROM customers c 
	WHERE c.city = 'New York' 
);

SELECT c.grade, CONUT(*) FROM customers c 
GROUP BY c.grade HAVING c.grade > ( 
    SELECT AVG(c.grade) FROM customers c 
	WHERE c.city = 'New York' 
);

SELECT grade, COUNT(*) FROM customers 
GROUP BY grade HAVING grade>(SELECT AVG(grade) FROM customers WHERE city='New York');

SELECT c.grade, COUNT(*) FROM customers c 
GROUP BY c.grade HAVING c.grade > ( 
    SELECT AVG(c.grade) FROM customers c 
	WHERE c.city = 'New York' 
);

SELECT MAX(s.commision) FROM salesman s;

SELECT MAX(s.commission) FROM salesman s;

SELECT s.salesman_id, s.salesman_name, MAX(s.commission) FROM salesman s;

SELECT salesman_id, MAX(s.commission) FROM salesman s 
GROUP BY salesman_id;

SELECT s.salesman_id, MAX(s.commission) FROM salesman s;

SELECT MAX(s.commission) FROM salesman s;

SELECT s.salesman_id FROM salesman s 
GROUP BY s.salesman_id HAVING MAX(s.commission);

SELECT s.salesman_id, MAX(s.commission) FROM salesman s 
GROUP BY s.salesman_id;

SELECT * FROM orders o 
WHERE o.salesman_id = ( 
    SELECT s.salesman_id, MAX(s.commission) FROM salesman s 
	GROUP BY s.salesman_id 
);

ELECT s.salesman_id, MAX(s.commission) FROM salesman s 


GROUP BY MAX(s.commission);


SELECT * FROM orders o 
WHERE o.salesman_id = ( 
    SELECT s.salesman_id, MAX(s.commission) FROM salesman s 
	GROUP BY s.salesman_id 
);

SELECT s.salesman_id, FROM salesman s 
WHERE s.commission = MAX(s.commission);

SELECT s.salesman_id FROM salesman s 
WHERE s.commission = MAX(s.commission);

SELECT s.salesman_id FROM salesman s 
WHERE s.commission = (SELECT MAX(s.commission) FROM salesman s);

SELECT * FROM orders o 
WHERE o.salesman_id = ( 
    SELECT s.salesman_id FROM salesman s 
WHERE s.commission = (SELECT MAX(s.commission) FROM salesman s) 
);

SELECT * FROM orders o 
WHERE o.salesman_id IN( 
    SELECT s.salesman_id FROM salesman s 
	WHERE s.commission = ( 
    	SELECT MAX(s.commission) FROM salesman s 
    ) 
);

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders 
WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

SELECT * FROM orders o 
WHERE o.salesman_id IN( 
    SELECT s.salesman_id FROM salesman s 
	WHERE s.commission = ( 
    	SELECT MAX(s.commission) FROM salesman s 
    ) 
);

SELECT * FROM orders o 
WHERE o.salesman_id IN ( 
    SELECT s.salesman_id FROM salesman s 
	WHERE s.commission = ( 
    	SELECT MAX(s.commission) FROM salesman s 
    ) 
);

