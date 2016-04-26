DROP PROCEDURE IF EXISTS Account_GetByEmail;
DELIMITER //

CREATE PROCEDURE Account_GetByEmail(_email VARCHAR(256), _password VARCHAR(256))
BEGIN
	SELECT user_id, email, firstname, lastname FROM user where email=_email and password=_password;
END //
DELIMITER ;