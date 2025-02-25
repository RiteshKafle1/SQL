CREATE TABLE USERS (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) UNIQUE,
    age int DEFAULT 0,
    email VARCHAR(30),
    password VARCHAR(30)
);

SELECT * FROM users;

INSERT INTO
    users (name, age, email, password)
VALUES (
        'ram',
        20,
        'ram@gmail.com',
        '12345'
    ),
    (
        'shyam',
        10,
        'shyam@gmail.com',
        '1234'
    ),
    (
        'hari',
        16,
        'hari@gmail.com',
        '123456'
    )

-- update name,age,email,password ,but id is 1.
UPDATE users
SET
    name = 'gita',
    age = 30,
    email = 'gita@gmail.com',
    password = '456'
WHERE
    id = 1

-- update email,password ,but id is 3.

UPDATE users
SET
    email = 'abc@gmail.com',
    password = 'abc456'
WHERE
    id = 3

-- update name,age,email,password ,but for hari.

UPDATE users
SET
    name = 'david',
    age = 20,
    email = 'david@gmail.com',
    password = 'david456'
WHERE
    name = 'hari'