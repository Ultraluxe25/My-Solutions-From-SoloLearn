SHOW DATABASES
SHOW TABLES
SHOW COLUMNS FROM customers



SELECT FirstName FROM customers
SELECT FirstName FROM customers;
SELECT City FROM customers;



SELECT city from customers;
select City FROM customers;
sElEct City From customers;



SELECT ProductName, ProductionDate, ExpirationDate FROM Products;
SELECT name, city FROM people;
SELECT * FROM customers;
SELECT * FROM students;



SELECT DISTINCT City FROM customers;

SELECT ID, FirstName, LastName, City
FROM customers LIMIT 5;

SELECT ID, FirstName, LastName, City
FROM customers Limit 4, 12;



SELECT City FROM customers;
SELECT customers.City FROM customers;

SELECT customers.address
FROM customers;

SELECT * FROM customers
ORDER BY FirstName;

SELECT name, city
FROM people ORDER BY id;

SELECT * FROM customers
ORDER BY LastName, Age;

SELECT name, state, address
FROM customers
ORDER BY name, state;

SELECT DISTINCT name
FROM students
ORDER BY name;

SELECT name, calories FROM cakes
ORDER BY calories
LIMIT 3;



SELECT * FROM customers
WHERE ID = 7;

SELECT id, name
FROM students
WHERE id = 23;

SELECT * FROM customers
WHERE ID != 5;

SELECT id, name
FROM students
WHERE id >= 12;

SELECT * FROM customers
WHERE ID BETWEEN 3 AND 7;

SELECT id, name FROM students
WHERE id BETWEEN 13 AND 45;

SELECT ID, FirstName, LastName, City
FROM customers
WHERE City = 'New York';

SELECT * FROM people
WHERE city = 'Boston';



SELECT ID, FirstName, LastName, Age
FROM customers
WHERE Age >= 30 AND Age <= 40;

SELECT * FROM customers
WHERE state = 'CA' AND city = 'Hollywood';

SELECT * FROM customers
WHERE City = 'New York' OR City = 'Chicago';

SELECT name, state, city
FROM customers
WHERE state = 'CA' OR city = 'Boston';

SELECT * FROM customers
WHERE City = 'New York'
AND (Age = 30 OR Age = 35);

SELECT * FROM customers
WHERE (id = 1 or id = 2)
AND city = 'Boston';



SELECT * FROM customers
WHERE City = 'New York'
OR City = 'Los Angeles'
OR City = 'Chicago';

SELECT * FROM users 
WHERE state = 'NY'
OR state = 'CA';

SELECT * FROM customers
WHERE City IN ('New York', 'Los Angeles', 'Chicago');

SELECT name, state
FROM customers
WHERE state IN ('NY', 'CA', 'NC');

SELECT * FROM customers
WHERE City NOT IN ('New York', 'Los Angeles', 'Chicago');

SELECT name, state
FROM customers
WHERE state NOT IN ('CA', 'NY');



SELECT CONCAT(FirstName, ', ', City)
FROM customers;

SELECT CONCAT(FirstName, ', ', City)
AS new_column
FROM customers;

SELECT Salary + 500
AS Salary
FROM employees;

SELECT CONCAT(city, ', ', state)
AS new_address
FROM customers;



SELECT FirstName, UPPER(LastName)
AS LastName
FROM employees;

SELECT Salary, SQRT(Salary)
FROM employees;

SELECT AVG(Salary)
FROM employees;

SELECT AVG(cost)
FROM items;

SELECT SUM(Salary)
FROM employees;



SELECT AVG(Salary) FROM employees;
SELECT FirstName, Salary FROM employees
WHERE Salary > 3100
ORDER BY Salary DESC;

SELECT * FROM items
WHERE cost > 463
ORDER BY cost DESC;

SELECT FirstName, Salary FROM employees
WHERE Salary > (SELECT AVG(Salary) FROM employees)
ORDER BY Salary DESC;

SELECT * FROM items
WHERE cost > (SELECT AVG(cost) FROM items);



