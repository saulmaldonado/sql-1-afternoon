-- #1
CREATE TABLE person 
(person_id SERIAL PRIMARY KEY, 
    name VARCHAR(150),
    age INTEGER, 
    height INTEGER,
    city VARCHAR(150), 
    favorite_color VARCHAR(150))

--  #2

INSERT INTO person 
(name, age, height, city, favorite_color)
VALUES
('Bob', 12, 150, 'Dallas', 'blue')
('Bill', 20, 180, 'Dallas', 'red')
('Barry', 40, 170, 'Dallas', 'orange')
('Ben', 30, 170, 'Dallas', 'green')
('Brandon', 32, 180, 'Dallas', 'brown')

-- #3
SELECT * FROM person
ORDER BY height DESC

-- #4
SELECT * FROM person
ORDER BY height ASC

-- #5
SELECT * FROM person
ORDER BY age DESC

-- #6
SELECT * FROM person
WHERE age > 20

-- #7
SELECT * FROM person
WHERE age = 18

-- #8
SELECT * FROM person
WHERE age < 20 OR age > 30

-- #9
SELECT * FROM person
WHERE age != 27

-- #10
SELECT * FROM person
WHERE favorite_color != 'red'

-- #11
SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue'

-- #12
SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green'

-- #13
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue')

-- 14
SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple')


-- orders
-- #1
CREATE TABLE orders 
(
order_id SERIAL PRIMARY KEY,
person_id INTEGER,
product_name VARCHAR(150),
product_price INTEGER,
quantity INTEGER
)

-- #2
INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(0, 'shirt', 20, 1)
(0, 'hoodie', 40, 1)
(0, 'hat', 20, 1)
(1, 'sunglasses', 15, 2)
(1, 'shoes', 50, 1)

-- #3
SELECT * FROM orders

-- #4
SELECT SUM(quantity) FROM orders

-- #5
SELECT SUM(product_price * quantity) FROM orders

-- #6
SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 0

-- artist
-- #1
INSERT INTO artist
(name)
VALUES
('Roy Hargrove', 'Miles Davis', 'Charlie Parker')

-- #2
SELECT * FROM artist ORDER BY name DESC LIMIT 10

-- #3
SELECT * FROM artist ORDER BY name ASC LIMIT 5

-- #4
SELECT * FROM artist
WHERE name LIKE 'Black%'

-- #5
SELECT * FROM artist
WHERE name LIKE '%Black%'

-- employee
-- #1
SELECT first_name, last_name FROM employee
WHERE city  = 'Calgary'

-- #2
SELECT MAX(birth_date) FROM employee

-- #3
SELECT MIN(birth_date) FROM employee

-- #4
SELECT * FROM employee
WHERE reports_to  = 2

-- #5
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge'

-- invoice
-- #1
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA'

-- #2
SELECT MAX(total) FROM invoice

-- #3
SELECT MIN(total) FROM invoice

-- #4
SELECT * FROM invoice
WHERE total > 5

-- #5
COUNT(*) FROM invoice
WHERE total < 5

-- #6
COUNT(*) FROM invoice
WHERE billing_country IN ('CA', 'TX', 'AZ')

-- #7
AVG(total) FROM invoice

-- #8
SUM(total) FROM invoice

