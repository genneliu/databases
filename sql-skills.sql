INSERT INTO artist (name)
VALUES ('Maxime.'),
('Tim Dup'),
('Los Angeles Azules'),
('Lo Fi Girl'),
('Cousin in a Garage Band')

SELECT * FROM artist
ORDER BY artist
LIMIT 5;

--lives in calgary
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT * FROM employee
WHERE last_name LIKE 'Edwards' AND first_name LIKE 'Nancy';
-- employee id 2

--reports to nancy 
SELECT * FROM employee
WHERE reports_to = 2;

-- usa orders
SELECT COUNT(*) FROM invoice
WHERE billing_country LIKE 'USA';


--max and min total
SELECT MAX(total) FROM invoice;
SELECT MIN(total) FROM invoice;



--count where bigger than 5

-- SELECT COUNT(*) FROM invoice_line
-- WHERE quantity * unit_price > 5;

SELECT COUNT(*) FROM invoice
WHERE total > 5;

--count where less than 5

-- SELECT COUNT(*) FROM invoice_line
-- WHERE quantity * unit_price < 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;


--get total sum
SELECT SUM(total) FROM invoice;


--unit price bigger than .99
SELECT * 
FROM invoice i 
JOIN invoice_line l
ON i.invoice_id = l.invoice_id
WHERE unit_price > 0.99;

--join customer invoice
SELECT i.invoice_date, c.first_name, c.last_name
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

--join customer employee
SELECT c.first_name, c.last_name, e.first_name AS employee_first, e.last_name AS employee_last
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;

--joiun album artist
SELECT a.name, b.title
FROM artist a
JOIN album b
ON a.artist_id = b.artist_id;