SELECT * FROM employees
WHERE FirstName LIKE 'A%';

SELECT * FROM employees
WHERE LastName LIKE '%s';

SELECT seller_id FROM items
WHERE name LIKE '%boxes';

SELECT MIN(Salary) AS Salary
FROM employees;

SELECT name, MIN(cost)
FROM items
WHERE name LIKE '%boxes of frogs'
AND seller_id IN (68, 6, 18);



SELECT * FROM students
WHERE university = 'MIT';

SELECT name, university
FROM students
WHERE university IN ('Stanford', 'MIT')
ORDER BY university;

SELECT name, age
FROM students
WHERE age > (SELECT AVG(age) FROM students);

SELECT * FROM desserts
WHERE name LIKE '%Chocolate%';

SELECT * FROM Apartments
WHERE price > (SELECT AVG(price) FROM Apartments)
AND status = 'Not rented'
ORDER BY price;



SELECT id FROM students
ORDER BY id DESC;

SELECT customers.ID, customers.Name,
orders.Name, orders.Amount
FROM customers, orders
WHERE customers.ID = orders.Customer_ID
ORDER BY customers.ID;

SELECT customers.name, items.names
FROM customers, items
WHERE items.seller_id = customers.id;



SELECT ct.ID, ct.Name, ord.Name, ord.Amount
FROM customers AS ct, orders AS orders
WHERE ct.ID = ord.Customer_ID
ORDER BY ct.ID;

SELECT ct.name, it.name
FROM customers AS ct, items AS it
WHERE it.seller_id = ct.id;

SELECT students.name, universities.name
FROM students, universities
WHERE students.university_id = universities.id;

SELECT customers.name, items.name
FROM customers LEFT OUTER JOIN items
ON customers.id = seller_id;

SELECT customers.Name, items.name
FROM customers RIGHT OUTER JOIN items
ON customers.ID = items.Seller_id;

SELECT students.names, universities.names
FROM students RIGHT OUTER JOIN universities
ON students.university_id = universities.id;



SELECT name, cost, bids
FROM items
WHERE bids > 123;

SELECT ID, FirstName, LastName, City
FROM First
UNION
SELECT ID, FirstName, LastName, City
FROM Second;

SELECT FirstName, LastName, Company FROM
businessContacts
UNION
SELECT FirstName, LastName, NULL FROM
otherContacts;

SELECT ID, FirstName, LastName, City
FROM First
UNION ALL
SELECT ID, FirstName, LastName, City
FROM Second;



INSERT INTO Employees
VALUES (8, 'Anthony', 'Young', 35);

INSERT INTO students
VALUES ('John Smith', 'MIT');

INSERT INTO Employees (ID, FirstName, LastName, Age)
VALUES (8, 'Anthony', 'Young', 35);

INSERT INTO students (name, university)
VALUES ('Peter Parker', 'Stanford');

INSERT INTO Employees (ID, FirstName, LastName)
VALUES (9, 'Samuel', 'Clark');

INSERT INTO Garage (ID, Make, Model, ProdYear)
VALUES
(6, 'Mercedes-Benz', 'G 63', 2020),
(7, 'Porsche', 'Panamera', 2020);
SELECT * FROM Garage;



UPDATE students
SET university = 'Stanford'
WHERE name = 'John';

UPDATE Employees
SET Salary = 5000, FirstName = 'Robert'
WHERE ID = 1;

UPDATE students
SET name = 'Peter', age = 32
WHERE id = 147;

DELETE FROM Employees
WHERE ID = 1;

DELETE FROM people
WHERE id > 5 AND id < 10;



CREATE TABLE users
(
	UserID int,
	FirstName varchar(100),
	LastName varchar(100),
	City varchar(100),
	PRIMARY KEY(UserID)
);

CREATE TABLE test
(
	id int,
	username varchar(30),
	password varchar(20),
	PRIMARY KEY(id)
);

////////////////////

CREATE TABLE leaderboard
(
    place int,
    nickname varchar,
    rating int
);

