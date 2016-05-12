use pplummer;

SELECT * FROM user;

SELECT * FROM state;

DROP PROCEDURE IF EXISTS Account_GetByEmail;
DELIMITER //

CREATE PROCEDURE Account_GetByEmail(_email VARCHAR(256), _password VARCHAR(256))
BEGIN
	SELECT user_id, email, firstname, lastname FROM user where email=_email and password=_password;
END //
DELIMITER ;

SELECT * FROM rating;
DROP PROCEDURE IF EXISTS Add_Rating;
DELIMITER //

CREATE PROCEDURE Add_Rating(_rating DECIMAL, _user_id INT, _movie_id INT)
BEGIN 
	INSERT INTO rating (rating, user_id, movie_id) 
	VALUES (_rating, _user_id, _movie_id);
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS Get_Rating_With_IDs;
DELIMITER //

CREATE PROCEDURE Get_Rating_With_IDs (_movie_id INT, _user_id INT)
BEGIN
SELECT title, rating FROM rating r
RIGHT JOIN movie m ON m.movie_id = r.movie_id
WHERE r.movie_id = _movie_id AND r.user_id = _user_id;
END //
DELIMITER ;

CALL Get_Rating_With_IDs (4, 1);


DROP PROCEDURE IF EXISTS Update_Rating;
DELIMITER //

CREATE PROCEDURE Update_Rating(_rating DECIMAL, _user_id INT, _movie_id INT)
BEGIN 
	UPDATE rating
    SET rating = _rating
	WHERE user_id = _user_id AND movie_id = _movie_id;
END //
DELIMITER ;

SELECT * FROM rating;
CALL Update_Rating(5, 4, 1);

SELECT * FROM movie_info_view WHERE movie_id=18;

