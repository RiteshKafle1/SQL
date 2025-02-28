-- shows the current date.
 SELECT CURRENT_DATE()

--  gives the current time.
SELECT CURRENT_TIME()
-- shows the current date and time.
SELECT CURRENT_TIMESTAMP()

CREATE TABLE comment(
  id Int PRIMARY key AUTO_INCREMENT,
  author VARCHAR(100),
  content VARCHAR(200),
  create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
)

-- on update CURRENT_TIMESTAMP ->every time the row is updated ,update_at automically updates. 

INSERT INTO comment(author,content)
VALUES
('Ritesh','I dont believe this.'),
('Alex','This is amazing.'),
('Huxn','something out of the world happened')

SELECT * FROM comment;

UPDATE comment
SET content='sometimes its green sometimes its yellow' WHERE id=1