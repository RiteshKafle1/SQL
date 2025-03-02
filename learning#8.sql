SELECT * FROM products;
-- not equals to.
SELECT id, p_name from products where id != 4;

SELECT * from products where id != 1;

SELECT * from products where p_name != 'bag';

-- greater , less than.

SELECT id, p_name from products where id > 4;

SELECT id, p_name from products where id < 5;

SELECT * from products where p_price > 200;

SELECT * from products where p_price < 12000;

SELECT * from products where p_price > 800;

SELECT * from products where p_price < 200;

SELECT * from products where p_price = 500;

SELECT * from products where CHARACTER_LENGTH(p_name) > 2;

SELECT * from products where CHARACTER_LENGTH(p_desc) > 2;

SELECT * from products where CHARACTER_LENGTH(p_name) = 3;

-- *******************************************
SELECT * from products where id BETWEEN 1 and 3

SELECT * from products where p_price BETWEEN 500 and 1000

SELECT * from products where p_price BETWEEN 1000 and 2000

SELECT * from products where p_price BETWEEN 10000 and 20000

SELECT * from products where CHARACTER_LENGTH(p_name) BETWEEN 1 and 5

-- *******************************************
SELECT * from products WHERE p_price IN (500, 800, 900);

SELECT * from products WHERE id IN (1, 3, 5,8);

SELECT * from products WHERE p_name IN ('bag', 'shoe','bottle');