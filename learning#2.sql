-- Table -> collection of data organized in rows and columns

-- DataType -> tells the db what kind of information can be stored in a particular column.

-- DISPLAY ALL THE TABLES IN DB.
SHOW TABLES;

-- DISPLAY ALL THE COLUMNS OF THE TABLE.
SHOW COLUMNS from student;

-- CREATE A TABLE (STUDENT) WITH PROPERTIES OR COLUMN :NAME AND ROLL .VARCHAR ? -> TAKES THE NECESSARY SIZE OR LENGTH.

CREATE TABLE STUDENT(
  NAME VARCHAR(30) DEFAULT '',
  ROLL INT DEFAULT 0
);
-- TO DISPLAY A TABLE;
DESC student;
 


