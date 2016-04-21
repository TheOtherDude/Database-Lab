use pplummer;

select * from movie;

select * from genre;

UPDATE movie SET title = "Isn't An Awesome God", tagline = "???" WHERE movie_id = 12;

DROP VIEW movie_info_view;

SELECT m.movie_id, title, tagline, gl.genre_id, genre 
FROM movie m LEFT JOIN genreLookup gl ON m.movie_id = gl.movie_id
JOIN genre g ON gl.genre_id = g.genre_id
ORDER BY (m.movie_id);

CREATE VIEW movie_info_view AS
SELECT m.movie_id, title, tagline, gl.genre_id, genre 
FROM movie m LEFT JOIN genreLookup gl ON m.movie_id = gl.movie_id
JOIN genre g ON gl.genre_id = g.genre_id
ORDER BY (m.movie_id);

CREATE TABLE state (
state_id INT AUTO_INCREMENT PRIMARY KEY,
state VARCHAR(20)
);

INSERT INTO state (state) 
VALUES ("Texas"), ("Vermont"), ("New York"), ("California");

ALTER TABLE user
ADD state_id INT;

ALTER TABLE user
ADD FOREIGN KEY (state_id)
REFERENCES state(state_id);

ALTER TABLE user
DROP FOREIGN KEY fk_state_id;

SELECT * from user_info_view;

SELECT * from rating;
