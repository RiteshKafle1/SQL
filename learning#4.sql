CREATE TABLE STUDENT (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) DEFAULT '',
    address VARCHAR(30) DEFAULT '',
    phone INT UNIQUE,
    hobby VARCHAR(20),
    weight DOUBLE,
    height DOUBLE
);
drop table student;

INSERT INTO
    student (
        name,
        address,
        phone,
        hobby,
        weight,
        height
    )
VALUES (
        'david',
        'kathmandu',
        987654321,
        'cricket',
        50.2,
        5.3
    ),
    (
        'virat',
        'india',
        987654322,
        'cricket',
        70.2,
        5.5
    );
    -- selects all the fields from the student table
SELECT *
FROM student;

-- selects all the fields but id must be 1
SELECT * FROM student WHERE id = 1;

-- selects specified fields ,id must be 1
SELECT name, address, id FROM student WHERE id = 1;

-- selects specified fields but hobby must be cricket

SELECT phone, address, hobby FROM student WHERE hobby = 'cricket';

-- selects all fields but hobby must be cricket

SELECT * FROM student WHERE hobby = 'cricket';

-- selects specified fields but hobby must be cricket

SELECT
    name,
    address,
    height,
    weight,
    hobby
FROM student
WHERE
    hobby = 'cricket';

-----------------------------------------------------------
-- display the fields with new  name.
SELECT id as student_id from student;

SELECT name as student_name from student;

SELECT address as ADDRESS_STUDENT from student;