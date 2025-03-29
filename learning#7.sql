-- orderby-> helps to arrange in either ascending or descending order.

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    p_name VARCHAR(50),
    p_price INT DEFAULT 0,
    p_desc VARCHAR(50)
);
drop table products;

INSERT into
    products (p_name, p_price, p_desc)
VALUES (
        'bottle',
        500,
        'Made up of glass'
    ),
    ('bag', 800, 'Good Quality'),
    ('shoe', 900, 'Looks good'),
    ('chair', 1900, 'Quality wood'),
    ('cooker', 2900, 'tasty food'); 

select * from products;

SELECT p_name, p_price from products ORDER BY p_price desc;
-- limits the row to 3.
SELECT p_name, p_price from products ORDER BY p_price asc limit 3;

SELECT p_name from products ORDER BY CHARACTER_LENGTH(p_name) asc ;
SELECT p_name from products ORDER BY CHARACTER_LENGTH(p_name) desc ;

-- *************************************
--  o% ->starting must be with o. 
-- --  %o ->ending must be with o.
-- so it provides all the fields where name must contain o either in beginning or ending.
SELECT * FROM products WHERE p_name LIKE '%o%';

SELECT * FROM products WHERE p_name LIKE '%g';
SELECT * FROM products WHERE p_name LIKE '%r';
SELECT * FROM products WHERE p_name LIKE 'c%';
SELECT * FROM products WHERE p_name LIKE '%oo%';
SELECT * FROM products WHERE p_name LIKE '%tt%';

-- ******************************************

SELECT * FROM products WHERE p_name LIKE '____';
SELECT * FROM products WHERE p_name LIKE '_____';
SELECT * FROM products WHERE p_name LIKE 'b_g';
SELECT * FROM products WHERE p_name LIKE 's_o_';
SELECT * FROM products WHERE p_name LIKE 'c__k_r';

-- ************************************************
-- count the number of rows.
SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM products WHERE  id=1;
SELECT COUNT(*) FROM products WHERE  p_name='bottle';
SELECT COUNT(*) FROM products WHERE  p_name LIKE '%o%';
 
-- ********************************************

SELECT MIN(p_price) FROM products;
SELECT MIN(id) FROM products;
-- ******************************
SELECT MAX(p_price) FROM products;
SELECT MAX(id) FROM products;
-- ******************************
SELECT SUM(p_price) FROM products;
SELECT SUM(id) FROM products;
-- ******************************
SELECT AVG(p_price) FROM products;
SELECT AVG(id) FROM products;