INSERT INTO leaderboard (place, nickname, rating)
VALUES 
(1, 'Predator', 9500),
(2, 'JohnWar', 9300),
(3, 'NightWarrior', 8900);

SELECT * FROM leaderboard

////////////////////



username varchar(50) NOT NULL;

UserID int NOT NULL AUTO_INCREMENT,
PRIMARY KEY(UserID);

CREATE TABLE Users
(
	id int NOT NULL AUTO_INCREMENT,
	username varchar(40) NOT NULL,
	password varchar(10) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE test
(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(30) NOT NULL
	PRIMARY KEY(id)
);



ALTER TABLE students
ADD specialty varchar(50);

ALTER TABLE People
RENAME FirstName TO name;

RENAME TABLE People TO Users;

RENAME TABLE people TO humans;



/* TASK 1 */

ALTER TABLE cities
ADD AttractivePlace varchar(128);

UPDATE cities
SET AttractivePlace = 'Belem Tower'
WHERE name = 'Lisbon';

UPDATE cities
SET AttractivePlace = 'Plaza Mayor'
WHERE name = 'Madrid';

UPDATE cities
SET AttractivePlace = 'Eiffel Tower'
WHERE name = 'Paris';

SELECT * FROM cities; 



CREATE VIEW List AS 
SELECT FirstName, Salary
FROM Employees;

CREATE VIEW temp AS 
SELECT id, name, mark
FROM students
ORDER BY mark DESC LIMIT 10;

CREATE OR REPLACE VIEW List AS 
SELECT FirstName, LastName, Salary
FROM Employees;

DROP VIEW List;



/* TASK 2 */

CREATE VIEW Info AS
SELECT acc_id, status
FROM users;

SELECT * FROM Info;



SELECT students.names, universities.names
FROM students
LEFT OUTER JOIN universities
ON students.university_id = universities.id;

INSERT INTO people
VALUES ('John Smith', '1', 22);

UPDATE people
SET name='Jordan'
WHERE id=147;

CREATE TABLE
(
	id int,
	name varchar(30),
	PRIMARY KEY(id)
);

ALTER TABLE people
DROP COLUMN age;

CREATE VIEW most_abs AS 
SELECT id, name, absences
FROM students
ORDER BY absences DESC LIMIT 10;

DROP TABLE students;

ALTER TABLE students
DROP COLUMN temp;



/* TASK 3 */

INSERT INTO Animals (name, type, country_id)
VALUES ('Slim', 'Giraffe', '1');

SELECT name, type, country
FROM Animals INNER JOIN Countries
ON Animals.country_id = Countries.id 
ORDER BY country;



SELECT * FROM users
LIMIT 10;

CREATE TABLE users 
(
	id INT NOT NULL
	AUTO_INCREMENT,
	login VARCHAR(100),
	password VARCHAR(100)
);

SELECT * FROM students
WHERE age < 21
ORDER BY name;

SELECT * FROM customers
WHERE balance > 1000 OR city = 'NY'
LIMIT 100;

SELECT age FROM zoo1
WHERE animal IN ('bear', 'bird')
UNION
SELECT age FROM zoo2
WHERE animal IN ('lion', 'crocodile');

SELECT CONCAT(name, ' is form ', city)
FROM customers;

SELECT * FROM zoo
WHERE age > (SELECT AVG(age) FROM zoo);

SELECT age FROM zoo
WHERE animal LIKE '%wolf';

SELECT name FROM students
WHERE age BEETWEEN 18 AND 22;

UPDATE students
SET university = 'MIT'
WHERE id=682;

UPDATE zoo
SET age=14
WHERE animal='elephant'

UPDATE zoo
SET food_balance=23
WHERE age > (SELECT AVG(age) FROM zoo);

SELECT customers.name, cities.name
FROM customers RIGHT OUTER JOIN cities
ON cities.id = customers.city_id;

ALTER TABLE students
ADD last_name VARCHAR(100);

SELECT name FROM students
WHERE university 
IN ('MIT', 'Stanford', 'Harvard')
AND name='Jake';

/* Finish of the course!) */
