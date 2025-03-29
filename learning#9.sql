SELECT
    name,
    age,
    CASE
        WHEN age >= 10
        and age < 15 THEN 'teenagers'
        WHEN age >= 15
        and age < 20 THEN 'adult'
        ELSE 'young'
    END as age_group
from users;
-- ------------------------------------

CREATE Table series (
    id int AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) UNIQUE,
    release_year DATE,
    reviews VARCHAR(100)
);

INSERT INTO
    series (title, release_year, reviews)
VALUES (
        'Stranger Thing',
        2020 -03 -28,
        'was fun'
    ),
    (
        'Game of Thrones',
        2015 -03 -28,
        'great job'
    ),
    (
        'Breaking Bad',
        2010 -03 -28,
        'good one'
    ),
    (
        'The Crown',
        2002 -02 -16,
        'all were good'
    ),
        (
        'The Crown',
        2002 -02 -16,
        'all were good'
    );
-- ---------------------------------

create Table employee(
  id int PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  age int,
  constraint check_age check(age>=18 and age<65)
);
INSERT INTO employee(name,age)
VALUES('ramCharan',20),('AlexChand',30),('BintuGunda',50),('LaluBhatt',16)

SELECT * from employee;



