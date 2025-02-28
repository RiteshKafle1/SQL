-- shows the current date.
SELECT CURRENT_DATE()

--  gives the current time.
SELECT CURRENT_TIME()
    -- shows the current date and time.
SELECT CURRENT_TIMESTAMP()

CREATE TABLE comment (
    id Int PRIMARY key AUTO_INCREMENT,
    author VARCHAR(100),
    content VARCHAR(200),
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
)

-- on update CURRENT_TIMESTAMP ->every time the row is updated ,update_at automically updates.

INSERT INTO
    comment (author, content)
VALUES (
        'Ritesh',
        'I dont believe this.'
    ),
    ('Alex', 'This is amazing.'),
    (
        'Huxn',
        'something out of the world happened'
    )

SELECT * FROM comment;

UPDATE comment
SET
    content = 'sometimes its green sometimes its yellow'
WHERE
    id = 1

SELECT SUBSTRING('HelloRitesh', 6, 6);

SELECT SUBSTRING('Hello World', 6, 6);

SELECT SUBSTRING('Technology', 3, 8);

SELECT SUBSTRING('Programming', 2, 10);

SELECT SUBSTRING('ProblemSolving', 8);

SELECT SUBSTRING(author, 1) FROM comment

-- *******************************
SELECT REPLACE('HELLO WORLD','HE','GOOD');
SELECT REPLACE('RITESH','R','P');
SELECT REPLACE('RITESH','ESH','X');
SELECT REPLACE('PROGRAMMING','PROGRAMMING','AI');
SELECT REPLACE('LOVE','L','WA');
SELECT REPLACE('IMPOSSIBLE','IM','');
SELECT REPLACE('NOTHING','NOTHING','ANYTHING IS POSSIBLE');

SELECT REPLACE(author,'Ritesh','RiteX') from comment;

SELECT REVERSE('HelloRitesh');
SELECT REVERSE('HelloWorld');
SELECT REVERSE('Technology');
SELECT REVERSE('Programming');
SELECT REVERSE('Ritesh');

SELECT REVERSE(author) from comment;

-- **************************
SELECT CHAR_LENGTH('HelloWorld');
SELECT CHAR_LENGTH('HelloRitesh');
SELECT CHAR_LENGTH('Technology');
SELECT CHAR_LENGTH('Programming');
SELECT CHAR_LENGTH('Ritesh');
SELECT CHAR_LENGTH(author) from comment;


