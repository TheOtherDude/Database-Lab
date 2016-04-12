use pplummer;

SET SQL_SAFE_UPDATES = 0;

select * FROM user;

ALTER TABLE user
ADD password VARCHAR(50);

ALTER TABLE user
ADD email VARCHAR(50);

UPDATE user
SET password = "1234567"
WHERE password IS NULL;

UPDATE user
SET email = "123@gmail.com"
WHERE email IS NULL;

ALTER TABLE movie
ADD tagline VARCHAR(50);

SELECT * FROM movie;

UPDATE movie
SET tagline = "this is a good movie!"
WHERE tagline IS NULL;