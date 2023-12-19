CREATE TABLE "Customers" (
	customer_id SERIAL PRIMARY KEY,
	customer_name VARCHAR(30),
	city VARCHAR(30));
	
CREATE TABLE "Orders" (
	order_id SERIAL PRIMARY KEY,
	customer_id INT REFERENCES "Customers"(customer_id),
	order_date DATE,
	total_amount INT);

CREATE TABLE "Total orders" (
	customer_name VARCHAR(30) REFERENCES "Customers"(customer_name),

INSERT INTO "Customers" (customer_name, city)
VALUES
	('John Doe','New York'),
	('Jane Smith','Los Angeles'),
	('David Johnson', 'Chicago')
	;
	
INSERT INTO "Orders" (customer_id, order_date, total_amount)
VALUES
	(1,'2022-01-10', 100),
	(1,'2022-02-15', 150),
	(2,'2022-03-20', 200),
	(3,'2022-04-25', 50)
	;

SELECT "Customers".customer_name, COUNT("Orders".order_id) AS total_orders
FROM "Customers"
LEFT JOIN "Orders" ON "Customers".customer_id = "Orders".customer_id
GROUP BY "Customers".customer_id, "Customers".customer_name;


SELECT * FROM "Customers"
SELECT * FROM "Orders"