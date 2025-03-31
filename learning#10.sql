-- All about Altering the Table

create Table person(
  id int AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(40),
  age int,
  constraint check_age check(age>0 and age <60),
  city VARCHAR(30),
  salary int,
  constraint check_salary check(salary>=0)
);

-- Adding column to the existing table.
alter table person
add gender VARCHAR(20);

-- Removing a column from the table.
alter table person
drop COLUMN gender;

-- modifying the datatype
alter table person
MODIFY COLUMN gender BOOLEAN;

-- Renaming the column Name
ALTER table person
CHANGE COLUMN name
person_name VARCHAR(50);

select * from person;
-- -----------------------------
CREATE Table engineer(
  e_id int PRIMARY KEY AUTO_INCREMENT,
  e_name VARCHAR(100) not null,
  email VARCHAR(100) not null,
  profession VARCHAR(200) not null
);
INSERT into engineer(e_name,email,profession)
VALUES
('Ritesh','ritesh@gmail.com','software'),
('Sagar','sagar@gmail.com','civil'),
('Basant','basant@gmail.com','IT');


Create table task(
  t_id int AUTO_INCREMENT PRIMARY KEY,
  t_name VARCHAR(100) ,
  t_desc VARCHAR(255),
  e_id INT,
  Foreign Key (e_id) REFERENCES engineer(e_id)
)

insert into task(t_name,t_desc,e_id)
VALUES 
      ('Task.1','Designing',1),
      ('Task.2','Testing',2),
      ('Task.3','Evaluation',1)


SELECT * FROM task;

-- Inner Join selects records that have matching values in both tables.
SELECT * FROM engineer
INNER JOIN task on engineer.e_id=task.e_id;

-- A left join returns all records from left table and match record from right table.

SELECT * FROM engineer
LEFT JOIN task on engineer.e_id=task.e_id;

-- A right join returns all records from right table and match record from left table.

SELECT * FROM engineer
RIGHT JOIN task on engineer.e_id=task.e_id;

-- ----------------------------------------


