REM   Script: Activity_6_7_8
REM   Reskilling Program

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

SELECT * FROM orders;

SELECT DISTINCT salesman_id FROM orders;

SELECT order_no FROM orders 
    ORDER BY order_date ASC;

SELECT order_no, order_date FROM orders 
    ORDER BY order_date ASC;

SELECT order_no, purchase_amount FROM orders 
    ORDER BY purchase_amount DESC;

SELECT * FROM orders 
    WHERE purchase_amount < 500;

SELECT * FROM orders 
    WHERE purchase_amount BETWEEN 1000 AND 2000;

SELECT SUM(purchase_amount) FROM orders;

SELECT AVG(purchase_amount) FROM orders;

drop table orders;

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

SELECT * FROM orders;

SELECT DISTINCT salesman_id FROM orders;

SELECT order_no, order_date FROM orders 
    ORDER BY order_date ASC;

SELECT order_no, purchase_amount FROM orders 
    ORDER BY purchase_amount DESC;

SELECT * FROM orders 
    WHERE purchase_amount < 500;

SELECT * FROM orders 
    WHERE purchase_amount BETWEEN 1000 AND 2000;

SELECT SUM(purchase_amount) FROM orders;

SELECT AVG(purchase_amount) FROM orders;

SELECT SUM(purchase_amount) FROM orders;

SELECT AVG(purchase_amount) FROM orders;

SELECT MIN(purchase_amount) FROM orders;

SELECT MAX(purchase_amount) FROM orders;

SELECT MIN(purchase_amount) FROM orders;

SELECT COUNT(salesman_id) FROM orders;

drop table orders;

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

SELECT * FROM orders;

SELECT DISTINCT salesman_id FROM orders;

SELECT order_no, order_date FROM orders 
    ORDER BY order_date ASC;

SELECT order_no, purchase_amount FROM orders 
    ORDER BY purchase_amount DESC;

SELECT * FROM orders 
    WHERE purchase_amount < 500;

SELECT * FROM orders 
    WHERE purchase_amount BETWEEN 1000 AND 2000;

SELECT SUM(purchase_amount) FROM orders;

SELECT AVG(purchase_amount) FROM orders;

SELECT MAX(purchase_amount) FROM orders;

SELECT MIN(purchase_amount) FROM orders;

SELECT COUNT(salesman_id) FROM orders;

SELECT COUNT(salesman_id) FROM orders;

drop table orders;

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

SELECT * FROM orders;

SELECT DISTINCT salesman_id FROM orders;

SELECT order_no, order_date FROM orders 
    ORDER BY order_date ASC;

SELECT order_no, purchase_amount FROM orders 
    ORDER BY purchase_amount DESC;

SELECT * FROM orders 
    WHERE purchase_amount < 500;

SELECT * FROM orders 
    WHERE purchase_amount BETWEEN 1000 AND 2000;

SELECT SUM(purchase_amount) FROM orders;

SELECT AVG(purchase_amount) FROM orders;

SELECT MAX(purchase_amount) FROM orders;

SELECT MIN(purchase_amount) FROM orders;

SELECT DISTINCT COUNT(salesman_id) FROM orders;

SELECT DISTINCT COUNT(salesman_id) FROM orders;

SELECT COUNT(DISTINCT salesman_id) FROM AS 'Total count' orders;

SELECT COUNT(DISTINCT salesman_id) AS 'Total count' FROM orders;

SELECT MIN(purchase_amount) AS 'Minimum Amount' FROM orders;

SELECT MIN(purchase_amount) FROM orders;

SELECT COUNT(DISTINCT salesman_id) AS "Total count" FROM orders;

SELECT SUM(purchase_amount) AS "Total sum" FROM orders;

SELECT customer_id, MAX(purchase_amount) AS "Highest Purchase Amount" FROM orders 
GROUP BY customer_id;

SELECT order_date, salesman_id, MAX(purchase_amount) AS "Highest Purchase Amount on 2012-08-17" FROM orders 
GROUP BY order_date;

SELECT order_date, MAX(purchase_amount) AS "Highest Purchase Amount on 2012-08-17" FROM orders 
GROUP BY order_date;

SELECT order_date, salesman_id, MAX(purchase_amount) AS "Highest Purchase Amount on 2012-08-17" FROM orders 
GROUP BY order_date, salesman_id;

SELECT order_date, salesman_id, MAX(purchase_amount) AS "Highest Purchase Amount on 2012-08-17" FROM orders 
    WHERE order_date = TO_DATE('2012/08/17', 'YYYY/MM/DD') 
	GROUP BY order_date, salesman_id;

SELECT order_date, customer_id, MAX(purchase_amount) AS "Maximum Purchase Amount" FROM orders 
    HAVING MAX(purchase_amount) IN(2030, 3450, 5760, 6000);

	GROUP BY order_date, customer_id;


SELECT order_date, customer_id, MAX(purchase_amount) AS "Maximum Purchase Amount" FROM orders 
	GROUP BY order_date, customer_id;

	HAVING MAX(purchase_amount) IN(2030, 3450, 5760, 6000); 


SELECT order_date, customer_id, MAX(purchase_amount) AS "Maximum Purchase Amount" FROM orders 
	GROUP BY order_date, customer_id;

	HAVING MAX(purchase_amount) IN (2030, 3450, 5760, 6000);


SELECT order_date, customer_id, MAX(purchase_amount) AS "Maximum Purchase Amount" FROM orders 
	GROUP BY DISTINCT order_date, customer_id;

	HAVING MAX(purchase_amount) IN (2030, 3450, 5760, 6000);


SELECT DISTINCT order_date, customer_id, MAX(purchase_amount) AS "Maximum Purchase Amount" FROM orders 
	GROUP BY order_date, customer_id;

	HAVING MAX(purchase_amount) IN (2030, 3450, 5760, 6000);


SELECT order_date, customer_id, MAX(purchase_amount) AS "Maximum Purchase Amount" FROM orders 
	GROUP BY order_date, customer_id;

	HAVING MAX(purchase_amount) IN (2030, 3450, 5760, 6000);


SELECT customer_id, order_date, MAX(purchase_amount) AS "Max Amount" FROM orders 
GROUP BY customer_id, order_date 
HAVING MAX(purchase_amount) IN(2030, 3450, 5760, 6000);

SELECT order_date, customer_id, MAX(purchase_amount) AS "Maximum Purchase Amount" FROM orders 
	GROUP BY order_date, customer_id 
	HAVING MAX(purchase_amount) IN (2030, 3450, 5760, 6000);

